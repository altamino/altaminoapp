package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class CollectionSerializer extends AsArraySerializerBase<Collection<?>> {
    public CollectionSerializer(JavaType javaType, boolean z6, TypeSerializer typeSerializer, BeanProperty beanProperty, JsonSerializer<Object> jsonSerializer) {
        super(Collection.class, javaType, z6, typeSerializer, beanProperty, jsonSerializer);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public /* bridge */ /* synthetic */ AsArraySerializerBase<Collection<?>> withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer jsonSerializer) {
        return withResolved2(beanProperty, typeSerializer, (JsonSerializer<?>) jsonSerializer);
    }

    public CollectionSerializer(CollectionSerializer collectionSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer) {
        super(collectionSerializer, beanProperty, typeSerializer, jsonSerializer);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new CollectionSerializer(this._elementType, this._staticTyping, typeSerializer, this._property, this._elementSerializer);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        if (!it.hasNext()) {
            return false;
        }
        it.next();
        return !it.hasNext();
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public void serializeContents(Collection<?> collection, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        JsonSerializer<Object> jsonSerializer = this._elementSerializer;
        if (jsonSerializer != null) {
            serializeContentsUsing(collection, jsonGenerator, serializerProvider, jsonSerializer);
            return;
        }
        Iterator<?> it = collection.iterator();
        if (it.hasNext()) {
            PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
            TypeSerializer typeSerializer = this._valueTypeSerializer;
            int i10 = 0;
            do {
                try {
                    Object next = it.next();
                    if (next == null) {
                        serializerProvider.defaultSerializeNull(jsonGenerator);
                    } else {
                        Class<?> cls = next.getClass();
                        JsonSerializer<Object> jsonSerializerSerializerFor = propertySerializerMap.serializerFor(cls);
                        if (jsonSerializerSerializerFor == null) {
                            jsonSerializerSerializerFor = this._elementType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._elementType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                            propertySerializerMap = this._dynamicSerializers;
                        }
                        if (typeSerializer == null) {
                            jsonSerializerSerializerFor.serialize(next, jsonGenerator, serializerProvider);
                        } else {
                            jsonSerializerSerializerFor.serializeWithType(next, jsonGenerator, serializerProvider, typeSerializer);
                        }
                    }
                    i10++;
                } catch (Exception e) {
                    wrapAndThrow(serializerProvider, e, collection, i10);
                    return;
                }
            } while (it.hasNext());
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    /* JADX INFO: renamed from: withResolved, reason: avoid collision after fix types in other method */
    public AsArraySerializerBase<Collection<?>> withResolved2(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer) {
        return new CollectionSerializer(this, beanProperty, typeSerializer, jsonSerializer);
    }

    public void serializeContentsUsing(Collection<?> collection, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException {
        Iterator<?> it = collection.iterator();
        if (it.hasNext()) {
            TypeSerializer typeSerializer = this._valueTypeSerializer;
            int i10 = 0;
            do {
                Object next = it.next();
                if (next == null) {
                    try {
                        serializerProvider.defaultSerializeNull(jsonGenerator);
                    } catch (Exception e) {
                        wrapAndThrow(serializerProvider, e, collection, i10);
                    }
                } else if (typeSerializer == null) {
                    jsonSerializer.serialize(next, jsonGenerator, serializerProvider);
                } else {
                    jsonSerializer.serializeWithType(next, jsonGenerator, serializerProvider, typeSerializer);
                }
                i10++;
            } while (it.hasNext());
        }
    }
}
