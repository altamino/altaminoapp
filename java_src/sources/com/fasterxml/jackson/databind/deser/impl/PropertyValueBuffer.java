package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.SettableAnyProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public final class PropertyValueBuffer {
    private PropertyValue _buffered;
    protected final DeserializationContext _context;
    protected final Object[] _creatorParameters;
    private Object _idValue;
    protected final ObjectIdReader _objectIdReader;
    private int _paramsNeeded;
    protected final JsonParser _parser;

    protected PropertyValue buffered() {
        return this._buffered;
    }

    public void inject(SettableBeanProperty[] settableBeanPropertyArr) {
        int length = settableBeanPropertyArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i10];
            if (settableBeanProperty != null) {
                this._creatorParameters[i10] = this._context.findInjectableValue(settableBeanProperty.getInjectableValueId(), settableBeanProperty, null);
            }
        }
    }

    public boolean isComplete() {
        return this._paramsNeeded <= 0;
    }

    public boolean assignParameter(int i10, Object obj) {
        this._creatorParameters[i10] = obj;
        int i11 = this._paramsNeeded - 1;
        this._paramsNeeded = i11;
        return i11 <= 0;
    }

    public void bufferAnyProperty(SettableAnyProperty settableAnyProperty, String str, Object obj) {
        this._buffered = new PropertyValue.Any(this._buffered, obj, settableAnyProperty, str);
    }

    public void bufferMapProperty(Object obj, Object obj2) {
        this._buffered = new PropertyValue.Map(this._buffered, obj2, obj);
    }

    public void bufferProperty(SettableBeanProperty settableBeanProperty, Object obj) {
        this._buffered = new PropertyValue.Regular(this._buffered, obj, settableBeanProperty);
    }

    protected final Object[] getParameters(Object[] objArr) {
        Object obj;
        if (objArr != null) {
            int length = this._creatorParameters.length;
            for (int i10 = 0; i10 < length; i10++) {
                Object[] objArr2 = this._creatorParameters;
                if (objArr2[i10] == null && (obj = objArr[i10]) != null) {
                    objArr2[i10] = obj;
                }
            }
        }
        return this._creatorParameters;
    }

    public Object handleIdValue(DeserializationContext deserializationContext, Object obj) throws IOException {
        Object obj2;
        ObjectIdReader objectIdReader = this._objectIdReader;
        if (objectIdReader != null && (obj2 = this._idValue) != null) {
            deserializationContext.findObjectId(obj2, objectIdReader.generator).bindItem(obj);
            SettableBeanProperty settableBeanProperty = this._objectIdReader.idProperty;
            if (settableBeanProperty != null) {
                return settableBeanProperty.setAndReturn(obj, this._idValue);
            }
        }
        return obj;
    }

    public boolean readIdProperty(String str) throws IOException {
        ObjectIdReader objectIdReader = this._objectIdReader;
        if (objectIdReader == null || !str.equals(objectIdReader.propertyName.getSimpleName())) {
            return false;
        }
        this._idValue = this._objectIdReader.readObjectReference(this._parser, this._context);
        return true;
    }

    public PropertyValueBuffer(JsonParser jsonParser, DeserializationContext deserializationContext, int i10, ObjectIdReader objectIdReader) {
        this._parser = jsonParser;
        this._context = deserializationContext;
        this._paramsNeeded = i10;
        this._objectIdReader = objectIdReader;
        this._creatorParameters = new Object[i10];
    }
}
