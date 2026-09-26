package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;

/* JADX INFO: loaded from: classes9.dex */
public abstract class ContainerSerializer<T> extends StdSerializer<T> {
    protected ContainerSerializer(Class<T> cls) {
        super(cls);
    }

    protected abstract ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer);

    public abstract JsonSerializer<?> getContentSerializer();

    public abstract JavaType getContentType();

    public abstract boolean hasSingleElement(T t5);

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public abstract boolean isEmpty(T t5);

    protected ContainerSerializer(Class<?> cls, boolean z6) {
        super(cls, z6);
    }

    protected boolean hasContentTypeAnnotation(SerializerProvider serializerProvider, BeanProperty beanProperty) {
        AnnotationIntrospector annotationIntrospector;
        return (beanProperty == null || (annotationIntrospector = serializerProvider.getAnnotationIntrospector()) == null || annotationIntrospector.findSerializationContentType(beanProperty.getMember(), beanProperty.getType()) == null) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ContainerSerializer<?> withValueTypeSerializer(TypeSerializer typeSerializer) {
        return typeSerializer == null ? this : _withValueTypeSerializer(typeSerializer);
    }

    protected ContainerSerializer(ContainerSerializer<?> containerSerializer) {
        super(containerSerializer._handledType, false);
    }
}
