import codecs
from userModuleDates import *
import rsa
import bcrypt
import os

make_keys = lambda : rsa.newkeys(512)
encrypt = lambda msg, pblckey : rsa.encrypt(msg.encode(), pblckey)
decrypt = lambda encMessage, privateKey : rsa.decrypt(encMessage, privateKey).decode()
strkey = lambda key : key.save_pkcs1('PEM')
binPubKey = lambda skey : rsa.PublicKey.load_pkcs1(skey)
binPrvKey = lambda skey : rsa.PrivateKey.load_pkcs1(skey)
make_salt = lambda : bcrypt.gensalt()
crypt_pass = lambda passw, salt : bcrypt.hashpw(passw.encode('utf-8'), salt)

USE_MODULE_FUNCS = {
    "encode" : codecs.encode,
    "decode" : codecs.decode
}