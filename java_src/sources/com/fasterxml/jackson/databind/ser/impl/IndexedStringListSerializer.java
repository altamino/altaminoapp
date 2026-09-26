package com.fasterxml.jackson.databind.ser.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@JacksonStdImpl
public final class IndexedStringListSerializer extends StaticListSerializerBase<List<String>> implements ContextualSerializer {
    public static final IndexedStringListSerializer instance = new IndexedStringListSerializer();
    protected final JsonSerializer<String> _serializer;

    protected IndexedStringListSerializer() {
        this(null);
    }

    private final void serializeContents(List<String> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, int i10) throws IOException {
        for (int i11 = 0; i11 < i10; i11++) {
            try {
                String str = list.get(i11);
                if (str == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else {
                    jsonGenerator.writeString(str);
                }
            } catch (Exception e) {
                wrapAndThrow(serializerProvider, e, list, i11);
                return;
            }
        }
    }

    private final void serializeUsingCustom(List<String> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, int i10) throws IOException {
        int i11 = 0;
        try {
            JsonSerializer<String> jsonSerializer = this._serializer;
            while (i11 < i10) {
                String str = list.get(i11);
                if (str == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else {
                    jsonSerializer.serialize(str, jsonGenerator, serializerProvider);
                }
                i11++;
            }
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, list, i11);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        AnnotatedMember member;
        Object objFindContentSerializer;
        JsonSerializer<Object> jsonSerializerSerializerInstance = (beanProperty == null || (member = beanProperty.getMember()) == null || (objFindContentSerializer = serializerProvider.getAnnotationIntrospector().findContentSerializer(member)) == null) ? null : serializerProvider.serializerInstance(member, objFindContentSerializer);
        if (jsonSerializerSerializerInstance == null) {
            jsonSerializerSerializerInstance = this._serializer;
        }
        JsonSerializer<?> jsonSerializerFindConvertingContentSerializer = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializerSerializerInstance);
        JsonSerializer<?> jsonSerializerFindValueSerializer = jsonSerializerFindConvertingContentSerializer == null ? serializerProvider.findValueSerializer(String.class, beanProperty) : serializerProvider.handleSecondaryContextualization(jsonSerializerFindConvertingContentSerializer, beanProperty);
        JsonSerializer<?> jsonSerializer = isDefaultSerializer(jsonSerializerFindValueSerializer) ? null : jsonSerializerFindValueSerializer;
        return jsonSerializer == this._serializer ? this : new IndexedStringListSerializer(jsonSerializer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IndexedStringListSerializer(JsonSerializer<?> jsonSerializer) {
        super(List.class);
        this._serializer = jsonSerializer;
    }

    private final void _serializeUnwrapped(List<String> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (this._serializer == null) {
            serializeContents(list, jsonGenerator, serializerProvider, 1);
        } else {
            serializeUsingCustom(list, jsonGenerator, serializerProvider, 1);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase
    protected void acceptContentVisitor(JsonArrayFormatVisitor jsonArrayFormatVisitor) throws JsonMappingException {
        jsonArrayFormatVisitor.itemsFormat(JsonFormatTypes.STRING);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase
    protected JsonNode contentSchema() {
        return createSchemaNode(TypedValues.Custom.S_STRING, true);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(List<String> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int size = list.size();
        if (size == 1 && serializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) {
            _serializeUnwrapped(list, jsonGenerator, serializerProvider);
            return;
        }
        jsonGenerator.writeStartArray();
        if (this._serializer == null) {
            serializeContents(list, jsonGenerator, serializerProvider, size);
        } else {
            serializeUsingCustom(list, jsonGenerator, serializerProvider, size);
        }
        jsonGenerator.writeEndArray();
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(List<String> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        int size = list.size();
        typeSerializer.writeTypePrefixForArray(list, jsonGenerator);
        if (this._serializer == null) {
            serializeContents(list, jsonGenerator, serializerProvider, size);
        } else {
            serializeUsingCustom(list, jsonGenerator, serializerProvider, size);
        }
        typeSerializer.writeTypeSuffixForArray(list, jsonGenerator);
    }
}
