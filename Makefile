BASE_DIR := $(shell pwd)

# Output directory
OUTPUT_DIR := output
OUTPUT_FILE := $(OUTPUT_DIR)/combined.adoc
OUTPUT_PDF := $(OUTPUT_DIR)/combined.pdf

# Ensure output directory exists
$(shell mkdir -p $(OUTPUT_DIR))

# Define Asciidoctor command
ASCIIDOCTOR := asciidoctor
ASCIIDOCTOR_PDF := asciidoctor-pdf

# Combine the .adoc files and generate the PDF
all: $(OUTPUT_PDF)

$(OUTPUT_PDF): $(OUTPUT_FILE)
	$(ASCIIDOCTOR_PDF) -o $@ $<

$(OUTPUT_FILE): $(ARGS)
	@for arg in $(ARGS); do \
		echo "include::../$$arg[]" >> $(OUTPUT_FILE); \
	done

# Clean output files
clean:
	rm -f $(OUTPUT_FILE) $(OUTPUT_PDF)

.PHONY: all clean
