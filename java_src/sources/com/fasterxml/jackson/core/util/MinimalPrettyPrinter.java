package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.PrettyPrinter;
import java.io.IOException;
import java.io.Serializable;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes5.dex */
public class MinimalPrettyPrinter implements PrettyPrinter, Serializable {
    public static final String DEFAULT_ROOT_VALUE_SEPARATOR = " ";
    private static final long serialVersionUID = -562765100295218442L;
    protected String _rootValueSeparator;

    public MinimalPrettyPrinter() {
        this(" ");
    }

    @Override // com.fasterxml.jackson.core.PrettyPrinter
    public void beforeArrayValues(JsonGenerator jsonGenerator) throws IOException {
    }

    @Override // com.fasterxml.jackson.core.PrettyPrinter
    public void beforeObjectEntries(JsonGenerator jsonGenerator) throws IOException {
    }

    public void setRootValueSeparator(String str) {
        this._rootValueSeparator = str;
    }

    public MinimalPrettyPrinter(String str) {
        this._rootValueSeparator = str;
    }

    @Override // com.fasterxml.jackson.core.PrettyPrinter
    public void writeArrayValueSeparator(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeRaw(b.COMMA);
    }

    @Override // com.fasterxml.jackson.core.PrettyPrinter
    public void writeEndArray(JsonGenerator jsonGenerator, int i10) throws IOException {
        jsonGenerator.writeRaw(b.END_LIST);
    }

    @Override // com.fasterxml.jackson.core.PrettyPrinter
    public void writeEndObject(JsonGenerator jsonGenerator, int i10) throws IOException {
        jsonGenerator.writeRaw(b.END_OBJ);
    }

    @Override // com.fasterxml.jackson.core.PrettyPrinter
    public void writeObjectEntrySeparator(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeRaw(b.COMMA);
    }

    @Override // com.fasterxml.jackson.core.PrettyPrinter
    public void writeObjectFieldValueSeparator(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeRaw(b.COLON);
    }

    @Override // com.fasterxml.jackson.core.PrettyPrinter
    public void writeRootValueSeparator(JsonGenerator jsonGenerator) throws IOException {
        String str = this._rootValueSeparator;
        if (str != null) {
            jsonGenerator.writeRaw(str);
        }
    }

    @Override // com.fasterxml.jackson.core.PrettyPrinter
    public void writeStartArray(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeRaw(b.BEGIN_LIST);
    }

    @Override // com.fasterxml.jackson.core.PrettyPrinter
    public void writeStartObject(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeRaw(b.BEGIN_OBJ);
    }
}
