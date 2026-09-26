package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.format.InputAccessor;
import com.fasterxml.jackson.core.format.MatchStrength;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.InputDecorator;
import com.fasterxml.jackson.core.io.OutputDecorator;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.io.UTF8Writer;
import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import com.fasterxml.jackson.core.json.PackageVersion;
import com.fasterxml.jackson.core.json.ReaderBasedJsonParser;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.fasterxml.jackson.core.json.WriterBasedJsonGenerator;
import com.fasterxml.jackson.core.sym.BytesToNameCanonicalizer;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringReader;
import java.io.Writer;
import java.lang.ref.SoftReference;
import java.net.URL;

/* JADX INFO: loaded from: classes8.dex */
public class JsonFactory implements Versioned, Serializable {
    public static final String FORMAT_NAME_JSON = "JSON";
    private static final long serialVersionUID = 3194418244231611666L;
    protected CharacterEscapes _characterEscapes;
    protected int _factoryFeatures;
    protected int _generatorFeatures;
    protected InputDecorator _inputDecorator;
    protected ObjectCodec _objectCodec;
    protected OutputDecorator _outputDecorator;
    protected int _parserFeatures;
    protected final transient BytesToNameCanonicalizer _rootByteSymbols;
    protected final transient CharsToNameCanonicalizer _rootCharSymbols;
    protected SerializableString _rootValueSeparator;
    protected static final int DEFAULT_FACTORY_FEATURE_FLAGS = Feature.collectDefaults();
    protected static final int DEFAULT_PARSER_FEATURE_FLAGS = JsonParser.Feature.collectDefaults();
    protected static final int DEFAULT_GENERATOR_FEATURE_FLAGS = JsonGenerator.Feature.collectDefaults();
    private static final SerializableString DEFAULT_ROOT_VALUE_SEPARATOR = DefaultPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR;
    protected static final ThreadLocal<SoftReference<BufferRecycler>> _recyclerRef = new ThreadLocal<>();

    public JsonFactory() {
        this(null);
    }

    @Deprecated
    protected JsonParser _createJsonParser(InputStream inputStream, IOContext iOContext) throws IOException {
        return _createParser(inputStream, iOContext);
    }

    protected JsonParser _createParser(InputStream inputStream, IOContext iOContext) throws IOException {
        return new ByteSourceJsonBootstrapper(iOContext, inputStream).constructParser(this._parserFeatures, this._objectCodec, this._rootByteSymbols, this._rootCharSymbols, isEnabled(Feature.CANONICALIZE_FIELD_NAMES), isEnabled(Feature.INTERN_FIELD_NAMES));
    }

    public boolean canHandleBinaryNatively() {
        return false;
    }

    public final JsonFactory configure(Feature feature, boolean z6) {
        return z6 ? enable(feature) : disable(feature);
    }

    public JsonGenerator createGenerator(OutputStream outputStream, JsonEncoding jsonEncoding) throws IOException {
        IOContext iOContext_createContext = _createContext(outputStream, false);
        iOContext_createContext.setEncoding(jsonEncoding);
        if (jsonEncoding == JsonEncoding.UTF8) {
            OutputDecorator outputDecorator = this._outputDecorator;
            if (outputDecorator != null) {
                outputStream = outputDecorator.decorate(iOContext_createContext, outputStream);
            }
            return _createUTF8Generator(outputStream, iOContext_createContext);
        }
        Writer writer_createWriter = _createWriter(outputStream, jsonEncoding, iOContext_createContext);
        OutputDecorator outputDecorator2 = this._outputDecorator;
        if (outputDecorator2 != null) {
            writer_createWriter = outputDecorator2.decorate(iOContext_createContext, writer_createWriter);
        }
        return _createGenerator(writer_createWriter, iOContext_createContext);
    }

    @Deprecated
    public JsonGenerator createJsonGenerator(OutputStream outputStream, JsonEncoding jsonEncoding) throws IOException {
        return createGenerator(outputStream, jsonEncoding);
    }

    @Deprecated
    public JsonParser createJsonParser(File file) throws IOException {
        return createParser(file);
    }

