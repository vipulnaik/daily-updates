# Written by Claude Sonnet 4.5 over an hour with close and
# extensive spec guidance from me
import re
import sys

def extract_time_from_line(line):
    """
    Extract time information from a checked box line.
    Returns tuple: (minutes, warning_message)
    """
    match = re.match(r'^- \[x\]\s*([^:]+):', line)
    if not match:
        return 0, None
    
    time_expr = match.group(1).strip()
    
    # Parenthetical with words only (no numbers) means no time tracked
    if re.match(r'^\([^)]*\)$', time_expr) and not re.search(r'\d', time_expr):
        return 0, None
    
    hours = 0
    minutes = 0
    
    # Handle markdown formatting like **hour** or *minute*
    hour_match = re.search(r'(\d+)\s*\*{0,2}hours?\*{0,2}', time_expr)
    if hour_match:
        hours = int(hour_match.group(1))
    
    minute_match = re.search(r'(\d+)\s*\*{0,2}minutes?\*{0,2}', time_expr)
    if minute_match:
        minutes = int(minute_match.group(1))
    
    warning = None
    if hours >= 4:
        warning = f"WARNING: Hours >= 4 in line: {line.strip()}"
    if minutes >= 60:
        warning = f"WARNING: Minutes >= 60 in line: {line.strip()}"
    
    total_minutes = 60 * hours + minutes
    return total_minutes, warning

def process_section(text, section_name):
    """
    Process a section of daily update markdown text.
    Returns tuple: (time_values, total, warnings)
    """
    lines = text.strip().split('\n')
    
    for line in lines:
        if line.strip().startswith('- [ ]'):
            print(f"!!! ERROR: Found unchecked box in section '{section_name}': {line.strip()}")
            sys.exit(1)
    
    time_values = []
    warnings = []
    
    for line in lines:
        if line.strip().startswith('- [x]'):
            minutes, warning = extract_time_from_line(line)
            time_values.append(minutes)
            if warning:
                warnings.append(warning)
    
    return time_values, sum(time_values), warnings

def split_into_sections(text):
    """
    Split markdown text into sections based on ## headers.
    Returns dict mapping section names to their content.
    """
    expected_sections = [
        "Personal projects",
        "Personal finances, income and taxes",
        "Personal chores",
        "House chores",
        "Family and career planning",
        "Other activities"
    ]
    
    lines = text.strip().split('\n')
    sections = {}
    current_section = None
    current_content = []
    found_sections = []
    
    for line in lines:
        if line.startswith('## '):
            if current_section is not None:
                sections[current_section] = '\n'.join(current_content)
            
            section_name = line[3:].strip()
            
            if section_name not in expected_sections:
                print(f"WARNING: Unrecognized section name: '{section_name}'")
            
            if section_name in found_sections:
                print(f"WARNING: Duplicate section found: '{section_name}'")
            
            found_sections.append(section_name)
            current_section = section_name
            current_content = []
        else:
            if current_section is not None:
                current_content.append(line)
    
    if current_section is not None:
        sections[current_section] = '\n'.join(current_content)
    
    # Check that sections appear in expected order
    expected_indices = {section: i for i, section in enumerate(expected_sections)}
    last_index = -1
    for section in found_sections:
        if section in expected_indices:
            current_index = expected_indices[section]
            if current_index < last_index:
                print(f"WARNING: Sections are out of order: '{section}' appears after a later section")
            last_index = current_index
    
    return sections, expected_sections

def process_daily_update_sectioned(text):
    """
    Process daily update markdown text with sections.
    """
    sections, expected_sections = split_into_sections(text)
    
    section_results = {}
    all_warnings = []
    
    for section_name in expected_sections:
        if section_name in sections:
            time_values, total, warnings = process_section(sections[section_name], section_name)
            section_results[section_name] = (time_values, total)
            all_warnings.extend(warnings)
        else:
            section_results[section_name] = ([], 0)
    
    for warning in all_warnings:
        print(warning)
    
    if all_warnings:
        print()
    
    for section_name in expected_sections:
        time_values, total = section_results[section_name]
        print(f"{section_name}:")
        print(f"  Times: {time_values}")
        print(f"  Total: {total} minutes")
        print()
    
    totals = [section_results[section][1] for section in expected_sections]
    print("Summary tuple:")
    print(','.join(map(str, totals)))

def process_daily_update_sectioned_return_totals(text):
    """
    Process daily update markdown text with sections.
    Returns list of totals for each section.
    """
    sections, expected_sections = split_into_sections(text)
    
    section_results = {}
    all_warnings = []
    
    for section_name in expected_sections:
        if section_name in sections:
            time_values, total, warnings = process_section(sections[section_name], section_name)
            section_results[section_name] = (time_values, total)
            all_warnings.extend(warnings)
        else:
            section_results[section_name] = ([], 0)
    
    for warning in all_warnings:
        print(warning)
    
    if all_warnings:
        print()
    
    for section_name in expected_sections:
        time_values, total = section_results[section_name]
        print(f"{section_name}:")
        print(f"  Times: {time_values}")
        print(f"  Total: {total} minutes")
        print()
    
    totals = [section_results[section][1] for section in expected_sections]
    print("Summary tuple:")
    print(','.join(map(str, totals)))
    
    return totals

