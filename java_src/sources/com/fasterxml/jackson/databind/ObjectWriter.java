package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.FormatSchema;
import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.SegmentedStringWriter;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.core.util.Instantiatable;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.SerializerFactory;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.Writer;
import java.text.DateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes6.dex */
public class ObjectWriter implements Versioned, Serializable {
    protected static final PrettyPrinter NULL_PRETTY_PRINTER = new MinimalPrettyPrinter();
    private static final long serialVersionUID = -7040667122552707164L;
    protected final boolean _cfgBigDecimalAsPlain;
    protected final CharacterEscapes _characterEscapes;
    protected final SerializationConfig _config;
    protected final JsonFactory _generatorFactory;
    protected final PrettyPrinter _prettyPrinter;
    protected final JsonSerializer<Object> _rootSerializer;
    protected final JavaType _rootType;
    protected final FormatSchema _schema;
    protected final SerializerFactory _serializerFactory;
    protected final DefaultSerializerProvider _serializerProvider;

    protected ObjectWriter(ObjectMapper objectMapper, SerializationConfig serializationConfig, JavaType javaType, PrettyPrinter prettyPrinter) {
        this._config = serializationConfig;
        this._cfgBigDecimalAsPlain = serializationConfig.isEnabled(SerializationFeature.WRITE_BIGDECIMAL_AS_PLAIN);
        this._serializerProvider = objectMapper._serializerProvider;
        this._serializerFactory = objectMapper._serializerFactory;
        this._generatorFactory = objectMapper._jsonFactory;
        javaType = javaType != null ? javaType.withStaticTyping() : javaType;
        this._prettyPrinter = prettyPrinter;
        this._schema = null;
        this._characterEscapes = null;
        if (javaType == null || javaType.hasRawClass(Object.class)) {
            this._rootType = null;
            this._rootSerializer = null;
        } else {
            this._rootType = javaType;
            this._rootSerializer = _prefetchRootSerializer(serializationConfig, javaType);
        }
    }

