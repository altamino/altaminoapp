package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.std.BeanSerializerBase;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public class BeanAsArraySerializer extends BeanSerializerBase {
    protected final BeanSerializerBase _defaultSerializer;

    public BeanAsArraySerializer(BeanSerializerBase beanSerializerBase) {
        super(beanSerializerBase, (ObjectIdWriter) null);
        this._defaultSerializer = beanSerializerBase;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    protected BeanSerializerBase asArraySerializer() {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isUnwrappingSerializer() {
        return false;
    }

    protected BeanAsArraySerializer(BeanSerializerBase beanSerializerBase, String[] strArr) {
        super(beanSerializerBase, strArr);
        this._defaultSerializer = beanSerializerBase;
    }

    private boolean hasSingleElement(SerializerProvider serializerProvider) {
        return ((this._filteredProps == null || serializerProvider.getActiveView() == null) ? this._props : this._filteredProps).length == 1;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (serializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) && hasSingleElement(serializerProvider)) {
            serializeAsArray(obj, jsonGenerator, serializerProvider);
            return;
        }
        jsonGenerator.writeStartArray();
        serializeAsArray(obj, jsonGenerator, serializerProvider);
        jsonGenerator.writeEndArray();
    }

    protected final void serializeAsArray(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        BeanPropertyWriter[] beanPropertyWriterArr = (this._filteredProps == null || serializerProvider.getActiveView() == null) ? this._props : this._filteredProps;
        int i10 = 0;
        try {
            int length = beanPropertyWriterArr.length;
            while (i10 < length) {
                BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i10];
                if (beanPropertyWriter == null) {
                    jsonGenerator.writeNull();
                } else {
                    beanPropertyWriter.serializeAsElement(obj, jsonGenerator, serializerProvider);
                }
                i10++;
            }
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, obj, i10 != beanPropertyWriterArr.length ? beanPropertyWriterArr[i10].getName() : "[anySetter]");
        } catch (StackOverflowError e2) {
            JsonMappingException jsonMappingException = new JsonMappingException("Infinite recursion (StackOverflowError)", e2);
            jsonMappingException.prependPath(new JsonMappingException.Reference(obj, i10 != beanPropertyWriterArr.length ? beanPropertyWriterArr[i10].getName() : "[anySetter]"));
            throw jsonMappingException;
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase, com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        this._defaultSerializer.serializeWithType(obj, jsonGenerator, serializerProvider, typeSerializer);
    }

    public String toString() {
        return "BeanAsArraySerializer for " + handledType().getName();
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public JsonSerializer<Object> unwrappingSerializer(NameTransformer nameTransformer) {
        return this._defaultSerializer.unwrappingSerializer(nameTransformer);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    protected BeanSerializerBase withFilterId(Object obj) {
        return new BeanAsArraySerializer(this, this._objectIdWriter, obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    public BeanAsArraySerializer withIgnorals(String[] strArr) {
        return new BeanAsArraySerializer(this, strArr);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    public BeanSerializerBase withObjectIdWriter(ObjectIdWriter objectIdWriter) {
        return this._defaultSerializer.withObjectIdWriter(objectIdWriter);
    }

    protected BeanAsArraySerializer(BeanSerializerBase beanSerializerBase, ObjectIdWriter objectIdWriter, Object obj) {
        super(beanSerializerBase, objectIdWriter, obj);
        this._defaultSerializer = beanSerializerBase;
    }
}
