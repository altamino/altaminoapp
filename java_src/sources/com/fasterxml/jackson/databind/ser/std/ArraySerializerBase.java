package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ArraySerializerBase<T> extends ContainerSerializer<T> {
    protected final BeanProperty _property;

    protected ArraySerializerBase(Class<T> cls) {
        super(cls);
        this._property = null;
    }

    protected abstract void serializeContents(T t5, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException;

    protected ArraySerializerBase(Class<T> cls, BeanProperty beanProperty) {
        super(cls);
        this._property = beanProperty;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(T t5, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (serializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) && hasSingleElement(t5)) {
            serializeContents(t5, jsonGenerator, serializerProvider);
            return;
        }
        jsonGenerator.writeStartArray();
        serializeContents(t5, jsonGenerator, serializerProvider);
        jsonGenerator.writeEndArray();
    }

    protected ArraySerializerBase(ArraySerializerBase<?> arraySerializerBase) {
        super(arraySerializerBase._handledType, false);
        this._property = arraySerializerBase._property;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(T t5, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        typeSerializer.writeTypePrefixForArray(t5, jsonGenerator);
        serializeContents(t5, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForArray(t5, jsonGenerator);
    }

    protected ArraySerializerBase(ArraySerializerBase<?> arraySerializerBase, BeanProperty beanProperty) {
        super(arraySerializerBase._handledType, false);
        this._property = beanProperty;
    }
}
