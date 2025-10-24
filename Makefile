# Makefile for Vendor Performance Analysis Project

PYTHON = python
NOTEBOOK = vendor_performance_analysis.ipynb
LOG_DIR = logs
DB_FILE = inventory.db

# Default target
all: setup run

# Create virtual environment and install requirements
setup:
	@echo "Setting up virtual environment..."
	$(PYTHON) -m venv venv
	@echo "Activating environment and installing requirements..."
	venv/Scripts/activate && pip install -r requirements.txt

# Run vendor summary generation
run:
	@echo "Running vendor summary script..."
	venv/Scripts/activate && $(PYTHON) get_vendor_summary.py

# Clean up logs
clean:
	@echo "Cleaning log files..."
	-del $(LOG_DIR)\*.log 2>nul || true
	@echo "Logs cleaned."

# Launch Jupyter Notebook
notebook:
	@echo "Starting Jupyter Notebook..."
	venv/Scripts/activate && jupyter notebook $(NOTEBOOK)

# Format code (optional)
format:
	@echo "Formatting code with black..."
	venv/Scripts/activate && black *.py

# Create logs folder if missing
init-logs:
	@echo "Ensuring logs directory exists..."
	@if not exist "$(LOG_DIR)" mkdir $(LOG_DIR)
	@echo "Logs directory ready."

.PHONY: all setup run clean notebook format init-logs
