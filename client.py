from webdav3.client import Client

options = {
 'webdav_hostname': "http://localhost:8008/"
}
client = Client(options)
print(client.list())