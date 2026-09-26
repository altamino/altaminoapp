package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Set;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class a2 implements SerialDescriptor, n {

    @NotNull
    private final SerialDescriptor original;

    @NotNull
    private final String serialName;

    @NotNull
    private final Set<String> serialNames;

    @Override // kotlinx.serialization.internal.n
    @NotNull
    public Set<String> a() {
        return this.serialNames;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean b() {
        return true;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int c(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
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

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a2) && kotlin.jvm.internal.t.e(this.original, ((a2) obj).original);
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
    public kotlinx.serialization.descriptors.i getKind() {
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

    @NotNull
    public final SerialDescriptor j() {
        return this.original;
    }

    public a2(@NotNull SerialDescriptor original) {
        kotlin.jvm.internal.t.j(original, "original");
        this.original = original;
        this.serialName = original.h() + '?';
        this.serialNames = q1.a(original);
    }

    public int hashCode() {
        return this.original.hashCode() * 31;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.original);
        sb.append('?');
        return sb.toString();
    }
}
