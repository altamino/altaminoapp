package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.deser.SettableAnyProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PropertyValue {
    public final PropertyValue next;
    public final Object value;

    static final class Any extends PropertyValue {
        final SettableAnyProperty _property;
        final String _propertyName;

        @Override // com.fasterxml.jackson.databind.deser.impl.PropertyValue
        public void assign(Object obj) throws IOException {
            this._property.set(obj, this._propertyName, this.value);
        }

        public Any(PropertyValue propertyValue, Object obj, SettableAnyProperty settableAnyProperty, String str) {
            super(propertyValue, obj);
            this._property = settableAnyProperty;
            this._propertyName = str;
        }
    }

    static final class Map extends PropertyValue {
        final Object _key;

        @Override // com.fasterxml.jackson.databind.deser.impl.PropertyValue
        public void assign(Object obj) throws IOException {
            ((java.util.Map) obj).put(this._key, this.value);
        }

        public Map(PropertyValue propertyValue, Object obj, Object obj2) {
            super(propertyValue, obj);
            this._key = obj2;
        }
    }

    static final class Regular extends PropertyValue {
        final SettableBeanProperty _property;

        @Override // com.fasterxml.jackson.databind.deser.impl.PropertyValue
        public void assign(Object obj) throws IOException {
            this._property.set(obj, this.value);
        }

        public Regular(PropertyValue propertyValue, Object obj, SettableBeanProperty settableBeanProperty) {
            super(propertyValue, obj);
            this._property = settableBeanProperty;
        }
    }

    public abstract void assign(Object obj) throws IOException;

    protected PropertyValue(PropertyValue propertyValue, Object obj) {
        this.next = propertyValue;
        this.value = obj;
    }
}
