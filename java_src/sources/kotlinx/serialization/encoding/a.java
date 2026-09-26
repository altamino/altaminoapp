package kotlinx.serialization.encoding;

import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements Decoder, c {
    @Override // kotlinx.serialization.encoding.Decoder
    public boolean D() {
        return true;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public c b(@NotNull SerialDescriptor descriptor) {
        t.j(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.c
    public void c(@NotNull SerialDescriptor descriptor) {
        t.j(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @Nullable
    public Void g() {
        return null;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public Decoder x(@NotNull SerialDescriptor descriptor) {
        t.j(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.c
    public final byte B(@NotNull SerialDescriptor descriptor, int i10) {
        t.j(descriptor, "descriptor");
        return H();
    }

    @Override // kotlinx.serialization.encoding.c
    public final boolean C(@NotNull SerialDescriptor descriptor, int i10) {
        t.j(descriptor, "descriptor");
        return A();
    }

    @Override // kotlinx.serialization.encoding.c
    public final short E(@NotNull SerialDescriptor descriptor, int i10) {
        t.j(descriptor, "descriptor");
        return m();
    }

    @Override // kotlinx.serialization.encoding.c
    public final double F(@NotNull SerialDescriptor descriptor, int i10) {
        t.j(descriptor, "descriptor");
        return n();
    }

    public <T> T I(@NotNull kotlinx.serialization.b<T> deserializer, @Nullable T t5) {
        t.j(deserializer, "deserializer");
        return (T) G(deserializer);
    }

    @NotNull
    public Object J() {
        throw new j(q0.b(getClass()) + " can't retrieve untyped values");
    }

    @Override // kotlinx.serialization.encoding.c
    public final long e(@NotNull SerialDescriptor descriptor, int i10) {
        t.j(descriptor, "descriptor");
        return h();
    }

    @Override // kotlinx.serialization.encoding.c
    public final int f(@NotNull SerialDescriptor descriptor, int i10) {
        t.j(descriptor, "descriptor");
        return u();
    }

    @Override // kotlinx.serialization.encoding.c
    @NotNull
    public final String i(@NotNull SerialDescriptor descriptor, int i10) {
        t.j(descriptor, "descriptor");
        return q();
    }

    @Override // kotlinx.serialization.encoding.c
    @Nullable
    public final <T> T j(@NotNull SerialDescriptor descriptor, int i10, @NotNull kotlinx.serialization.b<T> deserializer, @Nullable T t5) {
        t.j(descriptor, "descriptor");
        t.j(deserializer, "deserializer");
        return (deserializer.getDescriptor().b() || D()) ? (T) I(deserializer, t5) : (T) g();
    }

    @Override // kotlinx.serialization.encoding.c
    @NotNull
    public Decoder l(@NotNull SerialDescriptor descriptor, int i10) {
        t.j(descriptor, "descriptor");
        return x(descriptor.d(i10));
    }

    @Override // kotlinx.serialization.encoding.c
    public <T> T p(@NotNull SerialDescriptor descriptor, int i10, @NotNull kotlinx.serialization.b<T> deserializer, @Nullable T t5) {
        t.j(descriptor, "descriptor");
        t.j(deserializer, "deserializer");
        return (T) I(deserializer, t5);
    }

    @Override // kotlinx.serialization.encoding.c
    public final char r(@NotNull SerialDescriptor descriptor, int i10) {
        t.j(descriptor, "descriptor");
        return o();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public int s(@NotNull SerialDescriptor enumDescriptor) {
        t.j(enumDescriptor, "enumDescriptor");
        Object objJ = J();
        t.h(objJ, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objJ).intValue();
    }

    @Override // kotlinx.serialization.encoding.c
    public final float z(@NotNull SerialDescriptor descriptor, int i10) {
        t.j(descriptor, "descriptor");
        return y();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean A() {
        Object objJ = J();
        t.h(objJ, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objJ).booleanValue();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public <T> T G(@NotNull kotlinx.serialization.b<T> bVar) {
        return (T) Decoder.a.a(this, bVar);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public byte H() {
        Object objJ = J();
        t.h(objJ, "null cannot be cast to non-null type kotlin.Byte");
        return ((Byte) objJ).byteValue();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public long h() {
        Object objJ = J();
        t.h(objJ, "null cannot be cast to non-null type kotlin.Long");
        return ((Long) objJ).longValue();
    }

    @Override // kotlinx.serialization.encoding.c
    public boolean k() {
        return c.b.b(this);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public short m() {
        Object objJ = J();
        t.h(objJ, "null cannot be cast to non-null type kotlin.Short");
        return ((Short) objJ).shortValue();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public double n() {
        Object objJ = J();
        t.h(objJ, "null cannot be cast to non-null type kotlin.Double");
        return ((Double) objJ).doubleValue();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public char o() {
        Object objJ = J();
        t.h(objJ, "null cannot be cast to non-null type kotlin.Char");
        return ((Character) objJ).charValue();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public String q() {
        Object objJ = J();
        t.h(objJ, "null cannot be cast to non-null type kotlin.String");
        return (String) objJ;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public int u() {
        Object objJ = J();
        t.h(objJ, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objJ).intValue();
    }

    @Override // kotlinx.serialization.encoding.c
    public int v(@NotNull SerialDescriptor serialDescriptor) {
        return c.b.a(this, serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public float y() {
        Object objJ = J();
        t.h(objJ, "null cannot be cast to non-null type kotlin.Float");
        return ((Float) objJ).floatValue();
    }
}
