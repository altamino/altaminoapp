package kotlinx.serialization.json.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.i1;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonNull;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
abstract class d extends i1 implements kotlinx.serialization.json.k {

    @NotNull
    protected final kotlinx.serialization.json.e configuration;

    @NotNull
    private final kotlinx.serialization.json.a json;

    @NotNull
    private final e8.l<JsonElement, w7.l0> nodeConsumer;

    @Nullable
    private String polymorphicDiscriminator;

    static final class a extends kotlin.jvm.internal.v implements e8.l<JsonElement, w7.l0> {
        a() {
            super(1);
        }

        public final void a(@NotNull JsonElement node) {
            kotlin.jvm.internal.t.j(node, "node");
            d dVar = d.this;
            dVar.w0(d.h0(dVar), node);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(JsonElement jsonElement) {
            a(jsonElement);
            return w7.l0.INSTANCE;
        }
    }

    public static final class b extends kotlinx.serialization.encoding.b {
        final /* synthetic */ String $tag;

        @NotNull
        private final kotlinx.serialization.modules.c serializersModule;

        @Override // kotlinx.serialization.encoding.Encoder
        @NotNull
        public kotlinx.serialization.modules.c a() {
            return this.serializersModule;
        }

        b(String str) {
            this.$tag = str;
            this.serializersModule = d.this.d().a();
        }

        public final void K(@NotNull String s) {
            kotlin.jvm.internal.t.j(s, "s");
            d.this.w0(this.$tag, new kotlinx.serialization.json.n(s, false));
        }

        @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
        public void A(long j6) {
            K(h.a(w7.f0.b(j6), 10));
        }

        @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
        public void f(byte b7) {
            K(w7.b0.e(w7.b0.b(b7)));
        }

        @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
        public void k(short s) {
            K(w7.i0.e(w7.i0.b(s)));
        }

        @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
        public void s(int i10) {
            K(Long.toString(((long) w7.d0.b(i10)) & 4294967295L, 10));
        }
    }

    public /* synthetic */ d(kotlinx.serialization.json.a aVar, e8.l lVar, kotlin.jvm.internal.k kVar) {
        this(aVar, lVar);
    }

    @Override // kotlinx.serialization.internal.i2, kotlinx.serialization.encoding.Encoder
    public void E() {
    }

    @Override // kotlinx.serialization.json.k
    @NotNull
    public final kotlinx.serialization.json.a d() {
        return this.json;
    }

    @Override // kotlinx.serialization.internal.i1
    @NotNull
    protected String d0(@NotNull String parentName, @NotNull String childName) {
        kotlin.jvm.internal.t.j(parentName, "parentName");
        kotlin.jvm.internal.t.j(childName, "childName");
        return childName;
    }

    @NotNull
    public abstract JsonElement v0();

    public abstract void w0(@NotNull String str, @NotNull JsonElement jsonElement);

    /* JADX WARN: Multi-variable type inference failed */
    private d(kotlinx.serialization.json.a aVar, e8.l<? super JsonElement, w7.l0> lVar) {
        this.json = aVar;
        this.nodeConsumer = lVar;
        this.configuration = aVar.e();
    }

    @Override // kotlinx.serialization.internal.i2
    protected void X(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        this.nodeConsumer.invoke(v0());
    }

    @Override // kotlinx.serialization.internal.i2, kotlinx.serialization.encoding.Encoder
    @NotNull
    public final kotlinx.serialization.modules.c a() {
        return this.json.a();
    }

