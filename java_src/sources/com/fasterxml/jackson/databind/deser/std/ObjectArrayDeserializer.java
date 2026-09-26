package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.io.IOException;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes7.dex */
@JacksonStdImpl
public class ObjectArrayDeserializer extends ContainerDeserializerBase<Object[]> implements ContextualDeserializer {
    private static final long serialVersionUID = 1;
    protected final ArrayType _arrayType;
    protected final Class<?> _elementClass;
    protected JsonDeserializer<Object> _elementDeserializer;
    protected final TypeDeserializer _elementTypeDeserializer;
    protected final boolean _untyped;

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JsonDeserializer<Object> getContentDeserializer() {
        return this._elementDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<?> jsonDeserializerFindConvertingContentDeserializer = findConvertingContentDeserializer(deserializationContext, beanProperty, this._elementDeserializer);
        JsonDeserializer<?> jsonDeserializerFindContextualValueDeserializer = jsonDeserializerFindConvertingContentDeserializer == null ? deserializationContext.findContextualValueDeserializer(this._arrayType.getContentType(), beanProperty) : deserializationContext.handleSecondaryContextualization(jsonDeserializerFindConvertingContentDeserializer, beanProperty);
        TypeDeserializer typeDeserializerForProperty = this._elementTypeDeserializer;
        if (typeDeserializerForProperty != null) {
            typeDeserializerForProperty = typeDeserializerForProperty.forProperty(beanProperty);
        }
        return withDeserializer(typeDeserializerForProperty, jsonDeserializerFindContextualValueDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object objDeserialize;
        if (!jsonParser.isExpectedStartArrayToken()) {
            return handleNonArray(jsonParser, deserializationContext);
        }
        ObjectBuffer objectBufferLeaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] objArrResetAndStart = objectBufferLeaseObjectBuffer.resetAndStart();
        TypeDeserializer typeDeserializer = this._elementTypeDeserializer;
        int i10 = 0;
        while (true) {
            JsonToken jsonTokenNextToken = jsonParser.nextToken();
            if (jsonTokenNextToken == JsonToken.END_ARRAY) {
                break;
            }
            if (jsonTokenNextToken == JsonToken.VALUE_NULL) {
                objDeserialize = this._elementDeserializer.getNullValue();
            } else {
                objDeserialize = typeDeserializer == null ? this._elementDeserializer.deserialize(jsonParser, deserializationContext) : this._elementDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
            }
            if (i10 >= objArrResetAndStart.length) {
                objArrResetAndStart = objectBufferLeaseObjectBuffer.appendCompletedChunk(objArrResetAndStart);
                i10 = 0;
            }
            objArrResetAndStart[i10] = objDeserialize;
            i10++;
        }
        Object[] objArrCompleteAndClearBuffer = this._untyped ? objectBufferLeaseObjectBuffer.completeAndClearBuffer(objArrResetAndStart, i10) : objectBufferLeaseObjectBuffer.completeAndClearBuffer(objArrResetAndStart, i10, this._elementClass);
        deserializationContext.returnObjectBuffer(objectBufferLeaseObjectBuffer);
        return objArrCompleteAndClearBuffer;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object[] deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return (Object[]) typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JavaType getContentType() {
        return this._arrayType.getContentType();
    }

    public ObjectArrayDeserializer withDeserializer(TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) {
        return (jsonDeserializer == this._elementDeserializer && typeDeserializer == this._elementTypeDeserializer) ? this : new ObjectArrayDeserializer(this._arrayType, jsonDeserializer, typeDeserializer);
    }

    public ObjectArrayDeserializer(ArrayType arrayType, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer) {
        boolean z6;
        super(arrayType);
        this._arrayType = arrayType;
        Class<?> rawClass = arrayType.getContentType().getRawClass();
        this._elementClass = rawClass;
        if (rawClass == Object.class) {
            z6 = true;
        } else {
            z6 = false;
        }
        this._untyped = z6;
        this._elementDeserializer = jsonDeserializer;
        this._elementTypeDeserializer = typeDeserializer;
    }

    private final Object[] handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object objDeserializeWithType;
        Object[] objArr;
        JsonToken currentToken = jsonParser.getCurrentToken();
        JsonToken jsonToken = JsonToken.VALUE_STRING;
        if (currentToken == jsonToken && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
            return null;
        }
        if (!deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
            if (jsonParser.getCurrentToken() == jsonToken && this._elementClass == Byte.class) {
                return deserializeFromBase64(jsonParser, deserializationContext);
            }
            throw deserializationContext.mappingException(this._arrayType.getRawClass());
        }
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
            objDeserializeWithType = this._elementDeserializer.getNullValue();
        } else {
            TypeDeserializer typeDeserializer = this._elementTypeDeserializer;
            if (typeDeserializer == null) {
                objDeserializeWithType = this._elementDeserializer.deserialize(jsonParser, deserializationContext);
            } else {
                objDeserializeWithType = this._elementDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
            }
        }
        if (this._untyped) {
            objArr = new Object[1];
        } else {
            objArr = (Object[]) Array.newInstance(this._elementClass, 1);
        }
        objArr[0] = objDeserializeWithType;
        return objArr;
    }

    protected Byte[] deserializeFromBase64(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        byte[] binaryValue = jsonParser.getBinaryValue(deserializationContext.getBase64Variant());
        Byte[] bArr = new Byte[binaryValue.length];
        int length = binaryValue.length;
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = Byte.valueOf(binaryValue[i10]);
        }
        return bArr;
    }
}
