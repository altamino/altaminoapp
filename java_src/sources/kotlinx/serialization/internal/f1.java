package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public abstract class f1 implements SerialDescriptor {
    private final int elementsCount;

    @NotNull
    private final SerialDescriptor keyDescriptor;

    @NotNull
    private final String serialName;

    @NotNull
    private final SerialDescriptor valueDescriptor;

    public /* synthetic */ f1(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2, kotlin.jvm.internal.k kVar) {
        this(str, serialDescriptor, serialDescriptor2);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int e() {
        return this.elementsCount;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f1)) {
            return false;
        }
        f1 f1Var = (f1) obj;
        return kotlin.jvm.internal.t.e(h(), f1Var.h()) && kotlin.jvm.internal.t.e(this.keyDescriptor, f1Var.keyDescriptor) && kotlin.jvm.internal.t.e(this.valueDescriptor, f1Var.valueDescriptor);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return this.serialName;
    }

    private f1(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2) {
        this.serialName = str;
        this.keyDescriptor = serialDescriptor;
        this.valueDescriptor = serialDescriptor2;
        this.elementsCount = 2;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int c(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        Integer numM = kotlin.text.s.m(name);
        if (numM != null) {
            return numM.intValue();
        }
        throw new IllegalArgumentException(name + " is not a valid map index");
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        if (i10 >= 0) {
            int i11 = i10 % 2;
            if (i11 == 0) {
                return this.keyDescriptor;
            }
            if (i11 == 1) {
                return this.valueDescriptor;
            }
            throw new IllegalStateException("Unreached".toString());
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + h() + " expects only non-negative indices").toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> g(int i10) {
        if (i10 >= 0) {
            return kotlin.collections.v.m();
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + h() + " expects only non-negative indices").toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public kotlinx.serialization.descriptors.i getKind() {
        return kotlinx.serialization.descriptors.j.c.INSTANCE;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean i(int i10) {
        if (i10 >= 0) {
            return false;
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + h() + " expects only non-negative indices").toString());
    }

    @NotNull
    public String toString() {
        return h() + '(' + this.keyDescriptor + ", " + this.valueDescriptor + ')';
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean b() {
        return SerialDescriptor.a.c(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String f(int i10) {
        return String.valueOf(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getAnnotations() {
        return SerialDescriptor.a.a(this);
    }

    public int hashCode() {
        return (((h().hashCode() * 31) + this.keyDescriptor.hashCode()) * 31) + this.valueDescriptor.hashCode();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return SerialDescriptor.a.b(this);
    }
}
