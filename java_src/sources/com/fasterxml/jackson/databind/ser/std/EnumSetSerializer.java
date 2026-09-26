package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes10.dex */
public class EnumSetSerializer extends AsArraySerializerBase<EnumSet<? extends Enum<?>>> {
    public EnumSetSerializer(JavaType javaType, BeanProperty beanProperty) {
        super(EnumSet.class, javaType, true, null, beanProperty, null);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public EnumSetSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public /* bridge */ /* synthetic */ AsArraySerializerBase<EnumSet<? extends Enum<?>>> withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer jsonSerializer) {
        return withResolved2(beanProperty, typeSerializer, (JsonSerializer<?>) jsonSerializer);
    }

    public EnumSetSerializer(EnumSetSerializer enumSetSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer) {
        super(enumSetSerializer, beanProperty, typeSerializer, jsonSerializer);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(EnumSet<? extends Enum<?>> enumSet) {
        return enumSet.size() == 1;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(EnumSet<? extends Enum<?>> enumSet) {
        return enumSet == null || enumSet.isEmpty();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public void serializeContents(EnumSet<? extends Enum<?>> enumSet, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        JsonSerializer<Object> jsonSerializerFindValueSerializer = this._elementSerializer;
        for (Enum<?> r1 : enumSet) {
            if (jsonSerializerFindValueSerializer == null) {
                jsonSerializerFindValueSerializer = serializerProvider.findValueSerializer(r1.getDeclaringClass(), this._property);
            }
            jsonSerializerFindValueSerializer.serialize(r1, jsonGenerator, serializerProvider);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    /* JADX INFO: renamed from: withResolved, reason: avoid collision after fix types in other method */
    public AsArraySerializerBase<EnumSet<? extends Enum<?>>> withResolved2(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer) {
        return new EnumSetSerializer(this, beanProperty, typeSerializer, jsonSerializer);
    }
}