def process_daily_update_unsectioned(text):
    """
    Process daily update markdown text without section breakdown.
    Just return total time across all checked boxes.
    """
    lines = text.strip().split('\n')
    
    for line in lines:
        if line.strip().startswith('- [ ]'):
            print(f"!!! ERROR: Found unchecked box: {line.strip()}")
            sys.exit(1)
    
    time_values = []
    warnings = []
    
    for line in lines:
        if line.strip().startswith('- [x]'):
            minutes, warning = extract_time_from_line(line)
            time_values.append(minutes)
            if warning:
                warnings.append(warning)
    
    for warning in warnings:
        print(warning)
    
    if warnings:
        print()
    
    print(f"Extracted times (in minutes): {time_values}")
    print(f"Total minutes: {sum(time_values)}")

def process_daily_update_unsectioned_return_total(text):
    """
    Process daily update markdown text without section breakdown.
    Returns the total minutes.
    """
    lines = text.strip().split('\n')
    
    for line in lines:
        if line.strip().startswith('- [ ]'):
            print(f"!!! ERROR: Found unchecked box: {line.strip()}")
            sys.exit(1)
    
    time_values = []
    warnings = []
    
    for line in lines:
        if line.strip().startswith('- [x]'):
            minutes, warning = extract_time_from_line(line)
            time_values.append(minutes)
            if warning:
                warnings.append(warning)
    
    for warning in warnings:
        print(warning)
    
    if warnings:
        print()
    
    print(f"Extracted times (in minutes): {time_values}")
    print(f"Total minutes: {sum(time_values)}")
    
    return sum(time_values)

def process_daily_update(text, mode='sectioned'):
    """
    Wrapper function to process daily update.
    
    Args:
        text: The markdown text to process
        mode: Either 'sectioned' or 'unsectioned'
    """
    if mode == 'sectioned':
        process_daily_update_sectioned(text)
    elif mode == 'unsectioned':
        process_daily_update_unsectioned(text)
    else:
        print(f"ERROR: Unknown mode '{mode}'. Use 'sectioned' or 'unsectioned'.")
        sys.exit(1)

def extract_metadata(filepath):
    """
    Extract metadata from the daily update file.
    Returns tuple: (date, number, warnings)
    """
    with open(filepath, 'r') as f:
        lines = f.readlines()
    
    warnings = []
    date = None
    number = None
    
    if len(lines) >= 1 and lines[0].startswith('title:'):
        title_line = lines[0].strip()
        date = title_line.split()[-1]
    
    # Allow space or tab between "author:" and "vipulnaik"
    if len(lines) >= 3:
        author_line = lines[2].strip()
        if not (author_line == 'author: vipulnaik' or author_line == 'author:\tvipulnaik'):
            warnings.append(f"WARNING: Line 3 in {filepath} is not 'author: vipulnaik' or 'author:\\tvipulnaik'")
    
    if len(lines) >= 9 and lines[8].startswith('number:'):
        number_str = lines[8].split('number:')[1].strip()
        number = int(number_str)
    
    return date, number, warnings

def get_file_content_after_metadata(filepath):
    """
    Get the file content after the metadata lines (skip first 9 lines).
    """
    with open(filepath, 'r') as f:
        lines = f.readlines()
    
    content = ''.join(lines[9:])
    return content

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py <work_file> <personal_file>")
        sys.exit(1)
    
    work_file = sys.argv[1]
    personal_file = sys.argv[2]
    
    work_date, work_number, work_warnings = extract_metadata(work_file)
    personal_date, personal_number, personal_warnings = extract_metadata(personal_file)
    
    if work_date != personal_date:
        print(f"WARNING: Dates don't match - work: {work_date}, personal: {personal_date}")
    
    for warning in work_warnings + personal_warnings:
        print(warning)
    
    if work_warnings or personal_warnings:
        print()
    
    print("=== WORK (UNSECTIONED) ===")
    work_content = get_file_content_after_metadata(work_file)
    work_total = process_daily_update_unsectioned_return_total(work_content)
    
    print("\n=== PERSONAL (SECTIONED) ===")
    personal_content = get_file_content_after_metadata(personal_file)
    personal_totals = process_daily_update_sectioned_return_totals(personal_content)
    
    print(f"\n=== FINAL ROW ===")
    personal_tuple_str = ','.join(map(str, personal_totals))
    print(f"'{work_date}',{work_number},{personal_number},{work_total},{personal_tuple_str}")
