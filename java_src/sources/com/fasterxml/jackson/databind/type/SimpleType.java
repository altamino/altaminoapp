package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.util.Collection;
import java.util.Map;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes7.dex */
public final class SimpleType extends TypeBase {
    private static final long serialVersionUID = -800374828948534376L;
    protected final String[] _typeNames;
    protected final JavaType[] _typeParameters;

    protected SimpleType(Class<?> cls) {
        this(cls, null, null, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != SimpleType.class) {
            return false;
        }
        SimpleType simpleType = (SimpleType) obj;
        if (simpleType._class != this._class) {
            return false;
        }
        JavaType[] javaTypeArr = this._typeParameters;
        JavaType[] javaTypeArr2 = simpleType._typeParameters;
        if (javaTypeArr == null) {
            return javaTypeArr2 == null || javaTypeArr2.length == 0;
        }
        if (javaTypeArr2 == null || javaTypeArr.length != javaTypeArr2.length) {
            return false;
        }
        int length = javaTypeArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!javaTypeArr[i10].equals(javaTypeArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    public boolean isContainerType() {
        return false;
    }

    protected SimpleType(Class<?> cls, String[] strArr, JavaType[] javaTypeArr, Object obj, Object obj2, boolean z6) {
        super(cls, 0, obj, obj2, z6);
        if (strArr == null || strArr.length == 0) {
            this._typeNames = null;
            this._typeParameters = null;
        } else {
            this._typeNames = strArr;
            this._typeParameters = javaTypeArr;
        }
    }

    public static SimpleType construct(Class<?> cls) {
        if (Map.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Can not construct SimpleType for a Map (class: " + cls.getName() + ")");
        }
        if (Collection.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Can not construct SimpleType for a Collection (class: " + cls.getName() + ")");
        }
        if (!cls.isArray()) {
            return new SimpleType(cls);
        }
        throw new IllegalArgumentException("Can not construct SimpleType for an array (class: " + cls.getName() + ")");
    }

    public static SimpleType constructUnsafe(Class<?> cls) {
        return new SimpleType(cls, null, null, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    protected JavaType _narrow(Class<?> cls) {
        return new SimpleType(cls, this._typeNames, this._typeParameters, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    protected String buildCanonicalName() {
        StringBuilder sb = new StringBuilder();
        sb.append(this._class.getName());
        JavaType[] javaTypeArr = this._typeParameters;
        if (javaTypeArr != null && javaTypeArr.length > 0) {
            sb.append('<');
            boolean z6 = true;
            for (JavaType javaType : this._typeParameters) {
                if (z6) {
                    z6 = false;
                } else {
                    sb.append(b.COMMA);
                }
                sb.append(javaType.toCanonical());
            }
            sb.append('>');
        }
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    public JavaType containedType(int i10) {
        JavaType[] javaTypeArr;
        if (i10 < 0 || (javaTypeArr = this._typeParameters) == null || i10 >= javaTypeArr.length) {
            return null;
        }
        return javaTypeArr[i10];
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    public int containedTypeCount() {
        JavaType[] javaTypeArr = this._typeParameters;
        if (javaTypeArr == null) {
            return 0;
        }
        return javaTypeArr.length;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    public String containedTypeName(int i10) {
        String[] strArr;
        if (i10 < 0 || (strArr = this._typeNames) == null || i10 >= strArr.length) {
            return null;
        }
        return strArr[i10];
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getErasedSignature(StringBuilder sb) {
        return TypeBase._classSignature(this._class, sb, true);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        TypeBase._classSignature(this._class, sb, false);
        if (this._typeParameters != null) {
            sb.append('<');
            for (JavaType javaType : this._typeParameters) {
                sb = javaType.getGenericSignature(sb);
            }
            sb.append('>');
        }
        sb.append(';');
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType narrowContentsBy(Class<?> cls) {
        throw new IllegalArgumentException("Internal error: SimpleType.narrowContentsBy() should never be called");
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("[simple type, class ");
        sb.append(buildCanonicalName());
        sb.append(b.END_LIST);
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType widenContentsBy(Class<?> cls) {
        throw new IllegalArgumentException("Internal error: SimpleType.widenContentsBy() should never be called");
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentTypeHandler(Object obj) {
        throw new IllegalArgumentException("Simple types have no content types; can not call withContenTypeHandler()");
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public SimpleType withContentValueHandler(Object obj) {
        throw new IllegalArgumentException("Simple types have no content types; can not call withContenValueHandler()");
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public SimpleType withStaticTyping() {
        boolean z6 = this._asStatic;
        return z6 ? this : new SimpleType(this._class, this._typeNames, this._typeParameters, this._valueHandler, this._typeHandler, z6);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public SimpleType withTypeHandler(Object obj) {
        return new SimpleType(this._class, this._typeNames, this._typeParameters, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public SimpleType withValueHandler(Object obj) {
        return obj == this._valueHandler ? this : new SimpleType(this._class, this._typeNames, this._typeParameters, obj, this._typeHandler, this._asStatic);
    }
}
