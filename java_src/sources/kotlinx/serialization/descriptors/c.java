package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class c implements SerialDescriptor {

    @NotNull
    public final KClass<?> kClass;

    @NotNull
    private final SerialDescriptor original;

    @NotNull
    private final String serialName;

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean b() {
        return this.original.b();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int c(@NotNull String name) {
        t.j(name, "name");
        return this.original.c(name);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        return this.original.d(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int e() {
        return this.original.e();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String f(int i10) {
        return this.original.f(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> g(int i10) {
        return this.original.g(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getAnnotations() {
        return this.original.getAnnotations();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public i getKind() {
        return this.original.getKind();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return this.serialName;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean i(int i10) {
        return this.original.i(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return this.original.isInline();
    }

    public c(@NotNull SerialDescriptor original, @NotNull KClass<?> kClass) {
        t.j(original, "original");
        t.j(kClass, "kClass");
        this.original = original;
        this.kClass = kClass;
        this.serialName = original.h() + '<' + kClass.getSimpleName() + '>';
    }

    public boolean equals(@Nullable Object obj) {
        c cVar = obj instanceof c ? (c) obj : null;
        return cVar != null && t.e(this.original, cVar.original) && t.e(cVar.kClass, this.kClass);
    }

    public int hashCode() {
        return (this.kClass.hashCode() * 31) + h().hashCode();
    }

    @NotNull
    public String toString() {
        return "ContextDescriptor(kClass: " + this.kClass + ", original: " + this.original + ')';
    }
}
