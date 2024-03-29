import os
import time

def extract_file(input_folder, output_folder):
    print("---------------------Repairing---------------------")
    time.sleep(2)

    number = 0

    # Create the output folder if it doesn't exist
    os.makedirs(output_folder, exist_ok=True)

    # List all files in the input folder
    files = os.listdir(input_folder)

    for file_name in files:
        input_file_path = os.path.join(input_folder, file_name)

        with open(input_file_path, 'rb') as file:
            file_content = file.read()

        start_marker = b'\xFF\xD8\xFF\xDB\x00\x84'  # byte start
        end_marker = b'\xFF\xD9'  # byte end

        start_pos = file_content.find(start_marker)

        while start_pos != -1:
            end_pos = file_content.find(end_marker, start_pos + len(start_marker))
            if end_pos != -1:
                jpeg_data = file_content[start_pos:end_pos + len(end_marker)]

                print(f"-------0x{start_pos:X}_0x{end_pos:X}-------")
                time.sleep(0.5)

                number += 1
                output_file_path = os.path.join(output_folder, f"IMG_{number}.JPG")

                with open(output_file_path, 'wb') as output_file:
                    output_file.write(jpeg_data)

                # Find the next segment
                start_pos = file_content.find(start_marker, end_pos + len(end_marker))
            else:
                # If end_marker is not found, exit the loop
                break

    print("---------------------Done---------------------")
    time.sleep(2)

def extract_file2(input_file_path, output_folder):

    print("---------------------Repairing---------------------")
    time.sleep(2)

    number = 0
    with open(input_file_path.strip('"'), 'rb') as file:
        file_content = file.read()

    start_marker = b'\xFF\xD8\xFF\xDB\x00\x84' # byte start
    end_marker = b'\xFF\xD9' # byte end

    start_pos = file_content.find(start_marker) # you can change .rfind last byte

    while start_pos != -1:
        end_pos = file_content.find(end_marker, start_pos + len(start_marker))
        if end_pos != -1:
            jpeg_data = file_content[start_pos:end_pos + len(end_marker)]

            print(f"-------0x{start_pos:X}_0x{end_pos:X}-------")
            time.sleep(0.5)
            # Create the output folder if it doesn't exist
            os.makedirs(output_folder, exist_ok=True)
            number = number + 1
            output_file_path = os.path.join(output_folder, f"IMG_{number}.JPG")
            with open(output_file_path, 'wb') as output_file:
                output_file.write(jpeg_data)
            
            # Find the next segment
            start_pos = file_content.find(start_marker, end_pos + len(end_marker))
        else:
            # If end_marker is not found, exit the loop
            break

    print("---------------------Done---------------------")
    time.sleep(2)

if __name__ == "__main__":
    print("Extract_v1.2 Developed by Vu Quang Dai (Bevis Vu)")
    input_folder = input("Input Path: ").strip()
    output_folder = input("Output Folder: ").strip()

    choose = input('Folder or File: ')

    if choose == "Folder" or choose == "folder":
        extract_file(input_folder, output_folder)
    elif choose == "File" or choose == "file":
        extract_file2(input_folder, output_folder)
    else:
        print("Pls Choose again")
