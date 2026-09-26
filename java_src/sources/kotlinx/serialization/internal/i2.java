package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public abstract class i2<Tag> implements Encoder, kotlinx.serialization.encoding.d {

    @NotNull
    private final ArrayList<Tag> tagStack = new ArrayList<>();

    protected void S(Tag tag) {
    }

    protected void X(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
    }

    protected abstract Tag a0(@NotNull SerialDescriptor serialDescriptor, int i10);

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public kotlinx.serialization.encoding.d b(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.d
    public final void C(@NotNull SerialDescriptor descriptor, int i10, float f) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        O(a0(descriptor, i10), f);
    }

    @Override // kotlinx.serialization.encoding.d
    public <T> void F(@NotNull SerialDescriptor descriptor, int i10, @NotNull kotlinx.serialization.k<? super T> serializer, T t5) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        kotlin.jvm.internal.t.j(serializer, "serializer");
        if (H(descriptor, i10)) {
            e(serializer, t5);
        }
    }

    @Override // kotlinx.serialization.encoding.d
    public final void G(@NotNull SerialDescriptor descriptor, int i10, double d) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        M(a0(descriptor, i10), d);
    }

    protected void N(Tag tag, @NotNull SerialDescriptor enumDescriptor, int i10) {
        kotlin.jvm.internal.t.j(enumDescriptor, "enumDescriptor");
        W(tag, Integer.valueOf(i10));
    }

    @NotNull
    protected Encoder P(Tag tag, @NotNull SerialDescriptor inlineDescriptor) {
        kotlin.jvm.internal.t.j(inlineDescriptor, "inlineDescriptor");
        c0(tag);
        return this;
    }

    protected void T(Tag tag) {
        throw new kotlinx.serialization.j("null is not supported");
    }

    protected void V(Tag tag, @NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
        W(tag, value);
    }

    protected void W(Tag tag, @NotNull Object value) {
        kotlin.jvm.internal.t.j(value, "value");
        throw new kotlinx.serialization.j("Non-serializable " + kotlin.jvm.internal.q0.b(value.getClass()) + " is not supported by " + kotlin.jvm.internal.q0.b(getClass()) + " encoder");
    }

    protected final Tag Y() {
        return (Tag) kotlin.collections.d0.v0(this.tagStack);
    }

    @Nullable
    protected final Tag Z() {
        return (Tag) kotlin.collections.d0.w0(this.tagStack);
    }

    protected final Tag b0() {
        if (!(!this.tagStack.isEmpty())) {
            throw new kotlinx.serialization.j("No tag in stack for requested element");
        }
        ArrayList<Tag> arrayList = this.tagStack;
        return arrayList.remove(kotlin.collections.v.o(arrayList));
    }

    @Override // kotlinx.serialization.encoding.d
    public final void c(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        if (!this.tagStack.isEmpty()) {
            b0();
        }
        X(descriptor);
    }

    protected final void c0(Tag tag) {
        this.tagStack.add(tag);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void g(@NotNull SerialDescriptor enumDescriptor, int i10) {
        kotlin.jvm.internal.t.j(enumDescriptor, "enumDescriptor");
        N(b0(), enumDescriptor, i10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public final Encoder h(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return P(b0(), descriptor);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void i(@NotNull SerialDescriptor descriptor, int i10, char c7) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        L(a0(descriptor, i10), c7);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void j(@NotNull SerialDescriptor descriptor, int i10, byte b7) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        K(a0(descriptor, i10), b7);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void n(@NotNull SerialDescriptor descriptor, int i10, int i11) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        Q(a0(descriptor, i10), i11);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void o(@NotNull SerialDescriptor descriptor, int i10, boolean z6) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        J(a0(descriptor, i10), z6);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void p(@NotNull SerialDescriptor descriptor, int i10, @NotNull String value) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        kotlin.jvm.internal.t.j(value, "value");
        V(a0(descriptor, i10), value);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void t(@NotNull SerialDescriptor descriptor, int i10, short s) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        U(a0(descriptor, i10), s);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void u(@NotNull SerialDescriptor descriptor, int i10, long j6) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        R(a0(descriptor, i10), j6);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void v(@NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
        V(b0(), value);
    }

    @Override // kotlinx.serialization.encoding.d
    @NotNull
    public final Encoder w(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return P(a0(descriptor, i10), descriptor.d(i10));
    }

    @Override // kotlinx.serialization.encoding.d
    public <T> void y(@NotNull SerialDescriptor descriptor, int i10, @NotNull kotlinx.serialization.k<? super T> serializer, @Nullable T t5) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        kotlin.jvm.internal.t.j(serializer, "serializer");
        if (H(descriptor, i10)) {
            I(serializer, t5);
        }
    }

    private final boolean H(SerialDescriptor serialDescriptor, int i10) {
        c0(a0(serialDescriptor, i10));
        return true;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void A(long j6) {
        R(b0(), j6);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void B() {
        T(b0());
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void D(char c7) {
        L(b0(), c7);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void E() {
        S(Y());
    }

    public <T> void I(@NotNull kotlinx.serialization.k<? super T> kVar, @Nullable T t5) {
        Encoder.a.c(this, kVar, t5);
    }

    protected void J(Tag tag, boolean z6) {
        W(tag, Boolean.valueOf(z6));
    }

    protected void K(Tag tag, byte b7) {
        W(tag, Byte.valueOf(b7));
    }

    protected void L(Tag tag, char c7) {
        W(tag, Character.valueOf(c7));
    }

    protected void M(Tag tag, double d) {
        W(tag, Double.valueOf(d));
    }

    protected void O(Tag tag, float f) {
        W(tag, Float.valueOf(f));
    }

    protected void Q(Tag tag, int i10) {
        W(tag, Integer.valueOf(i10));
    }

    protected void R(Tag tag, long j6) {
        W(tag, Long.valueOf(j6));
    }

    protected void U(Tag tag, short s) {
        W(tag, Short.valueOf(s));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public kotlinx.serialization.modules.c a() {
        return kotlinx.serialization.modules.d.a();
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public <T> void e(@NotNull kotlinx.serialization.k<? super T> kVar, T t5) {
        Encoder.a.d(this, kVar, t5);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void f(byte b7) {
        K(b0(), b7);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void k(short s) {
        U(b0(), s);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void l(boolean z6) {
        J(b0(), z6);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void m(float f) {
        O(b0(), f);
    }

    @Override // kotlinx.serialization.encoding.d
    public boolean q(@NotNull SerialDescriptor serialDescriptor, int i10) {
        return kotlinx.serialization.encoding.d.a.a(this, serialDescriptor, i10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void s(int i10) {
        Q(b0(), i10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void x(double d) {
        M(b0(), d);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public kotlinx.serialization.encoding.d z(@NotNull SerialDescriptor serialDescriptor, int i10) {
        return Encoder.a.a(this, serialDescriptor, i10);
    }
}
