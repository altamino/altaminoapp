package kotlin.reflect;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import kotlin.jvm.internal.t;
import okhttp3.HttpUrl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class GenericArrayTypeImpl implements GenericArrayType, TypeImpl {

    @NotNull
    private final Type elementType;

    @Override // java.lang.reflect.GenericArrayType
    @NotNull
    public Type getGenericComponentType() {
        return this.elementType;
    }

    public GenericArrayTypeImpl(@NotNull Type elementType) {
        t.j(elementType, "elementType");
        this.elementType = elementType;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof GenericArrayType) && t.e(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
    }

    @Override // java.lang.reflect.Type, kotlin.reflect.TypeImpl
    @NotNull
    public String getTypeName() {
        return TypesJVMKt.typeToString(this.elementType) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }

    public int hashCode() {
        return getGenericComponentType().hashCode();
    }

    @NotNull
    public String toString() {
        return getTypeName();
    }
}
