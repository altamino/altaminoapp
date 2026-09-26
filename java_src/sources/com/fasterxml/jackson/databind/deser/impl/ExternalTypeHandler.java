package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class ExternalTypeHandler {
    private final HashMap<String, Integer> _nameToPropertyIndex;
    private final ExtTypedProperty[] _properties;
    private final TokenBuffer[] _tokens;
    private final String[] _typeIds;

    public static class Builder {
        private final ArrayList<ExtTypedProperty> _properties = new ArrayList<>();
        private final HashMap<String, Integer> _nameToPropertyIndex = new HashMap<>();

        public void addExternal(SettableBeanProperty settableBeanProperty, TypeDeserializer typeDeserializer) {
            Integer numValueOf = Integer.valueOf(this._properties.size());
            this._properties.add(new ExtTypedProperty(settableBeanProperty, typeDeserializer));
            this._nameToPropertyIndex.put(settableBeanProperty.getName(), numValueOf);
            this._nameToPropertyIndex.put(typeDeserializer.getPropertyName(), numValueOf);
        }

        public ExternalTypeHandler build() {
            ArrayList<ExtTypedProperty> arrayList = this._properties;
            return new ExternalTypeHandler((ExtTypedProperty[]) arrayList.toArray(new ExtTypedProperty[arrayList.size()]), this._nameToPropertyIndex, null, null);
        }
    }

    private static final class ExtTypedProperty {
        private final SettableBeanProperty _property;
        private final TypeDeserializer _typeDeserializer;
        private final String _typePropertyName;

        public SettableBeanProperty getProperty() {
            return this._property;
        }

        public String getTypePropertyName() {
            return this._typePropertyName;
        }

        public String getDefaultTypeId() {
            Class<?> defaultImpl = this._typeDeserializer.getDefaultImpl();
            if (defaultImpl == null) {
                return null;
            }
            return this._typeDeserializer.getTypeIdResolver().idFromValueAndType(null, defaultImpl);
        }

        public boolean hasDefaultType() {
            return this._typeDeserializer.getDefaultImpl() != null;
        }

        public boolean hasTypePropertyName(String str) {
            return str.equals(this._typePropertyName);
        }

        public ExtTypedProperty(SettableBeanProperty settableBeanProperty, TypeDeserializer typeDeserializer) {
            this._property = settableBeanProperty;
            this._typeDeserializer = typeDeserializer;
            this._typePropertyName = typeDeserializer.getPropertyName();
        }
    }

    protected ExternalTypeHandler(ExtTypedProperty[] extTypedPropertyArr, HashMap<String, Integer> map, String[] strArr, TokenBuffer[] tokenBufferArr) {
        this._properties = extTypedPropertyArr;
        this._nameToPropertyIndex = map;
        this._typeIds = strArr;
        this._tokens = tokenBufferArr;
    }

    public Object complete(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        int length = this._properties.length;
        for (int i10 = 0; i10 < length; i10++) {
            String defaultTypeId = this._typeIds[i10];
            if (defaultTypeId == null) {
                TokenBuffer tokenBuffer = this._tokens[i10];
                if (tokenBuffer != null) {
                    JsonToken jsonTokenFirstToken = tokenBuffer.firstToken();
                    if (jsonTokenFirstToken != null && jsonTokenFirstToken.isScalarValue()) {
                        JsonParser jsonParserAsParser = tokenBuffer.asParser(jsonParser);
                        jsonParserAsParser.nextToken();
                        SettableBeanProperty property = this._properties[i10].getProperty();
                        Object objDeserializeIfNatural = TypeDeserializer.deserializeIfNatural(jsonParserAsParser, deserializationContext, property.getType());
                        if (objDeserializeIfNatural != null) {
                            property.set(obj, objDeserializeIfNatural);
                        } else {
                            if (!this._properties[i10].hasDefaultType()) {
                                throw deserializationContext.mappingException("Missing external type id property '" + this._properties[i10].getTypePropertyName() + "'");
                            }
                            defaultTypeId = this._properties[i10].getDefaultTypeId();
                        }
                    }
                } else {
                    continue;
                }
            } else if (this._tokens[i10] == null) {
                throw deserializationContext.mappingException("Missing property '" + this._properties[i10].getProperty().getName() + "' for external type id '" + this._properties[i10].getTypePropertyName());
            }
            _deserializeAndSet(jsonParser, deserializationContext, obj, i10, defaultTypeId);
        }
        return obj;
    }

    protected ExternalTypeHandler(ExternalTypeHandler externalTypeHandler) {
        ExtTypedProperty[] extTypedPropertyArr = externalTypeHandler._properties;
        this._properties = extTypedPropertyArr;
        this._nameToPropertyIndex = externalTypeHandler._nameToPropertyIndex;
        int length = extTypedPropertyArr.length;
        this._typeIds = new String[length];
        this._tokens = new TokenBuffer[length];
    }

    protected final Object _deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, int i10, String str) throws IOException {
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser);
        tokenBuffer.writeStartArray();
        tokenBuffer.writeString(str);
        JsonParser jsonParserAsParser = this._tokens[i10].asParser(jsonParser);
        jsonParserAsParser.nextToken();
        tokenBuffer.copyCurrentStructure(jsonParserAsParser);
        tokenBuffer.writeEndArray();
        JsonParser jsonParserAsParser2 = tokenBuffer.asParser(jsonParser);
        jsonParserAsParser2.nextToken();
        return this._properties[i10].getProperty().deserialize(jsonParserAsParser2, deserializationContext);
    }

    protected final void _deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, int i10, String str) throws IOException {
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser);
        tokenBuffer.writeStartArray();
        tokenBuffer.writeString(str);
        JsonParser jsonParserAsParser = this._tokens[i10].asParser(jsonParser);
        jsonParserAsParser.nextToken();
        tokenBuffer.copyCurrentStructure(jsonParserAsParser);
        tokenBuffer.writeEndArray();
        JsonParser jsonParserAsParser2 = tokenBuffer.asParser(jsonParser);
        jsonParserAsParser2.nextToken();
        this._properties[i10].getProperty().deserializeAndSet(jsonParserAsParser2, deserializationContext, obj);
    }

    public boolean handlePropertyValue(JsonParser jsonParser, DeserializationContext deserializationContext, String str, Object obj) throws IOException {
        Integer num = this._nameToPropertyIndex.get(str);
        if (num == null) {
            return false;
        }
        int iIntValue = num.intValue();
        if (this._properties[iIntValue].hasTypePropertyName(str)) {
            this._typeIds[iIntValue] = jsonParser.getText();
            jsonParser.skipChildren();
            if (obj == null || this._tokens[iIntValue] == null) {
                return true;
            }
        } else {
            TokenBuffer tokenBuffer = new TokenBuffer(jsonParser);
            tokenBuffer.copyCurrentStructure(jsonParser);
            this._tokens[iIntValue] = tokenBuffer;
            if (obj == null || this._typeIds[iIntValue] == null) {
                return true;
            }
        }
        String[] strArr = this._typeIds;
        String str2 = strArr[iIntValue];
        strArr[iIntValue] = null;
        _deserializeAndSet(jsonParser, deserializationContext, obj, iIntValue, str2);
        this._tokens[iIntValue] = null;
        return true;
    }

    public boolean handleTypePropertyValue(JsonParser jsonParser, DeserializationContext deserializationContext, String str, Object obj) throws IOException {
        Integer num = this._nameToPropertyIndex.get(str);
        if (num == null) {
            return false;
        }
        int iIntValue = num.intValue();
        if (!this._properties[iIntValue].hasTypePropertyName(str)) {
            return false;
        }
        String text = jsonParser.getText();
        if (obj == null || this._tokens[iIntValue] == null) {
            this._typeIds[iIntValue] = text;
            return true;
        }
        _deserializeAndSet(jsonParser, deserializationContext, obj, iIntValue, text);
        this._tokens[iIntValue] = null;
        return true;
    }

    public ExternalTypeHandler start() {
        return new ExternalTypeHandler(this);
    }

    public Object complete(JsonParser jsonParser, DeserializationContext deserializationContext, PropertyValueBuffer propertyValueBuffer, PropertyBasedCreator propertyBasedCreator) throws IOException {
        int length = this._properties.length;
        Object[] objArr = new Object[length];
        for (int i10 = 0; i10 < length; i10++) {
            String defaultTypeId = this._typeIds[i10];
            if (defaultTypeId == null) {
                if (this._tokens[i10] == null) {
                    continue;
                } else {
                    if (!this._properties[i10].hasDefaultType()) {
                        throw deserializationContext.mappingException("Missing external type id property '" + this._properties[i10].getTypePropertyName() + "'");
                    }
                    defaultTypeId = this._properties[i10].getDefaultTypeId();
                }
            } else if (this._tokens[i10] == null) {
                throw deserializationContext.mappingException("Missing property '" + this._properties[i10].getProperty().getName() + "' for external type id '" + this._properties[i10].getTypePropertyName());
            }
            objArr[i10] = _deserialize(jsonParser, deserializationContext, i10, defaultTypeId);
        }
        for (int i11 = 0; i11 < length; i11++) {
            SettableBeanProperty property = this._properties[i11].getProperty();
            if (propertyBasedCreator.findCreatorProperty(property.getName()) != null) {
                propertyValueBuffer.assignParameter(property.getCreatorIndex(), objArr[i11]);
            }
        }
        Object objBuild = propertyBasedCreator.build(deserializationContext, propertyValueBuffer);
        for (int i12 = 0; i12 < length; i12++) {
            SettableBeanProperty property2 = this._properties[i12].getProperty();
            if (propertyBasedCreator.findCreatorProperty(property2.getName()) == null) {
                property2.set(objBuild, objArr[i12]);
            }
        }
        return objBuild;
    }
}