    @Override // kotlinx.serialization.internal.i2, kotlinx.serialization.encoding.Encoder
    @NotNull
    public kotlinx.serialization.encoding.d b(@NotNull SerialDescriptor descriptor) {
        d l0Var;
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        e8.l aVar = Z() == null ? this.nodeConsumer : new a();
        kotlinx.serialization.descriptors.i kind = descriptor.getKind();
        if (kotlin.jvm.internal.t.e(kind, kotlinx.serialization.descriptors.j.b.INSTANCE) || (kind instanceof kotlinx.serialization.descriptors.d)) {
            l0Var = new l0(this.json, aVar);
        } else if (kotlin.jvm.internal.t.e(kind, kotlinx.serialization.descriptors.j.c.INSTANCE)) {
            kotlinx.serialization.json.a aVar2 = this.json;
            SerialDescriptor serialDescriptorA = a1.a(descriptor.d(0), aVar2.a());
            kotlinx.serialization.descriptors.i kind2 = serialDescriptorA.getKind();
            if ((kind2 instanceof kotlinx.serialization.descriptors.e) || kotlin.jvm.internal.t.e(kind2, kotlinx.serialization.descriptors.i.b.INSTANCE)) {
                l0Var = new n0(this.json, aVar);
            } else {
                if (!aVar2.e().b()) {
                    throw b0.d(serialDescriptorA);
                }
                l0Var = new l0(this.json, aVar);
            }
        } else {
            l0Var = new j0(this.json, aVar);
        }
        String str = this.polymorphicDiscriminator;
        if (str != null) {
            kotlin.jvm.internal.t.g(str);
            l0Var.w0(str, kotlinx.serialization.json.h.c(descriptor.h()));
            this.polymorphicDiscriminator = null;
        }
        return l0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.i2, kotlinx.serialization.encoding.Encoder
    public <T> void e(@NotNull kotlinx.serialization.k<? super T> serializer, T t5) {
        kotlin.jvm.internal.t.j(serializer, "serializer");
        if (Z() == null && y0.b(a1.a(serializer.getDescriptor(), a()))) {
            f0 f0Var = new f0(this.json, this.nodeConsumer);
            f0Var.e(serializer, t5);
            f0Var.X(serializer.getDescriptor());
        } else {
            if (!(serializer instanceof kotlinx.serialization.internal.b) || d().e().k()) {
                serializer.serialize(this, t5);
                return;
            }
            kotlinx.serialization.internal.b bVar = (kotlinx.serialization.internal.b) serializer;
            String strC = q0.c(serializer.getDescriptor(), d());
            kotlin.jvm.internal.t.h(t5, "null cannot be cast to non-null type kotlin.Any");
            kotlinx.serialization.k kVarB = kotlinx.serialization.f.b(bVar, this, t5);
            q0.f(bVar, kVarB, strC);
            q0.b(kVarB.getDescriptor().getKind());
            this.polymorphicDiscriminator = strC;
            kVarB.serialize(this, t5);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public void J(@NotNull String tag, boolean z6) {
        kotlin.jvm.internal.t.j(tag, "tag");
        w0(tag, kotlinx.serialization.json.h.a(Boolean.valueOf(z6)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public void K(@NotNull String tag, byte b7) {
        kotlin.jvm.internal.t.j(tag, "tag");
        w0(tag, kotlinx.serialization.json.h.b(Byte.valueOf(b7)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public void L(@NotNull String tag, char c7) {
        kotlin.jvm.internal.t.j(tag, "tag");
        w0(tag, kotlinx.serialization.json.h.c(String.valueOf(c7)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
    public void M(@NotNull String tag, double d) {
        kotlin.jvm.internal.t.j(tag, "tag");
        w0(tag, kotlinx.serialization.json.h.b(Double.valueOf(d)));
        if (this.configuration.a()) {
            return;
        }
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw b0.c(Double.valueOf(d), tag, v0().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public void N(@NotNull String tag, @NotNull SerialDescriptor enumDescriptor, int i10) {
        kotlin.jvm.internal.t.j(tag, "tag");
        kotlin.jvm.internal.t.j(enumDescriptor, "enumDescriptor");
        w0(tag, kotlinx.serialization.json.h.c(enumDescriptor.f(i10)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public void O(@NotNull String tag, float f) {
        kotlin.jvm.internal.t.j(tag, "tag");
        w0(tag, kotlinx.serialization.json.h.b(Float.valueOf(f)));
        if (this.configuration.a()) {
            return;
        }
        if (Float.isInfinite(f) || Float.isNaN(f)) {
            throw b0.c(Float.valueOf(f), tag, v0().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    @NotNull
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public Encoder P(@NotNull String tag, @NotNull SerialDescriptor inlineDescriptor) {
        kotlin.jvm.internal.t.j(tag, "tag");
        kotlin.jvm.internal.t.j(inlineDescriptor, "inlineDescriptor");
        return u0.a(inlineDescriptor) ? new b(tag) : super.P(tag, inlineDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
    public void Q(@NotNull String tag, int i10) {
        kotlin.jvm.internal.t.j(tag, "tag");
        w0(tag, kotlinx.serialization.json.h.b(Integer.valueOf(i10)));
    }

    @Override // kotlinx.serialization.internal.i2, kotlinx.serialization.encoding.d
    public boolean q(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return this.configuration.e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public void R(@NotNull String tag, long j6) {
        kotlin.jvm.internal.t.j(tag, "tag");
        w0(tag, kotlinx.serialization.json.h.b(Long.valueOf(j6)));
    }

    @Override // kotlinx.serialization.json.k
    public void r(@NotNull JsonElement element) {
        kotlin.jvm.internal.t.j(element, "element");
        e(kotlinx.serialization.json.i.INSTANCE, element);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public void T(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        w0(tag, JsonNull.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public void U(@NotNull String tag, short s) {
        kotlin.jvm.internal.t.j(tag, "tag");
        w0(tag, kotlinx.serialization.json.h.b(Short.valueOf(s)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    /* JADX INFO: renamed from: t0, reason: merged with bridge method [inline-methods] */
    public void V(@NotNull String tag, @NotNull String value) {
        kotlin.jvm.internal.t.j(tag, "tag");
        kotlin.jvm.internal.t.j(value, "value");
        w0(tag, kotlinx.serialization.json.h.c(value));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.i2
    /* JADX INFO: renamed from: u0, reason: merged with bridge method [inline-methods] */
    public void W(@NotNull String tag, @NotNull Object value) {
        kotlin.jvm.internal.t.j(tag, "tag");
        kotlin.jvm.internal.t.j(value, "value");
        w0(tag, kotlinx.serialization.json.h.c(value.toString()));
    }

    public static final /* synthetic */ String h0(d dVar) {
        return dVar.Y();
    }

    @Override // kotlinx.serialization.internal.i2, kotlinx.serialization.encoding.Encoder
    public void B() {
        String strZ = Z();
        if (strZ == null) {
            this.nodeConsumer.invoke(JsonNull.INSTANCE);
        } else {
            T(strZ);
        }
    }
}
