from flask import Flask
import random
import logging

app = Flask(__name__)

@app.route('/get-item', methods=['GET'])
def get_item():
    number = random.randint(0, 1000)
    with open('/app/archive/output.txt', 'a') as f:
        f.write(f"{number}\n")
    app.logger.info(f"Random number generated successfully: {number}")
    return str(number)

@app.route('/author', methods=['GET'])
def author():
    return "Konrad Pilewski"

if __name__ == '__main__':
    logging.basicConfig(level=logging.DEBUG)
    app.logger.info("Starting application version 1.4")
    app.logger.info(f"Environment: ")
    app.logger.info("Log levels: CRITICAL, ERROR, WARNING, INFO, DEBUG, NOTSET")
    app.logger.info("Endpoints: /get-item, /author")
    app.run(debug=True, host='0.0.0.0', port=8080)
