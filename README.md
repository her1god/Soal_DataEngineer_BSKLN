## File SQL

Untuk mengunduh file SQL, klik [di sini](https://raw.githubusercontent.com/her1god/Soal_DataEngineer_BSKLN/main/soal_data.sql).

### Contoh Penggunaan

```python
import requests

url = 'https://raw.githubusercontent.com/her1god/Soal_DataEngineer_BSKLN/main/soal_data.sql'
response = requests.get(url)

with open('your_file.sql', 'wb') as file:
    file.write(response.content)

```
## Instalasi

Untuk menginstal semua dependensi proyek ini, jalankan perintah berikut:

```bash
python3 -m venv venv
source venv/bin/activate (linux/mac)
venv\Scripts\activate (windows)
pip install -r requirements.txt
```

