package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.type.ResolvedType;
import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public abstract class JavaType extends ResolvedType implements Serializable, Type {
    private static final long serialVersionUID = 6774285981275451126L;
    protected final boolean _asStatic;
    protected final Class<?> _class;
    protected final int _hashCode;
    protected final Object _typeHandler;
    protected final Object _valueHandler;

    protected abstract JavaType _narrow(Class<?> cls);

    public JavaType containedType(int i) {
        return null;
    }

    public int containedTypeCount() {
        return 0;
    }

    public String containedTypeName(int i) {
        return null;
    }

    public abstract boolean equals(Object obj);

    public JavaType getContentType() {
        return null;
    }

    public JavaType getKeyType() {
        return null;
    }

    public boolean isArrayType() {
        return false;
    }

    public boolean isCollectionLikeType() {
        return false;
    }

    public abstract boolean isContainerType();

    public boolean isMapLikeType() {
        return false;
    }

    public abstract JavaType narrowContentsBy(Class<?> cls);

    public abstract String toString();

    public abstract JavaType widenContentsBy(Class<?> cls);

    public abstract JavaType withContentTypeHandler(Object obj);

    public abstract JavaType withContentValueHandler(Object obj);

    public abstract JavaType withTypeHandler(Object obj);

    public abstract JavaType withValueHandler(Object obj);

    protected JavaType(Class<?> cls, int i, Object obj, Object obj2, boolean z) {
        this._class = cls;
        this._hashCode = cls.getName().hashCode() + i;
        this._valueHandler = obj;
        this._typeHandler = obj2;
        this._asStatic = z;
    }

    public JavaType narrowBy(Class<?> cls) {
        Class<?> cls2 = this._class;
        if (cls == cls2) {
            return this;
        }
        _assertSubclass(cls, cls2);
        JavaType javaType_narrow = _narrow(cls);
        if (this._valueHandler != javaType_narrow.getValueHandler()) {
            javaType_narrow = javaType_narrow.withValueHandler(this._valueHandler);
        }
        return this._typeHandler != javaType_narrow.getTypeHandler() ? javaType_narrow.withTypeHandler(this._typeHandler) : javaType_narrow;
    }

    public JavaType forcedNarrowBy(Class<?> cls) {
        if (cls == this._class) {
            return this;
        }
        JavaType javaType_narrow = _narrow(cls);
        if (this._valueHandler != javaType_narrow.getValueHandler()) {
            javaType_narrow = javaType_narrow.withValueHandler(this._valueHandler);
        }
        return this._typeHandler != javaType_narrow.getTypeHandler() ? javaType_narrow.withTypeHandler(this._typeHandler) : javaType_narrow;
    }

    public JavaType widenBy(Class<?> cls) {
        Class<?> cls2 = this._class;
        if (cls == cls2) {
            return this;
        }
        _assertSubclass(cls2, cls);
        return _widen(cls);
    }

    protected JavaType _widen(Class<?> cls) {
        return _narrow(cls);
    }

    public final Class<?> getRawClass() {
        return this._class;
    }

    public final boolean hasRawClass(Class<?> cls) {
        return this._class == cls;
    }

    public boolean isAbstract() {
        return Modifier.isAbstract(this._class.getModifiers());
    }

    public boolean isConcrete() {
        return (this._class.getModifiers() & 1536) == 0 || this._class.isPrimitive();
    }

    public boolean isThrowable() {
        return Throwable.class.isAssignableFrom(this._class);
    }

    public final boolean isEnumType() {
        return this._class.isEnum();
    }

    public final boolean isInterface() {
        return this._class.isInterface();
    }

    public final boolean isPrimitive() {
        return this._class.isPrimitive();
    }

    public final boolean isFinal() {
        return Modifier.isFinal(this._class.getModifiers());
    }

    public final boolean useStaticType() {
        return this._asStatic;
    }

    public boolean hasGenericTypes() {
        return containedTypeCount() > 0;
    }

    public <T> T getValueHandler() {
        return (T) this._valueHandler;
    }

    public <T> T getTypeHandler() {
        return (T) this._typeHandler;
    }

    protected void _assertSubclass(Class<?> cls, Class<?> cls2) {
        if (this._class.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Class " + cls.getName() + " is not assignable to " + this._class.getName());
    }

    public final int hashCode() {
        return this._hashCode;
    }
}
