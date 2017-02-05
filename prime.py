import os
from flask import Flask,redirect

app = Flask(__name__)

@app.route('/')
def hello():
    return redirect("http://ec2-52-11-10-109.us-west-2.compute.amazonaws.com:8080/assign1/prime.jsp", code=302)
if __name__ == '__main__':
    # Bind to PORT if defined, otherwise default to 5000.
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)
