package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class h2<Tag> implements Decoder, kotlinx.serialization.encoding.c {
    private boolean flag;

    @NotNull
    private final ArrayList<Tag> tagStack = new ArrayList<>();

    /* JADX INFO: Add missing generic type declarations: [T] */
    static final class a<T> extends kotlin.jvm.internal.v implements e8.a<T> {
        final /* synthetic */ kotlinx.serialization.b<T> $deserializer;
        final /* synthetic */ T $previousValue;
        final /* synthetic */ h2<Tag> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(h2<Tag> h2Var, kotlinx.serialization.b<T> bVar, T t5) {
            super(0);
            this.this$0 = h2Var;
            this.$deserializer = bVar;
            this.$previousValue = t5;
        }

        @Override // e8.a
        @Nullable
        public final T invoke() {
            return this.this$0.D() ? (T) this.this$0.I(this.$deserializer, this.$previousValue) : (T) this.this$0.g();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    static final class b<T> extends kotlin.jvm.internal.v implements e8.a<T> {
        final /* synthetic */ kotlinx.serialization.b<T> $deserializer;
        final /* synthetic */ T $previousValue;
        final /* synthetic */ h2<Tag> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(h2<Tag> h2Var, kotlinx.serialization.b<T> bVar, T t5) {
            super(0);
            this.this$0 = h2Var;
            this.$deserializer = bVar;
            this.$previousValue = t5;
        }

        @Override // e8.a
        public final T invoke() {
            return (T) this.this$0.I(this.$deserializer, this.$previousValue);
        }
    }

    protected boolean S(Tag tag) {
        return true;
    }

    protected abstract Tag X(@NotNull SerialDescriptor serialDescriptor, int i10);

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public kotlinx.serialization.encoding.c b(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.c
    public void c(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @Nullable
    public final Void g() {
        return null;
    }

    @Override // kotlinx.serialization.encoding.c
    public final byte B(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return K(X(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.c
    public final boolean C(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return J(X(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.c
    public final short E(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return T(X(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.c
    public final double F(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return M(X(descriptor, i10));
    }

    protected <T> T I(@NotNull kotlinx.serialization.b<T> deserializer, @Nullable T t5) {
        kotlin.jvm.internal.t.j(deserializer, "deserializer");
        return (T) G(deserializer);
    }

    protected int N(Tag tag, @NotNull SerialDescriptor enumDescriptor) {
        kotlin.jvm.internal.t.j(enumDescriptor, "enumDescriptor");
        Object objV = V(tag);
        kotlin.jvm.internal.t.h(objV, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objV).intValue();
    }

    @NotNull
    protected Decoder P(Tag tag, @NotNull SerialDescriptor inlineDescriptor) {
        kotlin.jvm.internal.t.j(inlineDescriptor, "inlineDescriptor");
        Z(tag);
        return this;
    }

    @NotNull
    protected Object V(Tag tag) {
        throw new kotlinx.serialization.j(kotlin.jvm.internal.q0.b(getClass()) + " can't retrieve untyped values");
    }

    @Nullable
    protected final Tag W() {
        return (Tag) kotlin.collections.d0.w0(this.tagStack);
    }

    protected final Tag Y() {
        ArrayList<Tag> arrayList = this.tagStack;
        Tag tagRemove = arrayList.remove(kotlin.collections.v.o(arrayList));
        this.flag = true;
        return tagRemove;
    }

    protected final void Z(Tag tag) {
        this.tagStack.add(tag);
    }

    @Override // kotlinx.serialization.encoding.c
    public final long e(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return R(X(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.c
    public final int f(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return Q(X(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.c
    @NotNull
    public final String i(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return U(X(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.c
    @Nullable
    public final <T> T j(@NotNull SerialDescriptor descriptor, int i10, @NotNull kotlinx.serialization.b<T> deserializer, @Nullable T t5) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        kotlin.jvm.internal.t.j(deserializer, "deserializer");
        return (T) a0(X(descriptor, i10), new a(this, deserializer, t5));
    }

    @Override // kotlinx.serialization.encoding.c
    @NotNull
    public final Decoder l(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return P(X(descriptor, i10), descriptor.d(i10));
    }

    @Override // kotlinx.serialization.encoding.c
    public final <T> T p(@NotNull SerialDescriptor descriptor, int i10, @NotNull kotlinx.serialization.b<T> deserializer, @Nullable T t5) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        kotlin.jvm.internal.t.j(deserializer, "deserializer");
        return (T) a0(X(descriptor, i10), new b(this, deserializer, t5));
    }

    @Override // kotlinx.serialization.encoding.c
    public final char r(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return L(X(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int s(@NotNull SerialDescriptor enumDescriptor) {
        kotlin.jvm.internal.t.j(enumDescriptor, "enumDescriptor");
        return N(Y(), enumDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public final Decoder x(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return P(Y(), descriptor);
    }

    @Override // kotlinx.serialization.encoding.c
    public final float z(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return O(X(descriptor, i10));
    }

    private final <E> E a0(Tag tag, e8.a<? extends E> aVar) {
        Z(tag);
        E eInvoke = aVar.invoke();
        if (!this.flag) {
            Y();
        }
        this.flag = false;
        return eInvoke;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final boolean A() {
        return J(Y());
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean D() {
        Tag tagW = W();
        if (tagW == null) {
            return false;
        }
        return S(tagW);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public <T> T G(@NotNull kotlinx.serialization.b<T> bVar) {
        return (T) Decoder.a.a(this, bVar);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final byte H() {
        return K(Y());
    }

    protected boolean J(Tag tag) {
        Object objV = V(tag);
        kotlin.jvm.internal.t.h(objV, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objV).booleanValue();
    }

    protected byte K(Tag tag) {
        Object objV = V(tag);
        kotlin.jvm.internal.t.h(objV, "null cannot be cast to non-null type kotlin.Byte");
        return ((Byte) objV).byteValue();
    }

    protected char L(Tag tag) {
        Object objV = V(tag);
        kotlin.jvm.internal.t.h(objV, "null cannot be cast to non-null type kotlin.Char");
        return ((Character) objV).charValue();
    }

    protected double M(Tag tag) {
        Object objV = V(tag);
        kotlin.jvm.internal.t.h(objV, "null cannot be cast to non-null type kotlin.Double");
        return ((Double) objV).doubleValue();
    }

    protected float O(Tag tag) {
        Object objV = V(tag);
        kotlin.jvm.internal.t.h(objV, "null cannot be cast to non-null type kotlin.Float");
        return ((Float) objV).floatValue();
    }

    protected int Q(Tag tag) {
        Object objV = V(tag);
        kotlin.jvm.internal.t.h(objV, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objV).intValue();
    }

    protected long R(Tag tag) {
        Object objV = V(tag);
        kotlin.jvm.internal.t.h(objV, "null cannot be cast to non-null type kotlin.Long");
        return ((Long) objV).longValue();
    }

    protected short T(Tag tag) {
        Object objV = V(tag);
        kotlin.jvm.internal.t.h(objV, "null cannot be cast to non-null type kotlin.Short");
        return ((Short) objV).shortValue();
    }

    @NotNull
    protected String U(Tag tag) {
        Object objV = V(tag);
        kotlin.jvm.internal.t.h(objV, "null cannot be cast to non-null type kotlin.String");
        return (String) objV;
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.c
    @NotNull
    public kotlinx.serialization.modules.c a() {
        return kotlinx.serialization.modules.d.a();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final long h() {
        return R(Y());
    }

    @Override // kotlinx.serialization.encoding.c
    public boolean k() {
        return kotlinx.serialization.encoding.c.b.b(this);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final short m() {
        return T(Y());
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final double n() {
        return M(Y());
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final char o() {
        return L(Y());
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public final String q() {
        return U(Y());
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int u() {
        return Q(Y());
    }

    @Override // kotlinx.serialization.encoding.c
    public int v(@NotNull SerialDescriptor serialDescriptor) {
        return kotlinx.serialization.encoding.c.b.a(this, serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final float y() {
        return O(Y());
    }
}
