package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;

/* JADX INFO: loaded from: classes8.dex */
public final class PropertyBasedCreator {
    protected final Object[] _defaultValues;
    protected final HashMap<String, SettableBeanProperty> _properties = new HashMap<>();
    protected final SettableBeanProperty[] _propertiesWithInjectables;
    protected final int _propertyCount;
    protected final ValueInstantiator _valueInstantiator;

    public static PropertyBasedCreator construct(DeserializationContext deserializationContext, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr) throws JsonMappingException {
        int length = settableBeanPropertyArr.length;
        SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[length];
        Object[] objArr = null;
        for (int i10 = 0; i10 < length; i10++) {
            SettableBeanProperty settableBeanPropertyWithValueDeserializer = settableBeanPropertyArr[i10];
            if (!settableBeanPropertyWithValueDeserializer.hasValueDeserializer()) {
                settableBeanPropertyWithValueDeserializer = settableBeanPropertyWithValueDeserializer.withValueDeserializer(deserializationContext.findContextualValueDeserializer(settableBeanPropertyWithValueDeserializer.getType(), settableBeanPropertyWithValueDeserializer));
            }
            settableBeanPropertyArr2[i10] = settableBeanPropertyWithValueDeserializer;
            JsonDeserializer<Object> valueDeserializer = settableBeanPropertyWithValueDeserializer.getValueDeserializer();
            Object nullValue = valueDeserializer == null ? null : valueDeserializer.getNullValue();
            if (nullValue == null && settableBeanPropertyWithValueDeserializer.getType().isPrimitive()) {
                nullValue = ClassUtil.defaultValue(settableBeanPropertyWithValueDeserializer.getType().getRawClass());
            }
            if (nullValue != null) {
                if (objArr == null) {
                    objArr = new Object[length];
                }
                objArr[i10] = nullValue;
            }
        }
        return new PropertyBasedCreator(valueInstantiator, settableBeanPropertyArr2, objArr);
    }

    public SettableBeanProperty findCreatorProperty(String str) {
        return this._properties.get(str);
    }

    public Object build(DeserializationContext deserializationContext, PropertyValueBuffer propertyValueBuffer) throws IOException {
        Object objHandleIdValue = propertyValueBuffer.handleIdValue(deserializationContext, this._valueInstantiator.createFromObjectWith(deserializationContext, propertyValueBuffer.getParameters(this._defaultValues)));
        for (PropertyValue propertyValueBuffered = propertyValueBuffer.buffered(); propertyValueBuffered != null; propertyValueBuffered = propertyValueBuffered.next) {
            propertyValueBuffered.assign(objHandleIdValue);
        }
        return objHandleIdValue;
    }

    public SettableBeanProperty findCreatorProperty(int i10) {
        for (SettableBeanProperty settableBeanProperty : this._properties.values()) {
            if (settableBeanProperty.getPropertyIndex() == i10) {
                return settableBeanProperty;
            }
        }
        return null;
    }

    public Collection<SettableBeanProperty> properties() {
        return this._properties.values();
    }

    public PropertyValueBuffer startBuilding(JsonParser jsonParser, DeserializationContext deserializationContext, ObjectIdReader objectIdReader) {
        PropertyValueBuffer propertyValueBuffer = new PropertyValueBuffer(jsonParser, deserializationContext, this._propertyCount, objectIdReader);
        SettableBeanProperty[] settableBeanPropertyArr = this._propertiesWithInjectables;
        if (settableBeanPropertyArr != null) {
            propertyValueBuffer.inject(settableBeanPropertyArr);
        }
        return propertyValueBuffer;
    }

    protected PropertyBasedCreator(ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr, Object[] objArr) {
        this._valueInstantiator = valueInstantiator;
        int length = settableBeanPropertyArr.length;
        this._propertyCount = length;
        SettableBeanProperty[] settableBeanPropertyArr2 = null;
        for (int i10 = 0; i10 < length; i10++) {
            SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i10];
            this._properties.put(settableBeanProperty.getName(), settableBeanProperty);
            if (settableBeanProperty.getInjectableValueId() != null) {
                settableBeanPropertyArr2 = settableBeanPropertyArr2 == null ? new SettableBeanProperty[length] : settableBeanPropertyArr2;
                settableBeanPropertyArr2[i10] = settableBeanProperty;
            }
        }
        this._defaultValues = objArr;
        this._propertiesWithInjectables = settableBeanPropertyArr2;
    }

    public void assignDeserializer(SettableBeanProperty settableBeanProperty, JsonDeserializer<Object> jsonDeserializer) {
        SettableBeanProperty settableBeanPropertyWithValueDeserializer = settableBeanProperty.withValueDeserializer(jsonDeserializer);
        this._properties.put(settableBeanPropertyWithValueDeserializer.getName(), settableBeanPropertyWithValueDeserializer);
    }
}
