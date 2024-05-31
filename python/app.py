from flask import Flask, jsonify
import random
import logging
import os

app = Flask(__name__)

@app.route('/get-item', methods=['GET'])
def get_item():
    number = random.randint(0, 1000)
    app.logger.info(f"Random number generated successfully: {number}")
    return str(number)

@app.route('/author', methods=['GET'])
def author():
    return "Konrad Pilewski"

@app.route('/loglevels', methods=['GET'])
def loglevels():
    levels = {
        "CRITICAL": logging.CRITICAL,
        "ERROR": logging.ERROR,
        "WARNING": logging.WARNING,
        "INFO": logging.INFO,
        "DEBUG": logging.DEBUG,
        "NOTSET": logging.NOTSET,
    }
    return jsonify(levels)

if __name__ == '__main__':
    logging.basicConfig(level=logging.DEBUG)
    app.logger.info("Starting application version 1.2")
    app.logger.info(f"Environment: ")
    app.logger.info("Log levels: CRITICAL, ERROR, WARNING, INFO, DEBUG, NOTSET")
    app.logger.info("Endpoints: /get-item, /author, /loglevels")
    app.run(debug=True, host='0.0.0.0', port=8080)