    public JsonParser createParser(File file) throws IOException {
        IOContext iOContext_createContext = _createContext(file, true);
        InputStream fileInputStream = new FileInputStream(file);
        InputDecorator inputDecorator = this._inputDecorator;
        if (inputDecorator != null) {
            fileInputStream = inputDecorator.decorate(iOContext_createContext, fileInputStream);
        }
        return _createParser(fileInputStream, iOContext_createContext);
    }

    public JsonFactory disable(Feature feature) {
        this._factoryFeatures = (~feature.getMask()) & this._factoryFeatures;
        return this;
    }

    public JsonFactory enable(Feature feature) {
        this._factoryFeatures = feature.getMask() | this._factoryFeatures;
        return this;
    }

    public CharacterEscapes getCharacterEscapes() {
        return this._characterEscapes;
    }

    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    public InputDecorator getInputDecorator() {
        return this._inputDecorator;
    }

    public OutputDecorator getOutputDecorator() {
        return this._outputDecorator;
    }

    public final boolean isEnabled(Feature feature) {
        return (feature.getMask() & this._factoryFeatures) != 0;
    }

    public boolean requiresCustomCodec() {
        return false;
    }

    public boolean requiresPropertyOrdering() {
        return false;
    }

    public JsonFactory setCharacterEscapes(CharacterEscapes characterEscapes) {
        this._characterEscapes = characterEscapes;
        return this;
    }

