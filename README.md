## File SQL

Untuk mengunduh file SQL, klik [di sini](https://raw.githubusercontent.com/username/repository/branch/your_file.sql).

### Contoh Penggunaan

```python
import requests

url = 'https://raw.githubusercontent.com/username/repository/branch/your_file.sql'
response = requests.get(url)

with open('your_file.sql', 'wb') as file:
    file.write(response.content)
