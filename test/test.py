from tacacs_plus.client import TACACSClient

# Настройки
host = '10.3.1.29'  # Адрес TACACS+ сервера
port = 49           # Порт TACACS+
key = 'Test_key'  # Ключ, указанный в tac_plus.conf
user = 'admin'         # Имя пользователя
password = '12345678q'  # Пароль пользователя

# Создаем клиент
client = TACACSClient(host, port, key)

# Проверяем аутентификацию
response = client.authenticate(user, password)

# Выводим результат
if response.valid:
    print("Authentication successful!")
else:
    print("Authentication failed.")