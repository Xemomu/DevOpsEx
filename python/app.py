from flask import Flask
import random
import logging

app = Flask(__name__)

@app.route('/get-item', methods=['GET'])
def get_item():
    number = random.randint(0, 1000)
    app.logger.info(f"Random number generated successfully: {number}")
    return str(number)

if __name__ == '__main__':
    logging.basicConfig(level=logging.DEBUG)
    app.run(debug=True, host='0.0.0.0', port=8080)
