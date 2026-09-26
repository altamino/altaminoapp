package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public abstract class FromStringDeserializer<T> extends StdScalarDeserializer<T> {
    private static final long serialVersionUID = 1;

    protected abstract T _deserialize(String str, DeserializationContext deserializationContext) throws IOException;

    protected T _deserializeFromEmptyString() {
        return null;
    }

    protected T _deserializeEmbedded(Object obj, DeserializationContext deserializationContext) throws IOException {
        throw deserializationContext.mappingException("Don't know how to convert embedded Object of type " + obj.getClass().getName() + " into " + this._valueClass.getName());
    }

    protected FromStringDeserializer(Class<?> cls) {
        super(cls);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public final T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String message;
        String valueAsString = jsonParser.getValueAsString();
        IllegalArgumentException e = null;
        if (valueAsString != null) {
            if (valueAsString.length() != 0) {
                String strTrim = valueAsString.trim();
                if (strTrim.length() != 0) {
                    try {
                        T t_deserialize = _deserialize(strTrim, deserializationContext);
                        if (t_deserialize != null) {
                            return t_deserialize;
                        }
                    } catch (IllegalArgumentException e2) {
                        e = e2;
                    }
                    String str = "not a valid textual representation";
                    if (e != null && (message = e.getMessage()) != null) {
                        str = "not a valid textual representation, problem: " + message;
                    }
                    JsonMappingException jsonMappingExceptionWeirdStringException = deserializationContext.weirdStringException(strTrim, this._valueClass, str);
                    if (e != null) {
                        jsonMappingExceptionWeirdStringException.initCause(e);
                        throw jsonMappingExceptionWeirdStringException;
                    }
                    throw jsonMappingExceptionWeirdStringException;
                }
            }
            return _deserializeFromEmptyString();
        }
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_EMBEDDED_OBJECT) {
            T t5 = (T) jsonParser.getEmbeddedObject();
            if (t5 == null) {
                return null;
            }
            if (this._valueClass.isAssignableFrom(t5.getClass())) {
                return t5;
            }
            return _deserializeEmbedded(t5, deserializationContext);
        }
        throw deserializationContext.mappingException(this._valueClass);
    }
}