    public JsonFactory setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
        return this;
    }

    public JsonFactory setInputDecorator(InputDecorator inputDecorator) {
        this._inputDecorator = inputDecorator;
        return this;
    }

    public JsonFactory setOutputDecorator(OutputDecorator outputDecorator) {
        this._outputDecorator = outputDecorator;
        return this;
    }

    public enum Feature {
        INTERN_FIELD_NAMES(true),
        CANONICALIZE_FIELD_NAMES(true);

        private final boolean _defaultState;

        public boolean enabledByDefault() {
            return this._defaultState;
        }

        public int getMask() {
            return 1 << ordinal();
        }

        Feature(boolean z6) {
            this._defaultState = z6;
        }

        public static int collectDefaults() {
            int mask = 0;
            for (Feature feature : values()) {
                if (feature.enabledByDefault()) {
                    mask |= feature.getMask();
                }
            }
            return mask;
        }

        public boolean enabledIn(int i10) {
            if ((i10 & getMask()) != 0) {
                return true;
            }
            return false;
        }
    }

    public JsonFactory(ObjectCodec objectCodec) {
        this._rootCharSymbols = CharsToNameCanonicalizer.createRoot();
        this._rootByteSymbols = BytesToNameCanonicalizer.createRoot();
        this._factoryFeatures = DEFAULT_FACTORY_FEATURE_FLAGS;
        this._parserFeatures = DEFAULT_PARSER_FEATURE_FLAGS;
        this._generatorFeatures = DEFAULT_GENERATOR_FEATURE_FLAGS;
        this._rootValueSeparator = DEFAULT_ROOT_VALUE_SEPARATOR;
        this._objectCodec = objectCodec;
    }

    protected IOContext _createContext(Object obj, boolean z6) {
        return new IOContext(_getBufferRecycler(), obj, z6);
    }

    protected JsonGenerator _createGenerator(Writer writer, IOContext iOContext) throws IOException {
        WriterBasedJsonGenerator writerBasedJsonGenerator = new WriterBasedJsonGenerator(iOContext, this._generatorFeatures, this._objectCodec, writer);
        CharacterEscapes characterEscapes = this._characterEscapes;
        if (characterEscapes != null) {
            writerBasedJsonGenerator.setCharacterEscapes(characterEscapes);
        }
        SerializableString serializableString = this._rootValueSeparator;
        if (serializableString != DEFAULT_ROOT_VALUE_SEPARATOR) {
            writerBasedJsonGenerator.setRootValueSeparator(serializableString);
        }
        return writerBasedJsonGenerator;
    }

    @Deprecated
    protected JsonParser _createJsonParser(Reader reader, IOContext iOContext) throws IOException {
        return _createParser(reader, iOContext);
    }

    protected JsonParser _createParser(Reader reader, IOContext iOContext) throws IOException {
        return new ReaderBasedJsonParser(iOContext, this._parserFeatures, reader, this._objectCodec, this._rootCharSymbols.makeChild(isEnabled(Feature.CANONICALIZE_FIELD_NAMES), isEnabled(Feature.INTERN_FIELD_NAMES)));
    }

    protected JsonGenerator _createUTF8Generator(OutputStream outputStream, IOContext iOContext) throws IOException {
        UTF8JsonGenerator uTF8JsonGenerator = new UTF8JsonGenerator(iOContext, this._generatorFeatures, this._objectCodec, outputStream);
        CharacterEscapes characterEscapes = this._characterEscapes;
        if (characterEscapes != null) {
            uTF8JsonGenerator.setCharacterEscapes(characterEscapes);
        }
        SerializableString serializableString = this._rootValueSeparator;
        if (serializableString != DEFAULT_ROOT_VALUE_SEPARATOR) {
            uTF8JsonGenerator.setRootValueSeparator(serializableString);
        }
        return uTF8JsonGenerator;
    }

    protected Writer _createWriter(OutputStream outputStream, JsonEncoding jsonEncoding, IOContext iOContext) throws IOException {
        return jsonEncoding == JsonEncoding.UTF8 ? new UTF8Writer(iOContext, outputStream) : new OutputStreamWriter(outputStream, jsonEncoding.getJavaName());
    }

    public BufferRecycler _getBufferRecycler() {
        ThreadLocal<SoftReference<BufferRecycler>> threadLocal = _recyclerRef;
        SoftReference<BufferRecycler> softReference = threadLocal.get();
        BufferRecycler bufferRecycler = softReference == null ? null : softReference.get();
        if (bufferRecycler != null) {
            return bufferRecycler;
        }
        BufferRecycler bufferRecycler2 = new BufferRecycler();
        threadLocal.set(new SoftReference<>(bufferRecycler2));
        return bufferRecycler2;
    }

    public final JsonFactory configure(JsonParser.Feature feature, boolean z6) {
        return z6 ? enable(feature) : disable(feature);
    }

    public JsonFactory copy() {
        _checkInvalidCopy(JsonFactory.class);
        return new JsonFactory(this, null);
    }

    @Deprecated
    public JsonGenerator createJsonGenerator(Writer writer) throws IOException {
        return createGenerator(writer);
    }

    @Deprecated
    public JsonParser createJsonParser(URL url) throws IOException {
        return createParser(url);
    }

    public JsonFactory disable(JsonParser.Feature feature) {
        this._parserFeatures = (~feature.getMask()) & this._parserFeatures;
        return this;
    }

    public JsonFactory enable(JsonParser.Feature feature) {
        this._parserFeatures = feature.getMask() | this._parserFeatures;
        return this;
    }

    public String getRootValueSeparator() {
        SerializableString serializableString = this._rootValueSeparator;
        if (serializableString == null) {
            return null;
        }
        return serializableString.getValue();
    }

    public final boolean isEnabled(JsonParser.Feature feature) {
        return (feature.getMask() & this._parserFeatures) != 0;
    }

    protected Object readResolve() {
        return new JsonFactory(this, this._objectCodec);
    }

    public JsonFactory setRootValueSeparator(String str) {
        this._rootValueSeparator = str == null ? null : new SerializedString(str);
        return this;
    }

    @Override // com.fasterxml.jackson.core.Versioned
    public Version version() {
        return PackageVersion.VERSION;
    }

    protected void _checkInvalidCopy(Class<?> cls) {
        if (getClass() == cls) {
            return;
        }
        throw new IllegalStateException("Failed copy(): " + getClass().getName() + " (version: " + version() + ") does not override copy(); it has to");
    }

    @Deprecated
    protected JsonGenerator _createJsonGenerator(Writer writer, IOContext iOContext) throws IOException {
        return _createGenerator(writer, iOContext);
    }

    @Deprecated
    protected JsonParser _createJsonParser(byte[] bArr, int i10, int i11, IOContext iOContext) throws IOException {
        return _createParser(bArr, i10, i11, iOContext);
    }

    protected JsonParser _createParser(byte[] bArr, int i10, int i11, IOContext iOContext) throws IOException {
        return new ByteSourceJsonBootstrapper(iOContext, bArr, i10, i11).constructParser(this._parserFeatures, this._objectCodec, this._rootByteSymbols, this._rootCharSymbols, isEnabled(Feature.CANONICALIZE_FIELD_NAMES), isEnabled(Feature.INTERN_FIELD_NAMES));
    }

    @Deprecated
    protected JsonGenerator _createUTF8JsonGenerator(OutputStream outputStream, IOContext iOContext) throws IOException {
        return _createUTF8Generator(outputStream, iOContext);
    }

    protected InputStream _optimizedStreamFromURL(URL url) throws IOException {
        String host;
        if ("file".equals(url.getProtocol()) && (((host = url.getHost()) == null || host.length() == 0) && url.getPath().indexOf(37) < 0)) {
            return new FileInputStream(url.getPath());
        }
        return FirebasePerfUrlConnection.openStream(url);
    }

    public boolean canUseSchema(FormatSchema formatSchema) {
        String formatName = getFormatName();
        if (formatName != null && formatName.equals(formatSchema.getSchemaType())) {
            return true;
        }
        return false;
    }

    public final JsonFactory configure(JsonGenerator.Feature feature, boolean z6) {
        return z6 ? enable(feature) : disable(feature);
    }

    @Deprecated
    public JsonGenerator createJsonGenerator(OutputStream outputStream) throws IOException {
        return createGenerator(outputStream, JsonEncoding.UTF8);
    }

    @Deprecated
    public JsonParser createJsonParser(InputStream inputStream) throws IOException {
        return createParser(inputStream);
    }

    public JsonFactory disable(JsonGenerator.Feature feature) {
        this._generatorFeatures = (~feature.getMask()) & this._generatorFeatures;
        return this;
    }

    public JsonFactory enable(JsonGenerator.Feature feature) {
        this._generatorFeatures = feature.getMask() | this._generatorFeatures;
        return this;
    }

    public String getFormatName() {
        if (getClass() == JsonFactory.class) {
            return FORMAT_NAME_JSON;
        }
        return null;
    }

    public MatchStrength hasFormat(InputAccessor inputAccessor) throws IOException {
        if (getClass() == JsonFactory.class) {
            return hasJSONFormat(inputAccessor);
        }
        return null;
    }

    protected MatchStrength hasJSONFormat(InputAccessor inputAccessor) throws IOException {
        return ByteSourceJsonBootstrapper.hasJSONFormat(inputAccessor);
    }

    public final boolean isEnabled(JsonGenerator.Feature feature) {
        return (feature.getMask() & this._generatorFeatures) != 0;
    }

    @Deprecated
    public JsonGenerator createJsonGenerator(File file, JsonEncoding jsonEncoding) throws IOException {
        return createGenerator(file, jsonEncoding);
    }

    @Deprecated
    public JsonParser createJsonParser(Reader reader) throws IOException {
        return createParser(reader);
    }

    protected JsonFactory(JsonFactory jsonFactory, ObjectCodec objectCodec) {
        this._rootCharSymbols = CharsToNameCanonicalizer.createRoot();
        this._rootByteSymbols = BytesToNameCanonicalizer.createRoot();
        this._factoryFeatures = DEFAULT_FACTORY_FEATURE_FLAGS;
        this._parserFeatures = DEFAULT_PARSER_FEATURE_FLAGS;
        this._generatorFeatures = DEFAULT_GENERATOR_FEATURE_FLAGS;
        this._rootValueSeparator = DEFAULT_ROOT_VALUE_SEPARATOR;
        this._objectCodec = null;
        this._factoryFeatures = jsonFactory._factoryFeatures;
        this._parserFeatures = jsonFactory._parserFeatures;
        this._generatorFeatures = jsonFactory._generatorFeatures;
        this._characterEscapes = jsonFactory._characterEscapes;
        this._inputDecorator = jsonFactory._inputDecorator;
        this._outputDecorator = jsonFactory._outputDecorator;
        this._rootValueSeparator = jsonFactory._rootValueSeparator;
    }

    @Deprecated
    public JsonParser createJsonParser(byte[] bArr) throws IOException {
        return createParser(bArr);
    }

    public JsonParser createParser(URL url) throws IOException {
        IOContext iOContext_createContext = _createContext(url, true);
        InputStream inputStream_optimizedStreamFromURL = _optimizedStreamFromURL(url);
        InputDecorator inputDecorator = this._inputDecorator;
        if (inputDecorator != null) {
            inputStream_optimizedStreamFromURL = inputDecorator.decorate(iOContext_createContext, inputStream_optimizedStreamFromURL);
        }
        return _createParser(inputStream_optimizedStreamFromURL, iOContext_createContext);
    }

    @Deprecated
    public JsonParser createJsonParser(byte[] bArr, int i10, int i11) throws IOException {
        return createParser(bArr, i10, i11);
    }

    @Deprecated
    public JsonParser createJsonParser(String str) throws IOException {
        return createParser(str);
    }

    public JsonGenerator createGenerator(OutputStream outputStream) throws IOException {
        return createGenerator(outputStream, JsonEncoding.UTF8);
    }

    public JsonParser createParser(InputStream inputStream) throws IOException {
        IOContext iOContext_createContext = _createContext(inputStream, false);
        InputDecorator inputDecorator = this._inputDecorator;
        if (inputDecorator != null) {
            inputStream = inputDecorator.decorate(iOContext_createContext, inputStream);
        }
        return _createParser(inputStream, iOContext_createContext);
    }

    public JsonGenerator createGenerator(Writer writer) throws IOException {
        IOContext iOContext_createContext = _createContext(writer, false);
        OutputDecorator outputDecorator = this._outputDecorator;
        if (outputDecorator != null) {
            writer = outputDecorator.decorate(iOContext_createContext, writer);
        }
        return _createGenerator(writer, iOContext_createContext);
    }

    public JsonParser createParser(Reader reader) throws IOException {
        IOContext iOContext_createContext = _createContext(reader, false);
        InputDecorator inputDecorator = this._inputDecorator;
        if (inputDecorator != null) {
            reader = inputDecorator.decorate(iOContext_createContext, reader);
        }
        return _createParser(reader, iOContext_createContext);
    }

    public JsonGenerator createGenerator(File file, JsonEncoding jsonEncoding) throws IOException {
        OutputStream fileOutputStream = new FileOutputStream(file);
        IOContext iOContext_createContext = _createContext(fileOutputStream, true);
        iOContext_createContext.setEncoding(jsonEncoding);
        if (jsonEncoding == JsonEncoding.UTF8) {
            OutputDecorator outputDecorator = this._outputDecorator;
            if (outputDecorator != null) {
                fileOutputStream = outputDecorator.decorate(iOContext_createContext, fileOutputStream);
            }
            return _createUTF8Generator(fileOutputStream, iOContext_createContext);
        }
        Writer writer_createWriter = _createWriter(fileOutputStream, jsonEncoding, iOContext_createContext);
        OutputDecorator outputDecorator2 = this._outputDecorator;
        if (outputDecorator2 != null) {
            writer_createWriter = outputDecorator2.decorate(iOContext_createContext, writer_createWriter);
        }
        return _createGenerator(writer_createWriter, iOContext_createContext);
    }

    public JsonParser createParser(byte[] bArr) throws IOException {
        InputStream inputStreamDecorate;
        IOContext iOContext_createContext = _createContext(bArr, true);
        InputDecorator inputDecorator = this._inputDecorator;
        if (inputDecorator != null && (inputStreamDecorate = inputDecorator.decorate(iOContext_createContext, bArr, 0, bArr.length)) != null) {
            return _createParser(inputStreamDecorate, iOContext_createContext);
        }
        return _createParser(bArr, 0, bArr.length, iOContext_createContext);
    }

    public JsonParser createParser(byte[] bArr, int i10, int i11) throws IOException {
        InputStream inputStreamDecorate;
        IOContext iOContext_createContext = _createContext(bArr, true);
        InputDecorator inputDecorator = this._inputDecorator;
        if (inputDecorator != null && (inputStreamDecorate = inputDecorator.decorate(iOContext_createContext, bArr, i10, i11)) != null) {
            return _createParser(inputStreamDecorate, iOContext_createContext);
        }
        return _createParser(bArr, i10, i11, iOContext_createContext);
    }

    public JsonParser createParser(String str) throws IOException {
        Reader stringReader = new StringReader(str);
        IOContext iOContext_createContext = _createContext(stringReader, true);
        InputDecorator inputDecorator = this._inputDecorator;
        if (inputDecorator != null) {
            stringReader = inputDecorator.decorate(iOContext_createContext, stringReader);
        }
        return _createParser(stringReader, iOContext_createContext);
    }
}
