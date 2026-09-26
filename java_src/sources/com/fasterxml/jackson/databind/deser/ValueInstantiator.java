package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ValueInstantiator {
    public boolean canCreateFromBoolean() {
        return false;
    }

    public boolean canCreateFromDouble() {
        return false;
    }

    public boolean canCreateFromInt() {
        return false;
    }

    public boolean canCreateFromLong() {
        return false;
    }

    public boolean canCreateFromObjectWith() {
        return false;
    }

    public boolean canCreateFromString() {
        return false;
    }

    public boolean canCreateUsingDelegate() {
        return false;
    }

    public AnnotatedWithParams getDefaultCreator() {
        return null;
    }

    public AnnotatedWithParams getDelegateCreator() {
        return null;
    }

    public JavaType getDelegateType(DeserializationConfig deserializationConfig) {
        return null;
    }

    public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig deserializationConfig) {
        return null;
    }

    public AnnotatedParameter getIncompleteParameter() {
        return null;
    }

    public abstract String getValueTypeDesc();

    public AnnotatedWithParams getWithArgsCreator() {
        return null;
    }

    public Object createFromBoolean(DeserializationContext deserializationContext, boolean z6) throws IOException {
        throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from Boolean value (" + z6 + ")");
    }

    public Object createFromDouble(DeserializationContext deserializationContext, double d) throws IOException {
        throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from Floating-point number (" + d + ", double)");
    }

    public Object createFromInt(DeserializationContext deserializationContext, int i10) throws IOException {
        throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from Integer number (" + i10 + ", int)");
    }

    public Object createFromLong(DeserializationContext deserializationContext, long j6) throws IOException {
        throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from Integer number (" + j6 + ", long)");
    }

    public Object createFromObjectWith(DeserializationContext deserializationContext, Object[] objArr) throws IOException {
        throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " with arguments");
    }

    public Object createFromString(DeserializationContext deserializationContext, String str) throws IOException {
        throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from String value '" + str + "'");
    }

    public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
        throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + "; no default creator found");
    }

    public Object createUsingDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
        throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " using delegate");
    }

    public boolean canCreateUsingDefault() {
        if (getDefaultCreator() != null) {
            return true;
        }
        return false;
    }

    public boolean canInstantiate() {
        if (!canCreateUsingDefault() && !canCreateUsingDelegate() && !canCreateFromObjectWith() && !canCreateFromString() && !canCreateFromInt() && !canCreateFromLong() && !canCreateFromDouble() && !canCreateFromBoolean()) {
            return false;
        }
        return true;
    }
}
