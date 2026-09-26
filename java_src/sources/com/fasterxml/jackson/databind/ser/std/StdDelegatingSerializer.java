package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.ResolvableSerializer;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes5.dex */
public class StdDelegatingSerializer extends StdSerializer<Object> implements ContextualSerializer, ResolvableSerializer {
    protected final Converter<Object, ?> _converter;
    protected final JsonSerializer<Object> _delegateSerializer;
    protected final JavaType _delegateType;

    public StdDelegatingSerializer(Converter<?, ?> converter) {
        super(Object.class);
        this._converter = converter;
        this._delegateType = null;
        this._delegateSerializer = null;
    }

    protected Converter<Object, ?> getConverter() {
        return this._converter;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public JsonSerializer<?> getDelegatee() {
        return this._delegateSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) throws JsonMappingException {
        JsonFormatVisitable jsonFormatVisitable = this._delegateSerializer;
        return jsonFormatVisitable instanceof SchemaAware ? ((SchemaAware) jsonFormatVisitable).getSchema(serializerProvider, type) : super.getSchema(serializerProvider, type);
    }

    public <T> StdDelegatingSerializer(Class<T> cls, Converter<T, ?> converter) {
        super(cls, false);
        this._converter = converter;
        this._delegateType = null;
        this._delegateSerializer = null;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        this._delegateSerializer.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, javaType);
    }

    protected Object convertValue(Object obj) {
        return this._converter.convert(obj);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<?> jsonSerializerHandleSecondaryContextualization;
        JsonSerializer<?> jsonSerializer = this._delegateSerializer;
        if (jsonSerializer != null) {
            return (!(jsonSerializer instanceof ContextualSerializer) || (jsonSerializerHandleSecondaryContextualization = serializerProvider.handleSecondaryContextualization(jsonSerializer, beanProperty)) == this._delegateSerializer) ? this : withDelegate(this._converter, this._delegateType, jsonSerializerHandleSecondaryContextualization);
        }
        JavaType outputType = this._delegateType;
        if (outputType == null) {
            outputType = this._converter.getOutputType(serializerProvider.getTypeFactory());
        }
        return withDelegate(this._converter, outputType, serializerProvider.findValueSerializer(outputType, beanProperty));
    }

    @Override // com.fasterxml.jackson.databind.ser.ResolvableSerializer
    public void resolve(SerializerProvider serializerProvider) throws JsonMappingException {
        JsonFormatVisitable jsonFormatVisitable = this._delegateSerializer;
        if (jsonFormatVisitable == null || !(jsonFormatVisitable instanceof ResolvableSerializer)) {
            return;
        }
        ((ResolvableSerializer) jsonFormatVisitable).resolve(serializerProvider);
    }

    public StdDelegatingSerializer(Converter<Object, ?> converter, JavaType javaType, JsonSerializer<?> jsonSerializer) {
        super(javaType);
        this._converter = converter;
        this._delegateType = javaType;
        this._delegateSerializer = jsonSerializer;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(Object obj) {
        return this._delegateSerializer.isEmpty(convertValue(obj));
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        Object objConvertValue = convertValue(obj);
        if (objConvertValue == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
        } else {
            this._delegateSerializer.serialize(objConvertValue, jsonGenerator, serializerProvider);
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        this._delegateSerializer.serializeWithType(convertValue(obj), jsonGenerator, serializerProvider, typeSerializer);
    }

    protected StdDelegatingSerializer withDelegate(Converter<Object, ?> converter, JavaType javaType, JsonSerializer<?> jsonSerializer) {
        if (getClass() == StdDelegatingSerializer.class) {
            return new StdDelegatingSerializer(converter, javaType, jsonSerializer);
        }
        throw new IllegalStateException("Sub-class " + getClass().getName() + " must override 'withDelegate'");
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type, boolean z6) throws JsonMappingException {
        JsonFormatVisitable jsonFormatVisitable = this._delegateSerializer;
        if (jsonFormatVisitable instanceof SchemaAware) {
            return ((SchemaAware) jsonFormatVisitable).getSchema(serializerProvider, type, z6);
        }
        return super.getSchema(serializerProvider, type);
    }
}