    private final void _writeCloseable(JsonGenerator jsonGenerator, Object obj, SerializationConfig serializationConfig) throws Throwable {
        Closeable closeable = (Closeable) obj;
        try {
            if (this._rootType == null) {
                _serializerProvider(serializationConfig).serializeValue(jsonGenerator, obj);
            } else {
                _serializerProvider(serializationConfig).serializeValue(jsonGenerator, obj, this._rootType, this._rootSerializer);
            }
            try {
                jsonGenerator.close();
                try {
                    closeable.close();
                } catch (Throwable th) {
                    closeable = null;
                    th = th;
                    jsonGenerator = null;
                    if (jsonGenerator != null) {
                        try {
                            jsonGenerator.close();
                        } catch (IOException unused) {
                        }
                    }
                    if (closeable == null) {
                        throw th;
                    }
                    try {
                        closeable.close();
                        throw th;
                    } catch (IOException unused2) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                jsonGenerator = null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private final void _writeCloseableValue(JsonGenerator jsonGenerator, Object obj, SerializationConfig serializationConfig) throws Throwable {
        Closeable closeable = (Closeable) obj;
        try {
            if (this._rootType == null) {
                _serializerProvider(serializationConfig).serializeValue(jsonGenerator, obj);
            } else {
                _serializerProvider(serializationConfig).serializeValue(jsonGenerator, obj, this._rootType, this._rootSerializer);
            }
            if (this._config.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE)) {
                jsonGenerator.flush();
            }
            try {
                closeable.close();
            } catch (Throwable th) {
                th = th;
                closeable = null;
                if (closeable != null) {
                    try {
                        closeable.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    protected JsonSerializer<Object> _prefetchRootSerializer(SerializationConfig serializationConfig, JavaType javaType) {
        if (javaType != null && this._config.isEnabled(SerializationFeature.EAGER_SERIALIZER_FETCH)) {
            try {
                return _serializerProvider(serializationConfig).findTypedValueSerializer(javaType, true, (BeanProperty) null);
            } catch (JsonProcessingException unused) {
            }
        }
        return null;
    }

    public boolean canSerialize(Class<?> cls) {
        return _serializerProvider(this._config).hasSerializerFor(cls, null);
    }

    public SerializationConfig getConfig() {
        return this._config;
    }

    public JsonFactory getFactory() {
        return this._generatorFactory;
    }

    @Deprecated
    public JsonFactory getJsonFactory() {
        return this._generatorFactory;
    }

    public boolean hasPrefetchedSerializer() {
        return this._rootSerializer != null;
    }

    public boolean isEnabled(SerializationFeature serializationFeature) {
        return this._config.isEnabled(serializationFeature);
    }

    public ObjectWriter with(SerializationFeature serializationFeature) {
        SerializationConfig serializationConfigWith = this._config.with(serializationFeature);
        return serializationConfigWith == this._config ? this : new ObjectWriter(this, serializationConfigWith);
    }

    public ObjectWriter withType(JavaType javaType) {
        JsonSerializer<Object> jsonSerializer_prefetchRootSerializer = null;
        if (javaType != null && javaType.hasRawClass(Object.class)) {
            javaType = null;
        }
        if (javaType != null) {
            javaType = javaType.withStaticTyping();
            jsonSerializer_prefetchRootSerializer = _prefetchRootSerializer(this._config, javaType);
        }
        return new ObjectWriter(this, this._config, javaType, jsonSerializer_prefetchRootSerializer, this._prettyPrinter, this._schema, this._characterEscapes);
    }

    public ObjectWriter without(SerializationFeature serializationFeature) {
        SerializationConfig serializationConfigWithout = this._config.without(serializationFeature);
        return serializationConfigWithout == this._config ? this : new ObjectWriter(this, serializationConfigWithout);
    }

    public void writeValue(JsonGenerator jsonGenerator, Object obj) throws Throwable {
        _configureJsonGenerator(jsonGenerator);
        if (this._config.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable)) {
            _writeCloseableValue(jsonGenerator, obj, this._config);
            return;
        }
        if (this._rootType == null) {
            _serializerProvider(this._config).serializeValue(jsonGenerator, obj);
        } else {
            _serializerProvider(this._config).serializeValue(jsonGenerator, obj, this._rootType, this._rootSerializer);
        }
        if (this._config.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE)) {
            jsonGenerator.flush();
        }
    }

    private void _configureJsonGenerator(JsonGenerator jsonGenerator) {
        PrettyPrinter prettyPrinter = this._prettyPrinter;
        if (prettyPrinter != null) {
            if (prettyPrinter == NULL_PRETTY_PRINTER) {
                jsonGenerator.setPrettyPrinter(null);
            } else {
                if (prettyPrinter instanceof Instantiatable) {
                    prettyPrinter = (PrettyPrinter) ((Instantiatable) prettyPrinter).createInstance();
                }
                jsonGenerator.setPrettyPrinter(prettyPrinter);
            }
        } else if (this._config.isEnabled(SerializationFeature.INDENT_OUTPUT)) {
            jsonGenerator.useDefaultPrettyPrinter();
        }
        CharacterEscapes characterEscapes = this._characterEscapes;
        if (characterEscapes != null) {
            jsonGenerator.setCharacterEscapes(characterEscapes);
        }
        FormatSchema formatSchema = this._schema;
        if (formatSchema != null) {
            jsonGenerator.setSchema(formatSchema);
        }
        if (this._cfgBigDecimalAsPlain) {
            jsonGenerator.enable(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN);
        }
    }

    protected DefaultSerializerProvider _serializerProvider(SerializationConfig serializationConfig) {
        return this._serializerProvider.createInstance(serializationConfig, this._serializerFactory);
    }

    protected void _verifySchemaType(FormatSchema formatSchema) {
        if (formatSchema == null || this._generatorFactory.canUseSchema(formatSchema)) {
            return;
        }
        throw new IllegalArgumentException("Can not use FormatSchema of type " + formatSchema.getClass().getName() + " for format " + this._generatorFactory.getFormatName());
    }

    public void acceptJsonFormatVisitor(JavaType javaType, JsonFormatVisitorWrapper jsonFormatVisitorWrapper) throws JsonMappingException {
        if (javaType == null) {
            throw new IllegalArgumentException("type must be provided");
        }
        _serializerProvider(this._config).acceptJsonFormatVisitor(javaType, jsonFormatVisitorWrapper);
    }

    public boolean canSerialize(Class<?> cls, AtomicReference<Throwable> atomicReference) {
        return _serializerProvider(this._config).hasSerializerFor(cls, atomicReference);
    }

    public ContextAttributes getAttributes() {
        return this._config.getAttributes();
    }

    public TypeFactory getTypeFactory() {
        return this._config.getTypeFactory();
    }

    public boolean isEnabled(MapperFeature mapperFeature) {
        return this._config.isEnabled(mapperFeature);
    }

    @Override // com.fasterxml.jackson.core.Versioned
    public Version version() {
        return PackageVersion.VERSION;
    }

    public ObjectWriter withAttribute(Object obj, Object obj2) {
        SerializationConfig serializationConfigWithAttribute = this._config.withAttribute(obj, obj2);
        return serializationConfigWithAttribute == this._config ? this : new ObjectWriter(this, serializationConfigWithAttribute);
    }

    public ObjectWriter withAttributes(Map<Object, Object> map) {
        SerializationConfig serializationConfigWithAttributes = this._config.withAttributes(map);
        return serializationConfigWithAttributes == this._config ? this : new ObjectWriter(this, serializationConfigWithAttributes);
    }

    public ObjectWriter withDefaultPrettyPrinter() {
        return with(new DefaultPrettyPrinter());
    }

    public ObjectWriter withFeatures(SerializationFeature... serializationFeatureArr) {
        SerializationConfig serializationConfigWithFeatures = this._config.withFeatures(serializationFeatureArr);
        return serializationConfigWithFeatures == this._config ? this : new ObjectWriter(this, serializationConfigWithFeatures);
    }

    public ObjectWriter withRootName(String str) {
        SerializationConfig serializationConfigWithRootName = this._config.withRootName(str);
        return serializationConfigWithRootName == this._config ? this : new ObjectWriter(this, serializationConfigWithRootName);
    }

    public ObjectWriter withSchema(FormatSchema formatSchema) {
        if (this._schema == formatSchema) {
            return this;
        }
        _verifySchemaType(formatSchema);
        return new ObjectWriter(this, this._config, this._rootType, this._rootSerializer, this._prettyPrinter, formatSchema, this._characterEscapes);
    }

    public ObjectWriter withView(Class<?> cls) {
        SerializationConfig serializationConfigWithView = this._config.withView(cls);
        return serializationConfigWithView == this._config ? this : new ObjectWriter(this, serializationConfigWithView);
    }

    public ObjectWriter withoutAttribute(Object obj) {
        SerializationConfig serializationConfigWithoutAttribute = this._config.withoutAttribute(obj);
        return serializationConfigWithoutAttribute == this._config ? this : new ObjectWriter(this, serializationConfigWithoutAttribute);
    }

    public ObjectWriter withoutFeatures(SerializationFeature... serializationFeatureArr) {
        SerializationConfig serializationConfigWithoutFeatures = this._config.withoutFeatures(serializationFeatureArr);
        return serializationConfigWithoutFeatures == this._config ? this : new ObjectWriter(this, serializationConfigWithoutFeatures);
    }

    public byte[] writeValueAsBytes(Object obj) throws Throwable {
        ByteArrayBuilder byteArrayBuilder = new ByteArrayBuilder(this._generatorFactory._getBufferRecycler());
        try {
            _configAndWriteValue(this._generatorFactory.createGenerator(byteArrayBuilder, JsonEncoding.UTF8), obj);
            byte[] byteArray = byteArrayBuilder.toByteArray();
            byteArrayBuilder.release();
            return byteArray;
        } catch (JsonProcessingException e) {
            throw e;
        } catch (IOException e2) {
            throw JsonMappingException.fromUnexpectedIOE(e2);
        }
    }

    public String writeValueAsString(Object obj) throws Throwable {
        SegmentedStringWriter segmentedStringWriter = new SegmentedStringWriter(this._generatorFactory._getBufferRecycler());
        try {
            _configAndWriteValue(this._generatorFactory.createGenerator(segmentedStringWriter), obj);
            return segmentedStringWriter.getAndClear();
        } catch (JsonProcessingException e) {
            throw e;
        } catch (IOException e2) {
            throw JsonMappingException.fromUnexpectedIOE(e2);
        }
    }

    protected final void _configAndWriteValue(JsonGenerator jsonGenerator, Object obj) throws Throwable {
        _configureJsonGenerator(jsonGenerator);
        if (this._config.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable)) {
            _writeCloseable(jsonGenerator, obj, this._config);
            return;
        }
        boolean z6 = false;
        try {
            if (this._rootType == null) {
                _serializerProvider(this._config).serializeValue(jsonGenerator, obj);
            } else {
                _serializerProvider(this._config).serializeValue(jsonGenerator, obj, this._rootType, this._rootSerializer);
            }
            try {
                jsonGenerator.close();
            } catch (Throwable th) {
                th = th;
                z6 = true;
                if (!z6) {
                    try {
                        jsonGenerator.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public boolean isEnabled(JsonParser.Feature feature) {
        return this._generatorFactory.isEnabled(feature);
    }

    public ObjectWriter with(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        SerializationConfig serializationConfigWith = this._config.with(serializationFeature, serializationFeatureArr);
        return serializationConfigWith == this._config ? this : new ObjectWriter(this, serializationConfigWith);
    }

    public ObjectWriter without(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        SerializationConfig serializationConfigWithout = this._config.without(serializationFeature, serializationFeatureArr);
        return serializationConfigWithout == this._config ? this : new ObjectWriter(this, serializationConfigWithout);
    }

    public ObjectWriter with(DateFormat dateFormat) {
        SerializationConfig serializationConfigWith = this._config.with(dateFormat);
        return serializationConfigWith == this._config ? this : new ObjectWriter(this, serializationConfigWith);
    }

    public ObjectWriter withType(Class<?> cls) {
        if (cls == Object.class) {
            return withType((JavaType) null);
        }
        return withType(this._config.constructType(cls));
    }

    public ObjectWriter with(FilterProvider filterProvider) {
        return filterProvider == this._config.getFilterProvider() ? this : new ObjectWriter(this, this._config.withFilters(filterProvider));
    }

    public ObjectWriter withType(TypeReference<?> typeReference) {
        return withType(this._config.getTypeFactory().constructType(typeReference.getType()));
    }

    public void writeValue(File file, Object obj) throws Throwable {
        _configAndWriteValue(this._generatorFactory.createGenerator(file, JsonEncoding.UTF8), obj);
    }

    protected ObjectWriter(ObjectMapper objectMapper, SerializationConfig serializationConfig) {
        this._config = serializationConfig;
        this._cfgBigDecimalAsPlain = serializationConfig.isEnabled(SerializationFeature.WRITE_BIGDECIMAL_AS_PLAIN);
        this._serializerProvider = objectMapper._serializerProvider;
        this._serializerFactory = objectMapper._serializerFactory;
        this._generatorFactory = objectMapper._jsonFactory;
        this._rootType = null;
        this._rootSerializer = null;
        this._prettyPrinter = null;
        this._schema = null;
        this._characterEscapes = null;
    }

    public ObjectWriter with(PrettyPrinter prettyPrinter) {
        if (prettyPrinter == this._prettyPrinter) {
            return this;
        }
        if (prettyPrinter == null) {
            prettyPrinter = NULL_PRETTY_PRINTER;
        }
        return new ObjectWriter(this, this._config, this._rootType, this._rootSerializer, prettyPrinter, this._schema, this._characterEscapes);
    }

    public void writeValue(OutputStream outputStream, Object obj) throws Throwable {
        _configAndWriteValue(this._generatorFactory.createGenerator(outputStream, JsonEncoding.UTF8), obj);
    }

    public ObjectWriter with(Locale locale) {
        SerializationConfig serializationConfigWith = this._config.with(locale);
        return serializationConfigWith == this._config ? this : new ObjectWriter(this, serializationConfigWith);
    }

    public void writeValue(Writer writer, Object obj) throws Throwable {
        _configAndWriteValue(this._generatorFactory.createGenerator(writer), obj);
    }

    public ObjectWriter with(TimeZone timeZone) {
        SerializationConfig serializationConfigWith = this._config.with(timeZone);
        return serializationConfigWith == this._config ? this : new ObjectWriter(this, serializationConfigWith);
    }

    protected ObjectWriter(ObjectMapper objectMapper, SerializationConfig serializationConfig, FormatSchema formatSchema) {
        this._config = serializationConfig;
        this._cfgBigDecimalAsPlain = serializationConfig.isEnabled(SerializationFeature.WRITE_BIGDECIMAL_AS_PLAIN);
        this._serializerProvider = objectMapper._serializerProvider;
        this._serializerFactory = objectMapper._serializerFactory;
        this._generatorFactory = objectMapper._jsonFactory;
        this._rootType = null;
        this._rootSerializer = null;
        this._prettyPrinter = null;
        this._schema = formatSchema;
        this._characterEscapes = null;
    }

    public ObjectWriter with(Base64Variant base64Variant) {
        SerializationConfig serializationConfigWith = this._config.with(base64Variant);
        return serializationConfigWith == this._config ? this : new ObjectWriter(this, serializationConfigWith);
    }

    public ObjectWriter with(CharacterEscapes characterEscapes) {
        return this._characterEscapes == characterEscapes ? this : new ObjectWriter(this, this._config, this._rootType, this._rootSerializer, this._prettyPrinter, this._schema, characterEscapes);
    }

    public ObjectWriter with(JsonFactory jsonFactory) {
        return jsonFactory == this._generatorFactory ? this : new ObjectWriter(this, jsonFactory);
    }

    public ObjectWriter with(ContextAttributes contextAttributes) {
        SerializationConfig serializationConfigWith = this._config.with(contextAttributes);
        return serializationConfigWith == this._config ? this : new ObjectWriter(this, serializationConfigWith);
    }

    protected ObjectWriter(ObjectWriter objectWriter, SerializationConfig serializationConfig, JavaType javaType, JsonSerializer<Object> jsonSerializer, PrettyPrinter prettyPrinter, FormatSchema formatSchema, CharacterEscapes characterEscapes) {
        this._config = serializationConfig;
        this._cfgBigDecimalAsPlain = serializationConfig.isEnabled(SerializationFeature.WRITE_BIGDECIMAL_AS_PLAIN);
        this._serializerProvider = objectWriter._serializerProvider;
        this._serializerFactory = objectWriter._serializerFactory;
        this._generatorFactory = objectWriter._generatorFactory;
        this._rootType = javaType;
        this._rootSerializer = jsonSerializer;
        this._prettyPrinter = prettyPrinter;
        this._schema = formatSchema;
        this._characterEscapes = characterEscapes;
    }

    protected ObjectWriter(ObjectWriter objectWriter, SerializationConfig serializationConfig) {
        this._config = serializationConfig;
        this._cfgBigDecimalAsPlain = serializationConfig.isEnabled(SerializationFeature.WRITE_BIGDECIMAL_AS_PLAIN);
        this._serializerProvider = objectWriter._serializerProvider;
        this._serializerFactory = objectWriter._serializerFactory;
        this._generatorFactory = objectWriter._generatorFactory;
        this._schema = objectWriter._schema;
        this._characterEscapes = objectWriter._characterEscapes;
        this._rootType = objectWriter._rootType;
        this._rootSerializer = objectWriter._rootSerializer;
        this._prettyPrinter = objectWriter._prettyPrinter;
    }

    protected ObjectWriter(ObjectWriter objectWriter, JsonFactory jsonFactory) {
        this._config = objectWriter._config.with(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY, jsonFactory.requiresPropertyOrdering());
        this._cfgBigDecimalAsPlain = objectWriter._cfgBigDecimalAsPlain;
        this._serializerProvider = objectWriter._serializerProvider;
        this._serializerFactory = objectWriter._serializerFactory;
        this._generatorFactory = objectWriter._generatorFactory;
        this._schema = objectWriter._schema;
        this._characterEscapes = objectWriter._characterEscapes;
        this._rootType = objectWriter._rootType;
        this._rootSerializer = objectWriter._rootSerializer;
        this._prettyPrinter = objectWriter._prettyPrinter;
    }
}
