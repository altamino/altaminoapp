package kotlinx.serialization.encoding;

import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.j1;
import kotlinx.serialization.j;
import kotlinx.serialization.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements Encoder, d {
    public boolean H(@NotNull SerialDescriptor descriptor, int i10) {
        t.j(descriptor, "descriptor");
        return true;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public d b(@NotNull SerialDescriptor descriptor) {
        t.j(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.d
    public void c(@NotNull SerialDescriptor descriptor) {
        t.j(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public Encoder h(@NotNull SerialDescriptor descriptor) {
        t.j(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void B() {
        throw new j("'null' is not supported by default");
    }

    @Override // kotlinx.serialization.encoding.d
    public final void C(@NotNull SerialDescriptor descriptor, int i10, float f) {
        t.j(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            m(f);
        }
    }

    @Override // kotlinx.serialization.encoding.d
    public <T> void F(@NotNull SerialDescriptor descriptor, int i10, @NotNull k<? super T> serializer, T t5) {
        t.j(descriptor, "descriptor");
        t.j(serializer, "serializer");
        if (H(descriptor, i10)) {
            e(serializer, t5);
        }
    }

    @Override // kotlinx.serialization.encoding.d
    public final void G(@NotNull SerialDescriptor descriptor, int i10, double d) {
        t.j(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            x(d);
        }
    }

    public void J(@NotNull Object value) {
        t.j(value, "value");
        throw new j("Non-serializable " + q0.b(value.getClass()) + " is not supported by " + q0.b(getClass()) + " encoder");
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void g(@NotNull SerialDescriptor enumDescriptor, int i10) {
        t.j(enumDescriptor, "enumDescriptor");
        J(Integer.valueOf(i10));
    }

    @Override // kotlinx.serialization.encoding.d
    public final void i(@NotNull SerialDescriptor descriptor, int i10, char c7) {
        t.j(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            D(c7);
        }
    }

    @Override // kotlinx.serialization.encoding.d
    public final void j(@NotNull SerialDescriptor descriptor, int i10, byte b7) {
        t.j(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            f(b7);
        }
    }

    @Override // kotlinx.serialization.encoding.d
    public final void n(@NotNull SerialDescriptor descriptor, int i10, int i11) {
        t.j(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            s(i11);
        }
    }

    @Override // kotlinx.serialization.encoding.d
    public final void o(@NotNull SerialDescriptor descriptor, int i10, boolean z6) {
        t.j(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            l(z6);
        }
    }

    @Override // kotlinx.serialization.encoding.d
    public final void p(@NotNull SerialDescriptor descriptor, int i10, @NotNull String value) {
        t.j(descriptor, "descriptor");
        t.j(value, "value");
        if (H(descriptor, i10)) {
            v(value);
        }
    }

    @Override // kotlinx.serialization.encoding.d
    public final void t(@NotNull SerialDescriptor descriptor, int i10, short s) {
        t.j(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            k(s);
        }
    }

    @Override // kotlinx.serialization.encoding.d
    public final void u(@NotNull SerialDescriptor descriptor, int i10, long j6) {
        t.j(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            A(j6);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void v(@NotNull String value) {
        t.j(value, "value");
        J(value);
    }

    @Override // kotlinx.serialization.encoding.d
    @NotNull
    public final Encoder w(@NotNull SerialDescriptor descriptor, int i10) {
        t.j(descriptor, "descriptor");
        return H(descriptor, i10) ? h(descriptor.d(i10)) : j1.INSTANCE;
    }

    @Override // kotlinx.serialization.encoding.d
    public <T> void y(@NotNull SerialDescriptor descriptor, int i10, @NotNull k<? super T> serializer, @Nullable T t5) {
        t.j(descriptor, "descriptor");
        t.j(serializer, "serializer");
        if (H(descriptor, i10)) {
            I(serializer, t5);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void A(long j6) {
        J(Long.valueOf(j6));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void D(char c7) {
        J(Character.valueOf(c7));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void E() {
        Encoder.a.b(this);
    }

    public <T> void I(@NotNull k<? super T> kVar, @Nullable T t5) {
        Encoder.a.c(this, kVar, t5);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public <T> void e(@NotNull k<? super T> kVar, T t5) {
        Encoder.a.d(this, kVar, t5);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void f(byte b7) {
        J(Byte.valueOf(b7));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void k(short s) {
        J(Short.valueOf(s));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void l(boolean z6) {
        J(Boolean.valueOf(z6));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void m(float f) {
        J(Float.valueOf(f));
    }

    @Override // kotlinx.serialization.encoding.d
    public boolean q(@NotNull SerialDescriptor serialDescriptor, int i10) {
        return d.a.a(this, serialDescriptor, i10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void s(int i10) {
        J(Integer.valueOf(i10));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void x(double d) {
        J(Double.valueOf(d));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public d z(@NotNull SerialDescriptor serialDescriptor, int i10) {
        return Encoder.a.a(this, serialDescriptor, i10);
    }
}
