package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public class StackTraceElementDeserializer extends StdScalarDeserializer<StackTraceElement> {
    public static final StackTraceElementDeserializer instance = new StackTraceElementDeserializer();
    private static final long serialVersionUID = 1;

    public StackTraceElementDeserializer() {
        super((Class<?>) StackTraceElement.class);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public StackTraceElement deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.START_OBJECT) {
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
        String text = "";
        String text2 = "";
        int intValue = -1;
        String text3 = text2;
        while (true) {
            JsonToken jsonTokenNextValue = jsonParser.nextValue();
            if (jsonTokenNextValue == JsonToken.END_OBJECT) {
                return new StackTraceElement(text, text3, text2, intValue);
            }
            String currentName = jsonParser.getCurrentName();
            if ("className".equals(currentName)) {
                text = jsonParser.getText();
            } else if ("fileName".equals(currentName)) {
                text2 = jsonParser.getText();
            } else if ("lineNumber".equals(currentName)) {
                if (!jsonTokenNextValue.isNumeric()) {
                    throw JsonMappingException.from(jsonParser, "Non-numeric token (" + jsonTokenNextValue + ") for property 'lineNumber'");
                }
                intValue = jsonParser.getIntValue();
            } else if ("methodName".equals(currentName)) {
                text3 = jsonParser.getText();
            } else if (!"nativeMethod".equals(currentName)) {
                handleUnknownProperty(jsonParser, deserializationContext, this._valueClass, currentName);
            }
        }
    }
}
