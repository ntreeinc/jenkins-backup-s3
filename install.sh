[ -d env ] || virtualenv env
source ./env/bin/activate
[ -r env/lib/python2.7/site-packages/boto ] || pip install -r requirements.txt
