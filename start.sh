#!/bin/bash



if [[ -n $RCLONE_CONFIG_BASE64 ]]; then
	echo "Rclone config detected"
	echo "[DRIVE]" > rclone.conf
    mkdir -p /app/.config/rclone
	echo "$(echo "W01lZ2FdCnR5cGUgPSBtZWdhCnVzZXIgPSBzYW1pbmhvc3NhaW4zM0BnbWFpbC5jb20KcGFzcyA9IGtYMU5kV1JpbTUzbVBkVmFqd0RVNmhzSWNMVlhoQmR0CltHZHJpdmVdCnR5cGUgPSBkcml2ZQpyb290X2ZvbGRlcl9pZCA9IAp0b2tlbiA9IHsiYWNjZXNzX3Rva2VuIjoieWEyOS5BMEFScmRhTTlLRUZkdnBQNkdxT3NDOGYxY19XYjZyQ2dIUjBPSll0dGsxbEswWHBnYzRRNU5rd1BqUEFIYTF5YWhtVi1KWFVQUElzai0yY1dLZWdMcm5XZ1F2RTZOdXJIZUp2X055ay1pZmFvN0dycGVsUVhfZzZQRjZLTmlzRV9JS0F4WVowODg5ZnRXbTZvbTJ0VmJjVndKSmpRc1RnIiwidG9rZW5fdHlwZSI6IkJlYXJlciIsInJlZnJlc2hfdG9rZW4iOiIxLy8wZ2gyb0w0OHFNM2tGQ2dZSUFSQUFHQkFTTndGLUw5SXI5eWxrR3NaNHcyTnQwQjVjVGlLdUltX0FDWFJFNl9waVVoMHI1a1VxSHNUbjFSTVh2bHQwazRjTmEyZV91TlR3YU9ZIiwiZXhwaXJ5IjoiMjAyMi0wNS0xMFQxMzoyODo1MS4zNTcwNjk5KzA2OjAwIn0KdGVhbV9kcml2ZSA9IDBBSGhQUGRFN0lqSnNVazlQVkEKW0Ryb3Bib3hdCnR5cGUgPSBkcm9wYm94CnRva2VuID0geyJhY2Nlc3NfdG9rZW4iOiJzbC5CSFdrMU5TRUJHd1F3cG82OWJhOU5tRG5pYjBIWkdLX0NVaS1tSVd6aGhBSzFmbHpVLV9DdTA1ekhKMmVOeFlkV1gwcDdITWJvLXRnTk5LMHp0Z3ViRkdlT25lZnZlUGJUcGhyWGRuLTBPNG1LQWNlQkdYMGQyZk1qbElMaEpFVXRjZkxQZEtFIiwidG9rZW5fdHlwZSI6ImJlYXJlciIsInJlZnJlc2hfdG9rZW4iOiJ1a1FaQ0ZDbkkzUUFBQUFBQUFBQUFSRXA5YmZJMl8zamdsbW1aM0ZqNDYxY3VLako4cmtBN0ttTW5fZkxiSV92IiwiZXhwaXJ5IjoiMjAyMi0wNS0xMFQxNjoyNzowMC44OTk2MTQ0KzA2OjAwIn0="|base64 -d)" >> /app/.config/rclone/rclone.conf
fi

if [[ -n $BOT_TOKEN && -n $OWNER_ID ]]; then
	echo "Bot token and owner ID detected"
	python3 config.py
fi

echo "SETUP COMPLETED"

npm start
