package kotlinx.serialization.json.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class t0 extends kotlinx.serialization.encoding.b implements kotlinx.serialization.json.k {

    @NotNull
    private final k composer;

    @NotNull
    private final kotlinx.serialization.json.e configuration;
    private boolean forceQuoting;

    @NotNull
    private final kotlinx.serialization.json.a json;

    @NotNull
    private final z0 mode;

    @Nullable
    private final kotlinx.serialization.json.k[] modeReuseCache;

    @Nullable
    private String polymorphicDiscriminator;

    @NotNull
    private final kotlinx.serialization.modules.c serializersModule;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[z0.values().length];
            try {
                iArr[z0.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[z0.MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[z0.POLY_OBJ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public t0(@NotNull k composer, @NotNull kotlinx.serialization.json.a json, @NotNull z0 mode, @Nullable kotlinx.serialization.json.k[] kVarArr) {
        kotlin.jvm.internal.t.j(composer, "composer");
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(mode, "mode");
        this.composer = composer;
        this.json = json;
        this.mode = mode;
        this.modeReuseCache = kVarArr;
        this.serializersModule = d().a();
        this.configuration = d().e();
        int iOrdinal = mode.ordinal();
        if (kVarArr != null) {
            kotlinx.serialization.json.k kVar = kVarArr[iOrdinal];
            if (kVar == null && kVar == this) {
                return;
            }
            kVarArr[iOrdinal] = this;
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public kotlinx.serialization.modules.c a() {
        return this.serializersModule;
    }

    @Override // kotlinx.serialization.json.k
    @NotNull
    public kotlinx.serialization.json.a d() {
        return this.json;
    }

    private final k K() {
        k kVar = this.composer;
        return kVar instanceof r ? kVar : new r(kVar.writer, this.forceQuoting);
    }

    private final void L(SerialDescriptor serialDescriptor) {
        this.composer.c();
        String str = this.polymorphicDiscriminator;
        kotlin.jvm.internal.t.g(str);
        v(str);
        this.composer.e(b.COLON);
        this.composer.o();
        v(serialDescriptor.h());
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void A(long j6) {
        if (this.forceQuoting) {
            v(String.valueOf(j6));
        } else {
            this.composer.i(j6);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void B() {
        this.composer.j("null");
    }

    @Override // kotlinx.serialization.encoding.b
    public boolean H(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        int i11 = a.$EnumSwitchMapping$0[this.mode.ordinal()];
        if (i11 != 1) {
            boolean z6 = false;
            if (i11 != 2) {
                if (i11 != 3) {
                    if (!this.composer.a()) {
                        this.composer.e(b.COMMA);
                    }
                    this.composer.c();
                    v(descriptor.f(i10));
                    this.composer.e(b.COLON);
                    this.composer.o();
                } else {
                    if (i10 == 0) {
                        this.forceQuoting = true;
                    }
                    if (i10 == 1) {
                        this.composer.e(b.COMMA);
                        this.composer.o();
                        this.forceQuoting = false;
                    }
                }
            } else if (this.composer.a()) {
                this.forceQuoting = true;
                this.composer.c();
            } else {
                if (i10 % 2 == 0) {
                    this.composer.e(b.COMMA);
                    this.composer.c();
                    z6 = true;
                } else {
                    this.composer.e(b.COLON);
                    this.composer.o();
                }
                this.forceQuoting = z6;
            }
        } else {
            if (!this.composer.a()) {
                this.composer.e(b.COMMA);
            }
            this.composer.c();
        }
        return true;
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    @NotNull
    public kotlinx.serialization.encoding.d b(@NotNull SerialDescriptor descriptor) {
        kotlinx.serialization.json.k kVar;
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        z0 z0VarB = a1.b(d(), descriptor);
        char c7 = z0VarB.begin;
        if (c7 != 0) {
            this.composer.e(c7);
            this.composer.b();
        }
        if (this.polymorphicDiscriminator != null) {
            L(descriptor);
            this.polymorphicDiscriminator = null;
        }
        if (this.mode == z0VarB) {
            return this;
        }
        kotlinx.serialization.json.k[] kVarArr = this.modeReuseCache;
        return (kVarArr == null || (kVar = kVarArr[z0VarB.ordinal()]) == null) ? new t0(this.composer, d(), z0VarB, this.modeReuseCache) : kVar;
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.d
    public void c(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        if (this.mode.end != 0) {
            this.composer.p();
            this.composer.c();
            this.composer.e(this.mode.end);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public <T> void e(@NotNull kotlinx.serialization.k<? super T> serializer, T t5) {
        kotlin.jvm.internal.t.j(serializer, "serializer");
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

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void f(byte b7) {
        if (this.forceQuoting) {
            v(String.valueOf((int) b7));
        } else {
            this.composer.d(b7);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void g(@NotNull SerialDescriptor enumDescriptor, int i10) {
        kotlin.jvm.internal.t.j(enumDescriptor, "enumDescriptor");
        v(enumDescriptor.f(i10));
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    @NotNull
    public Encoder h(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return u0.a(descriptor) ? new t0(K(), d(), this.mode, (kotlinx.serialization.json.k[]) null) : super.h(descriptor);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void k(short s) {
        if (this.forceQuoting) {
            v(String.valueOf((int) s));
        } else {
            this.composer.k(s);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void l(boolean z6) {
        if (this.forceQuoting) {
            v(String.valueOf(z6));
        } else {
            this.composer.l(z6);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void m(float f) {
        if (this.forceQuoting) {
            v(String.valueOf(f));
        } else {
            this.composer.g(f);
        }
        if (this.configuration.a()) {
            return;
        }
        if (Float.isInfinite(f) || Float.isNaN(f)) {
            throw b0.b(Float.valueOf(f), this.composer.writer.toString());
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.d
    public boolean q(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return this.configuration.e();
    }

    @Override // kotlinx.serialization.json.k
    public void r(@NotNull JsonElement element) {
        kotlin.jvm.internal.t.j(element, "element");
        e(kotlinx.serialization.json.i.INSTANCE, element);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void s(int i10) {
        if (this.forceQuoting) {
            v(String.valueOf(i10));
        } else {
            this.composer.h(i10);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void v(@NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
        this.composer.m(value);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void x(double d) {
        if (this.forceQuoting) {
            v(String.valueOf(d));
        } else {
            this.composer.f(d);
        }
        if (this.configuration.a()) {
            return;
        }
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw b0.b(Double.valueOf(d), this.composer.writer.toString());
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.d
    public <T> void y(@NotNull SerialDescriptor descriptor, int i10, @NotNull kotlinx.serialization.k<? super T> serializer, @Nullable T t5) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        kotlin.jvm.internal.t.j(serializer, "serializer");
        if (t5 != null || this.configuration.f()) {
            super.y(descriptor, i10, serializer, t5);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void D(char c7) {
        v(String.valueOf(c7));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public t0(@NotNull p0 output, @NotNull kotlinx.serialization.json.a json, @NotNull z0 mode, @NotNull kotlinx.serialization.json.k[] modeReuseCache) {
        this(t.a(output, json), json, mode, modeReuseCache);
        kotlin.jvm.internal.t.j(output, "output");
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(mode, "mode");
        kotlin.jvm.internal.t.j(modeReuseCache, "modeReuseCache");
    }
}
