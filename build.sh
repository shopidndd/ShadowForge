#!/bin/bash

# Define the project root
PROJECT_ROOT="ShadowForge"

echo "Creating ShadowForge project structure..."

# Function to create directories and files
create_dir() {
  mkdir -p "$1"
  echo "Created directory: $1"
}

create_file() {
  touch "$1"
  echo "Created file: $1"
}

# Root directory
create_dir "$PROJECT_ROOT"

# C2 Server Structure
create_dir "$PROJECT_ROOT/c2_server"
create_file "$PROJECT_ROOT/c2_server/__init__.py"
create_file "$PROJECT_ROOT/c2_server/app.py"
create_dir "$PROJECT_ROOT/c2_server/routes"
create_file "$PROJECT_ROOT/c2_server/routes/__init__.py"
create_file "$PROJECT_ROOT/c2_server/routes/module_routes.py"
create_file "$PROJECT_ROOT/c2_server/routes/execution_routes.py"
create_file "$PROJECT_ROOT/c2_server/routes/log_routes.py"
create_dir "$PROJECT_ROOT/c2_server/utils"
create_file "$PROJECT_ROOT/c2_server/utils/__init__.py"
create_file "$PROJECT_ROOT/c2_server/utils/logging.py"
create_file "$PROJECT_ROOT/c2_server/utils/database.py"
create_file "$PROJECT_ROOT/c2_server/utils/validation.py"
create_file "$PROJECT_ROOT/c2_server/config.py"

# Modules Structure
create_dir "$PROJECT_ROOT/modules"
create_file "$PROJECT_ROOT/modules/__init__.py"
create_file "$PROJECT_ROOT/modules/base_module.py"

# Reconnaissance Module
create_dir "$PROJECT_ROOT/modules/reconnaissance"
create_file "$PROJECT_ROOT/modules/reconnaissance/__init__.py"
create_file "$PROJECT_ROOT/modules/reconnaissance/reconnaissance.py"
create_file "$PROJECT_ROOT/modules/reconnaissance/utils.py"

# Attack Manager Module
create_dir "$PROJECT_ROOT/modules/attack_manager"
create_file "$PROJECT_ROOT/modules/attack_manager/__init__.py"
create_file "$PROJECT_ROOT/modules/attack_manager/attack_manager.py"
create_dir "$PROJECT_ROOT/modules/attack_manager/payloads"
create_file "$PROJECT_ROOT/modules/attack_manager/payloads/reverse_shell.py"
create_file "$PROJECT_ROOT/modules/attack_manager/payloads/escalation.py"

# Stealth Toolkit Module
create_dir "$PROJECT_ROOT/modules/stealth_toolkit"
create_file "$PROJECT_ROOT/modules/stealth_toolkit/__init__.py"
create_file "$PROJECT_ROOT/modules/stealth_toolkit/stealth_toolkit.py"
create_file "$PROJECT_ROOT/modules/stealth_toolkit/obfuscation.py"

# Exfiltration Hub Module
create_dir "$PROJECT_ROOT/modules/exfiltration_hub"
create_file "$PROJECT_ROOT/modules/exfiltration_hub/__init__.py"
create_file "$PROJECT_ROOT/modules/exfiltration_hub/exfiltration.py"

# Persistence Builder Module
create_dir "$PROJECT_ROOT/modules/persistence_builder"
create_file "$PROJECT_ROOT/modules/persistence_builder/__init__.py"
create_file "$PROJECT_ROOT/modules/persistence_builder/persistence.py"

# Tests
create_dir "$PROJECT_ROOT/tests"
create_file "$PROJECT_ROOT/tests/__init__.py"
create_file "$PROJECT_ROOT/tests/test_c2_server.py"
create_file "$PROJECT_ROOT/tests/test_modules.py"
create_file "$PROJECT_ROOT/tests/test_integration.py"

# Scripts
create_dir "$PROJECT_ROOT/scripts"
create_file "$PROJECT_ROOT/scripts/__init__.py"
create_file "$PROJECT_ROOT/scripts/init_db.py"
create_file "$PROJECT_ROOT/scripts/start_server.sh"
create_file "$PROJECT_ROOT/scripts/deploy.sh"

# Configs
create_dir "$PROJECT_ROOT/configs"
create_file "$PROJECT_ROOT/configs/development.yaml"
create_file "$PROJECT_ROOT/configs/production.yaml"
create_file "$PROJECT_ROOT/configs/testing.yaml"

# Static Files (Optional UI)
create_dir "$PROJECT_ROOT/static/ui"
create_file "$PROJECT_ROOT/static/ui/index.html"
create_dir "$PROJECT_ROOT/static/ui/assets"

# Root-level files
create_file "$PROJECT_ROOT/.env"
create_file "$PROJECT_ROOT/requirements.txt"
create_file "$PROJECT_ROOT/README.md"
create_file "$PROJECT_ROOT/setup.py"

# Add placeholders in important files
echo "# ShadowForge C2 Server" > "$PROJECT_ROOT/c2_server/app.py"
echo "# Placeholder for routes" > "$PROJECT_ROOT/c2_server/routes/module_routes.py"
echo "# Placeholder for logging utilities" > "$PROJECT_ROOT/c2_server/utils/logging.py"

echo "ShadowForge project structure created successfully!"
