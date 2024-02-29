import os

disk = input("Disk (E): ")

print("(1) JPEG All: FF D8 FF")
print("(2) JPEG in RAW: FF D8 FF DB 00 84")
choose_byte_hex = int(input("Choose 1 or 2: "))

if choose_byte_hex == 1 :
    byte_start = b'\xFF\xD8\xFF'  # byte start

elif choose_byte_hex == 2:
    byte_start = b'\xFF\xD8\xFF\xDB\x00\x84' # byte start

print("---------------------BSVRecovery---------------------")

drive_path = "\\\\.\\D:"  # Name Disk
file_size = 512
signature_start = byte_start
signature_end = b'\xFF\xD9' # byte end

with open(drive_path, "rb") as drive_file:
    offset = 0
    recovery_mode = False
    recovered_file_id = 0

    while True:
        drive_file.seek(offset * file_size)
        byte = drive_file.read(file_size)

        if not byte:
            break

        found_start = byte.find(signature_start) 
        if found_start >= 0:
            recovery_mode = True
            print(f'==== Found JPG at location: {hex(found_start + (file_size * offset))} ====')

            recovered_file_id += 1
            recovered_file = open(f'IMG_{recovered_file_id}.jpg', "wb")
            recovered_file.write(byte[found_start:])

            while recovery_mode:
                byte = drive_file.read(file_size)
                found_end = byte.find(signature_end) # you can change .rfind last byte

                if found_end >= 0:
                    recovered_file.write(byte[:found_end + 2])
                    drive_file.seek((offset + 1) * file_size)
                    print(f'==== Wrote JPG to location: IMG_{recovered_file_id}.jpg ====\n')

                    recovery_mode = False
                    recovered_file.close()
                else:
                    recovered_file.write(byte)
        offset += 1
                            
print("---------------------Done---------------------")
