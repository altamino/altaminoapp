package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.ResolvableSerializer;
import com.fasterxml.jackson.databind.ser.SerializerCache;
import com.fasterxml.jackson.databind.ser.SerializerFactory;
import com.fasterxml.jackson.databind.ser.impl.FailingSerializer;
import com.fasterxml.jackson.databind.ser.impl.ReadOnlyClassToSerializerMap;
import com.fasterxml.jackson.databind.ser.impl.TypeWrappedSerializer;
import com.fasterxml.jackson.databind.ser.impl.UnknownSerializer;
import com.fasterxml.jackson.databind.ser.impl.WritableObjectId;
import com.fasterxml.jackson.databind.ser.std.NullSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SerializerProvider extends DatabindContext {
    protected static final boolean CACHE_UNKNOWN_MAPPINGS = false;
    protected transient ContextAttributes _attributes;
    protected final SerializationConfig _config;
    protected DateFormat _dateFormat;
    protected JsonSerializer<Object> _keySerializer;
    protected final ReadOnlyClassToSerializerMap _knownSerializers;
    protected JsonSerializer<Object> _nullKeySerializer;
    protected JsonSerializer<Object> _nullValueSerializer;
    protected final RootNameLookup _rootNames;
    protected final Class<?> _serializationView;
    protected final SerializerCache _serializerCache;
    protected final SerializerFactory _serializerFactory;
    protected final boolean _stdNullValueSerializer;
    protected JsonSerializer<Object> _unknownTypeSerializer;

    @Deprecated
    protected static final JavaType TYPE_OBJECT = TypeFactory.defaultInstance().uncheckedSimpleType(Object.class);
    public static final JsonSerializer<Object> DEFAULT_NULL_KEY_SERIALIZER = new FailingSerializer("Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)");
    protected static final JsonSerializer<Object> DEFAULT_UNKNOWN_SERIALIZER = new UnknownSerializer();

    public SerializerProvider() {
        this._unknownTypeSerializer = DEFAULT_UNKNOWN_SERIALIZER;
        this._nullValueSerializer = NullSerializer.instance;
        this._nullKeySerializer = DEFAULT_NULL_KEY_SERIALIZER;
        this._config = null;
        this._serializerFactory = null;
        this._serializerCache = new SerializerCache();
        this._knownSerializers = null;
        this._rootNames = new RootNameLookup();
        this._serializationView = null;
        this._attributes = null;
        this._stdNullValueSerializer = true;
    }

    protected JsonSerializer<Object> _createAndCacheUntypedSerializer(Class<?> cls) throws JsonMappingException {
        try {
            JsonSerializer<Object> jsonSerializer_createUntypedSerializer = _createUntypedSerializer(this._config.constructType(cls));
            if (jsonSerializer_createUntypedSerializer != null) {
                this._serializerCache.addAndResolveNonTypedSerializer(cls, jsonSerializer_createUntypedSerializer, this);
            }
            return jsonSerializer_createUntypedSerializer;
        } catch (IllegalArgumentException e) {
            throw new JsonMappingException(e.getMessage(), null, e);
        }
    }

    public void defaultSerializeDateKey(long j6, JsonGenerator jsonGenerator) throws IOException {
        if (isEnabled(SerializationFeature.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
            jsonGenerator.writeFieldName(String.valueOf(j6));
        } else {
            jsonGenerator.writeFieldName(_dateFormat().format(new Date(j6)));
        }
    }

    public final void defaultSerializeDateValue(long j6, JsonGenerator jsonGenerator) throws IOException {
        if (isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS)) {
            jsonGenerator.writeNumber(j6);
        } else {
            jsonGenerator.writeString(_dateFormat().format(new Date(j6)));
        }
    }

    public final void defaultSerializeValue(Object obj, JsonGenerator jsonGenerator) throws IOException {
        if (obj != null) {
            findTypedValueSerializer(obj.getClass(), true, (BeanProperty) null).serialize(obj, jsonGenerator, this);
        } else if (this._stdNullValueSerializer) {
            jsonGenerator.writeNull();
        } else {
            this._nullValueSerializer.serialize(null, jsonGenerator, this);
        }
    }

    public JsonSerializer<Object> findNullKeySerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return this._nullKeySerializer;
    }

    public JsonSerializer<Object> findNullValueSerializer(BeanProperty beanProperty) throws JsonMappingException {
        return this._nullValueSerializer;
    }

    public abstract WritableObjectId findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator);

    public JsonSerializer<Object> findPrimaryPropertySerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializerUntypedValueSerializer = this._knownSerializers.untypedValueSerializer(javaType);
        return (jsonSerializerUntypedValueSerializer == null && (jsonSerializerUntypedValueSerializer = this._serializerCache.untypedValueSerializer(javaType)) == null && (jsonSerializerUntypedValueSerializer = _createAndCacheUntypedSerializer(javaType)) == null) ? getUnknownTypeSerializer(javaType.getRawClass()) : handlePrimaryContextualization(jsonSerializerUntypedValueSerializer, beanProperty);
    }

    public JsonSerializer<Object> findTypedValueSerializer(Class<?> cls, boolean z6, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializerTypedValueSerializer = this._knownSerializers.typedValueSerializer(cls);
        if (jsonSerializerTypedValueSerializer != null) {
            return jsonSerializerTypedValueSerializer;
        }
        JsonSerializer<Object> jsonSerializerTypedValueSerializer2 = this._serializerCache.typedValueSerializer(cls);
        if (jsonSerializerTypedValueSerializer2 != null) {
            return jsonSerializerTypedValueSerializer2;
        }
        JsonSerializer<Object> jsonSerializerFindValueSerializer = findValueSerializer(cls, beanProperty);
        SerializerFactory serializerFactory = this._serializerFactory;
        SerializationConfig serializationConfig = this._config;
        TypeSerializer typeSerializerCreateTypeSerializer = serializerFactory.createTypeSerializer(serializationConfig, serializationConfig.constructType(cls));
        if (typeSerializerCreateTypeSerializer != null) {
            jsonSerializerFindValueSerializer = new TypeWrappedSerializer(typeSerializerCreateTypeSerializer.forProperty(beanProperty), jsonSerializerFindValueSerializer);
        }
        if (z6) {
            this._serializerCache.addTypedSerializer(cls, jsonSerializerFindValueSerializer);
        }
        return jsonSerializerFindValueSerializer;
    }

    public JsonSerializer<Object> findValueSerializer(Class<?> cls, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializerUntypedValueSerializer = this._knownSerializers.untypedValueSerializer(cls);
        return (jsonSerializerUntypedValueSerializer == null && (jsonSerializerUntypedValueSerializer = this._serializerCache.untypedValueSerializer(cls)) == null && (jsonSerializerUntypedValueSerializer = this._serializerCache.untypedValueSerializer(this._config.constructType(cls))) == null && (jsonSerializerUntypedValueSerializer = _createAndCacheUntypedSerializer(cls)) == null) ? getUnknownTypeSerializer(cls) : handleSecondaryContextualization(jsonSerializerUntypedValueSerializer, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public final Class<?> getActiveView() {
        return this._serializationView;
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public final SerializationConfig getConfig() {
        return this._config;
    }

    public JsonSerializer<Object> getDefaultNullKeySerializer() {
        return this._nullKeySerializer;
    }

    public JsonSerializer<Object> getDefaultNullValueSerializer() {
        return this._nullValueSerializer;
    }

    @Deprecated
    public final Class<?> getSerializationView() {
        return this._serializationView;
    }

    public JsonSerializer<Object> getUnknownTypeSerializer(Class<?> cls) {
        return this._unknownTypeSerializer;
    }

    public abstract JsonSerializer<Object> serializerInstance(Annotated annotated, Object obj) throws JsonMappingException;

    protected JsonSerializer<Object> _createUntypedSerializer(JavaType javaType) throws JsonMappingException {
        return this._serializerFactory.createSerializer(this, javaType);
    }

    protected final DateFormat _dateFormat() {
        DateFormat dateFormat = this._dateFormat;
        if (dateFormat != null) {
            return dateFormat;
        }
        DateFormat dateFormat2 = (DateFormat) this._config.getDateFormat().clone();
        this._dateFormat = dateFormat2;
        return dateFormat2;
    }

    protected JsonSerializer<Object> _findExplicitUntypedSerializer(Class<?> cls) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializerUntypedValueSerializer = this._knownSerializers.untypedValueSerializer(cls);
        if (jsonSerializerUntypedValueSerializer != null) {
            return jsonSerializerUntypedValueSerializer;
        }
        JsonSerializer<Object> jsonSerializerUntypedValueSerializer2 = this._serializerCache.untypedValueSerializer(cls);
        return jsonSerializerUntypedValueSerializer2 != null ? jsonSerializerUntypedValueSerializer2 : _createAndCacheUntypedSerializer(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected JsonSerializer<Object> _handleContextualResolvable(JsonSerializer<?> jsonSerializer, BeanProperty beanProperty) throws JsonMappingException {
        if (jsonSerializer instanceof ResolvableSerializer) {
            ((ResolvableSerializer) jsonSerializer).resolve(this);
        }
        return handleSecondaryContextualization(jsonSerializer, beanProperty);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected JsonSerializer<Object> _handleResolvable(JsonSerializer<?> jsonSerializer) throws JsonMappingException {
        if (jsonSerializer instanceof ResolvableSerializer) {
            ((ResolvableSerializer) jsonSerializer).resolve(this);
        }
        return jsonSerializer;
    }

    public final void defaultSerializeNull(JsonGenerator jsonGenerator) throws IOException {
        if (this._stdNullValueSerializer) {
            jsonGenerator.writeNull();
        } else {
            this._nullValueSerializer.serialize(null, jsonGenerator, this);
        }
    }

    public JsonSerializer<Object> findKeySerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return _handleContextualResolvable(this._serializerFactory.createKeySerializer(this._config, javaType, this._keySerializer), beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public final AnnotationIntrospector getAnnotationIntrospector() {
        return this._config.getAnnotationIntrospector();
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public Object getAttribute(Object obj) {
        return this._attributes.getAttribute(obj);
    }

    public final FilterProvider getFilterProvider() {
        return this._config.getFilterProvider();
    }

    public Locale getLocale() {
        return this._config.getLocale();
    }

    public TimeZone getTimeZone() {
        return this._config.getTimeZone();
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public final TypeFactory getTypeFactory() {
        return this._config.getTypeFactory();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JsonSerializer<?> handlePrimaryContextualization(JsonSerializer<?> jsonSerializer, BeanProperty beanProperty) throws JsonMappingException {
        return (jsonSerializer == 0 || !(jsonSerializer instanceof ContextualSerializer)) ? jsonSerializer : ((ContextualSerializer) jsonSerializer).createContextual(this, beanProperty);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JsonSerializer<?> handleSecondaryContextualization(JsonSerializer<?> jsonSerializer, BeanProperty beanProperty) throws JsonMappingException {
        return (jsonSerializer == 0 || !(jsonSerializer instanceof ContextualSerializer)) ? jsonSerializer : ((ContextualSerializer) jsonSerializer).createContextual(this, beanProperty);
    }

    public final boolean hasSerializationFeatures(int i10) {
        return this._config.hasSerializationFeatures(i10);
    }

    public final boolean isEnabled(SerializationFeature serializationFeature) {
        return this._config.isEnabled(serializationFeature);
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public SerializerProvider setAttribute(Object obj, Object obj2) {
        this._attributes = this._attributes.withPerCallAttribute(obj, obj2);
        return this;
    }

    public void setDefaultKeySerializer(JsonSerializer<Object> jsonSerializer) {
        if (jsonSerializer == null) {
            throw new IllegalArgumentException("Can not pass null JsonSerializer");
        }
        this._keySerializer = jsonSerializer;
    }

    public void setNullKeySerializer(JsonSerializer<Object> jsonSerializer) {
        if (jsonSerializer == null) {
            throw new IllegalArgumentException("Can not pass null JsonSerializer");
        }
        this._nullKeySerializer = jsonSerializer;
    }

    public void setNullValueSerializer(JsonSerializer<Object> jsonSerializer) {
        if (jsonSerializer == null) {
            throw new IllegalArgumentException("Can not pass null JsonSerializer");
        }
        this._nullValueSerializer = jsonSerializer;
    }

    protected void _reportIncompatibleRootType(Object obj, JavaType javaType) throws IOException {
        if (javaType.isPrimitive() && ClassUtil.wrapperType(javaType.getRawClass()).isAssignableFrom(obj.getClass())) {
            return;
        }
        throw new JsonMappingException("Incompatible types: declared root type (" + javaType + ") vs " + obj.getClass().getName());
    }

    public final void defaultSerializeField(String str, Object obj, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeFieldName(str);
        if (obj == null) {
            if (this._stdNullValueSerializer) {
                jsonGenerator.writeNull();
                return;
            } else {
                this._nullValueSerializer.serialize(null, jsonGenerator, this);
                return;
            }
        }
        findTypedValueSerializer(obj.getClass(), true, (BeanProperty) null).serialize(obj, jsonGenerator, this);
    }

    @Deprecated
    public JsonSerializer<?> handleContextualization(JsonSerializer<?> jsonSerializer, BeanProperty beanProperty) throws JsonMappingException {
        return handleSecondaryContextualization(jsonSerializer, beanProperty);
    }

    protected JsonSerializer<Object> _createAndCacheUntypedSerializer(JavaType javaType) throws JsonMappingException {
        try {
            JsonSerializer<Object> jsonSerializer_createUntypedSerializer = _createUntypedSerializer(javaType);
            if (jsonSerializer_createUntypedSerializer != null) {
                this._serializerCache.addAndResolveNonTypedSerializer(javaType, jsonSerializer_createUntypedSerializer, this);
            }
            return jsonSerializer_createUntypedSerializer;
        } catch (IllegalArgumentException e) {
            throw new JsonMappingException(e.getMessage(), null, e);
        }
    }

    public void defaultSerializeDateKey(Date date, JsonGenerator jsonGenerator) throws IOException {
        if (isEnabled(SerializationFeature.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
            jsonGenerator.writeFieldName(String.valueOf(date.getTime()));
        } else {
            jsonGenerator.writeFieldName(_dateFormat().format(date));
        }
    }

    public final void defaultSerializeDateValue(Date date, JsonGenerator jsonGenerator) throws IOException {
        if (isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS)) {
            jsonGenerator.writeNumber(date.getTime());
        } else {
            jsonGenerator.writeString(_dateFormat().format(date));
        }
    }

    protected SerializerProvider(SerializerProvider serializerProvider, SerializationConfig serializationConfig, SerializerFactory serializerFactory) {
        this._unknownTypeSerializer = DEFAULT_UNKNOWN_SERIALIZER;
        this._nullValueSerializer = NullSerializer.instance;
        JsonSerializer<Object> jsonSerializer = DEFAULT_NULL_KEY_SERIALIZER;
        this._nullKeySerializer = jsonSerializer;
        serializationConfig.getClass();
        this._serializerFactory = serializerFactory;
        this._config = serializationConfig;
        SerializerCache serializerCache = serializerProvider._serializerCache;
        this._serializerCache = serializerCache;
        this._unknownTypeSerializer = serializerProvider._unknownTypeSerializer;
        this._keySerializer = serializerProvider._keySerializer;
        JsonSerializer<Object> jsonSerializer2 = serializerProvider._nullValueSerializer;
        this._nullValueSerializer = jsonSerializer2;
        this._stdNullValueSerializer = jsonSerializer2 == jsonSerializer;
        this._nullKeySerializer = serializerProvider._nullKeySerializer;
        this._rootNames = serializerProvider._rootNames;
        this._knownSerializers = serializerCache.getReadOnlyLookupMap();
        this._serializationView = serializationConfig.getActiveView();
        this._attributes = serializationConfig.getAttributes();
    }

    public JsonSerializer<Object> findPrimaryPropertySerializer(Class<?> cls, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializerUntypedValueSerializer = this._knownSerializers.untypedValueSerializer(cls);
        if (jsonSerializerUntypedValueSerializer == null && (jsonSerializerUntypedValueSerializer = this._serializerCache.untypedValueSerializer(cls)) == null && (jsonSerializerUntypedValueSerializer = this._serializerCache.untypedValueSerializer(this._config.constructType(cls))) == null && (jsonSerializerUntypedValueSerializer = _createAndCacheUntypedSerializer(cls)) == null) {
            return getUnknownTypeSerializer(cls);
        }
        return handlePrimaryContextualization(jsonSerializerUntypedValueSerializer, beanProperty);
    }

    public JsonSerializer<Object> findValueSerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializerUntypedValueSerializer = this._knownSerializers.untypedValueSerializer(javaType);
        if (jsonSerializerUntypedValueSerializer == null && (jsonSerializerUntypedValueSerializer = this._serializerCache.untypedValueSerializer(javaType)) == null && (jsonSerializerUntypedValueSerializer = _createAndCacheUntypedSerializer(javaType)) == null) {
            return getUnknownTypeSerializer(javaType.getRawClass());
        }
        return handleSecondaryContextualization(jsonSerializerUntypedValueSerializer, beanProperty);
    }

    public JsonSerializer<Object> findTypedValueSerializer(JavaType javaType, boolean z6, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializerTypedValueSerializer = this._knownSerializers.typedValueSerializer(javaType);
        if (jsonSerializerTypedValueSerializer != null) {
            return jsonSerializerTypedValueSerializer;
        }
        JsonSerializer<Object> jsonSerializerTypedValueSerializer2 = this._serializerCache.typedValueSerializer(javaType);
        if (jsonSerializerTypedValueSerializer2 != null) {
            return jsonSerializerTypedValueSerializer2;
        }
        JsonSerializer<Object> jsonSerializerFindValueSerializer = findValueSerializer(javaType, beanProperty);
        TypeSerializer typeSerializerCreateTypeSerializer = this._serializerFactory.createTypeSerializer(this._config, javaType);
        if (typeSerializerCreateTypeSerializer != null) {
            jsonSerializerFindValueSerializer = new TypeWrappedSerializer(typeSerializerCreateTypeSerializer.forProperty(beanProperty), jsonSerializerFindValueSerializer);
        }
        if (z6) {
            this._serializerCache.addTypedSerializer(javaType, jsonSerializerFindValueSerializer);
        }
        return jsonSerializerFindValueSerializer;
    }
}
