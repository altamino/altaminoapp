package kotlin.jvm.internal;

import kotlin.jvm.JvmClassMappingKt;
import kotlin.reflect.KClass;

/* compiled from: ClassReference.kt */
/* loaded from: classes4.dex */
public final class ClassReference implements KClass<Object>, ClassBasedDeclarationContainer {
    private final Class<?> jClass;

    public ClassReference(Class<?> jClass) {
        Intrinsics.checkParameterIsNotNull(jClass, "jClass");
        this.jClass = jClass;
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    public Class<?> getJClass() {
        return this.jClass;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ClassReference) && Intrinsics.areEqual(JvmClassMappingKt.getJavaObjectType(this), JvmClassMappingKt.getJavaObjectType((KClass) obj));
    }

    public int hashCode() {
        return JvmClassMappingKt.getJavaObjectType(this).hashCode();
    }

    public String toString() {
        return getJClass().toString() + " (Kotlin reflection is not available)";
    }
}
