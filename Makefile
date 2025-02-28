HEADER_SOURCE := qos_header.adoc
PDF_RESULT := riscv-cbqri.pdf
ASCIIDOCTOR_PDF := asciidoctor-pdf

OPTIONS := --trace \
           --attribute=mathematical-format=svg \
           --attribute=pdf-fontsdir=docs-resources/fonts \
           --attribute=pdf-style=docs-resources/themes/riscv-pdf.yml \
           --failure-level=ERROR
REQUIRES := --require=asciidoctor-bibtex \
            --require=asciidoctor-diagram \
            --require=asciidoctor-mathematical

all: build

build:
	@echo "Building asciidoc"
	$(ASCIIDOCTOR_PDF) $(OPTIONS) $(REQUIRES) --out-file=$(PDF_RESULT) $(HEADER_SOURCE)

clean:
	rm $(PDF_RESULT)
