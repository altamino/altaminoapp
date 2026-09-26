package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.annotation.NoClass;
import com.fasterxml.jackson.databind.deser.std.NullifyingDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import java.io.IOException;
import java.io.Serializable;
import java.util.HashMap;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes10.dex */
public abstract class TypeDeserializerBase extends TypeDeserializer implements Serializable {
    private static final long serialVersionUID = 278445030337366675L;
    protected final JavaType _baseType;
    protected final JavaType _defaultImpl;
    protected JsonDeserializer<Object> _defaultImplDeserializer;
    protected final HashMap<String, JsonDeserializer<Object>> _deserializers;
    protected final TypeIdResolver _idResolver;
    protected final BeanProperty _property;
    protected final boolean _typeIdVisible;
    protected final String _typePropertyName;

    protected TypeDeserializerBase(JavaType javaType, TypeIdResolver typeIdResolver, String str, boolean z6, Class<?> cls) {
        this._baseType = javaType;
        this._idResolver = typeIdResolver;
        this._typePropertyName = str;
        this._typeIdVisible = z6;
        this._deserializers = new HashMap<>();
        if (cls == null) {
            this._defaultImpl = null;
        } else {
            this._defaultImpl = javaType.forcedNarrowBy(cls);
        }
        this._property = null;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public abstract TypeDeserializer forProperty(BeanProperty beanProperty);

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public final String getPropertyName() {
        return this._typePropertyName;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public TypeIdResolver getTypeIdResolver() {
        return this._idResolver;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public abstract JsonTypeInfo.As getTypeInclusion();

    protected final JsonDeserializer<Object> _findDefaultImplDeserializer(DeserializationContext deserializationContext) throws IOException {
        JsonDeserializer<Object> jsonDeserializer;
        JavaType javaType = this._defaultImpl;
        if (javaType == null) {
            if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_INVALID_SUBTYPE)) {
                return null;
            }
            return NullifyingDeserializer.instance;
        }
        if (javaType.getRawClass() == NoClass.class) {
            return NullifyingDeserializer.instance;
        }
        synchronized (this._defaultImpl) {
            try {
                if (this._defaultImplDeserializer == null) {
                    this._defaultImplDeserializer = deserializationContext.findContextualValueDeserializer(this._defaultImpl, this._property);
                }
                jsonDeserializer = this._defaultImplDeserializer;
            } catch (Throwable th) {
                throw th;
            }
        }
        return jsonDeserializer;
    }

    protected final JsonDeserializer<Object> _findDeserializer(DeserializationContext deserializationContext, String str) throws IOException {
        JsonDeserializer<Object> jsonDeserializer;
        JsonDeserializer<Object> jsonDeserializerFindContextualValueDeserializer;
        synchronized (this._deserializers) {
            try {
                jsonDeserializer = this._deserializers.get(str);
                if (jsonDeserializer == null) {
                    TypeIdResolver typeIdResolver = this._idResolver;
                    JavaType javaTypeTypeFromId = typeIdResolver instanceof TypeIdResolverBase ? ((TypeIdResolverBase) typeIdResolver).typeFromId(deserializationContext, str) : typeIdResolver.typeFromId(str);
                    if (javaTypeTypeFromId != null) {
                        JavaType javaType = this._baseType;
                        if (javaType != null && javaType.getClass() == javaTypeTypeFromId.getClass()) {
                            javaTypeTypeFromId = this._baseType.narrowBy(javaTypeTypeFromId.getRawClass());
                        }
                        jsonDeserializerFindContextualValueDeserializer = deserializationContext.findContextualValueDeserializer(javaTypeTypeFromId, this._property);
                    } else {
                        if (this._defaultImpl == null) {
                            throw deserializationContext.unknownTypeException(this._baseType, str);
                        }
                        jsonDeserializerFindContextualValueDeserializer = _findDefaultImplDeserializer(deserializationContext);
                    }
                    jsonDeserializer = jsonDeserializerFindContextualValueDeserializer;
                    this._deserializers.put(str, jsonDeserializer);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return jsonDeserializer;
    }

    public String baseTypeName() {
        return this._baseType.getRawClass().getName();
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Class<?> getDefaultImpl() {
        JavaType javaType = this._defaultImpl;
        if (javaType == null) {
            return null;
        }
        return javaType.getRawClass();
    }

    public String toString() {
        return b.BEGIN_LIST + getClass().getName() + "; base-type:" + this._baseType + "; id-resolver: " + this._idResolver + b.END_LIST;
    }

    protected Object _deserializeWithNativeTypeId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String strValueOf;
        JsonDeserializer<Object> jsonDeserializer_findDeserializer;
        Object typeId = jsonParser.getTypeId();
        if (typeId == null) {
            if (this._defaultImpl != null) {
                jsonDeserializer_findDeserializer = _findDefaultImplDeserializer(deserializationContext);
            } else {
                throw deserializationContext.mappingException("No (native) type id found when one was expected for polymorphic type handling");
            }
        } else {
            if (typeId instanceof String) {
                strValueOf = (String) typeId;
            } else {
                strValueOf = String.valueOf(typeId);
            }
            jsonDeserializer_findDeserializer = _findDeserializer(deserializationContext, strValueOf);
        }
        return jsonDeserializer_findDeserializer.deserialize(jsonParser, deserializationContext);
    }

    protected TypeDeserializerBase(TypeDeserializerBase typeDeserializerBase, BeanProperty beanProperty) {
        this._baseType = typeDeserializerBase._baseType;
        this._idResolver = typeDeserializerBase._idResolver;
        this._typePropertyName = typeDeserializerBase._typePropertyName;
        this._typeIdVisible = typeDeserializerBase._typeIdVisible;
        this._deserializers = typeDeserializerBase._deserializers;
        this._defaultImpl = typeDeserializerBase._defaultImpl;
        this._defaultImplDeserializer = typeDeserializerBase._defaultImplDeserializer;
        this._property = beanProperty;
    }
}
