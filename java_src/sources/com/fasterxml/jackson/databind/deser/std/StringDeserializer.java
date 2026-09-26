package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
@JacksonStdImpl
public final class StringDeserializer extends StdScalarDeserializer<String> {
    public static final StringDeserializer instance = new StringDeserializer();
    private static final long serialVersionUID = 1;

    public StringDeserializer() {
        super((Class<?>) String.class);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public String deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String valueAsString = jsonParser.getValueAsString();
        if (valueAsString != null) {
            return valueAsString;
        }
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.VALUE_EMBEDDED_OBJECT) {
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
        Object embeddedObject = jsonParser.getEmbeddedObject();
        if (embeddedObject == null) {
            return null;
        }
        return embeddedObject instanceof byte[] ? Base64Variants.getDefaultVariant().encode((byte[]) embeddedObject, false) : embeddedObject.toString();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public String deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return deserialize(jsonParser, deserializationContext);
    }
}
