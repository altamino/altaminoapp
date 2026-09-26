package kotlinx.serialization.json.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.JsonElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class s0 extends kotlinx.serialization.encoding.a implements kotlinx.serialization.json.f {

    @NotNull
    private final kotlinx.serialization.json.e configuration;
    private int currentIndex;

    @Nullable
    private a discriminatorHolder;

    @Nullable
    private final y elementMarker;

    @NotNull
    private final kotlinx.serialization.json.a json;

    @NotNull
    public final kotlinx.serialization.json.internal.a lexer;

    @NotNull
    private final z0 mode;

    @NotNull
    private final kotlinx.serialization.modules.c serializersModule;

    public /* synthetic */ class b {
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
            try {
                iArr[z0.OBJ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final boolean S(a aVar, String str) {
        if (aVar == null || !kotlin.jvm.internal.t.e(aVar.discriminatorToSkip, str)) {
            return false;
        }
        aVar.discriminatorToSkip = null;
        return true;
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.c
    @NotNull
    public kotlinx.serialization.modules.c a() {
        return this.serializersModule;
    }

    @Override // kotlinx.serialization.json.f
    @NotNull
    public final kotlinx.serialization.json.a d() {
        return this.json;
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    @Nullable
    public Void g() {
        return null;
    }

    public static final class a {

        @Nullable
        public String discriminatorToSkip;

        public a(@Nullable String str) {
            this.discriminatorToSkip = str;
        }
    }

    public s0(@NotNull kotlinx.serialization.json.a json, @NotNull z0 mode, @NotNull kotlinx.serialization.json.internal.a lexer, @NotNull SerialDescriptor descriptor, @Nullable a aVar) {
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(mode, "mode");
        kotlin.jvm.internal.t.j(lexer, "lexer");
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        this.json = json;
        this.mode = mode;
        this.lexer = lexer;
        this.serializersModule = json.a();
        this.currentIndex = -1;
        this.discriminatorHolder = aVar;
        kotlinx.serialization.json.e eVarE = json.e();
        this.configuration = eVarE;
        this.elementMarker = eVarE.f() ? null : new y(descriptor);
    }

    private final void K() {
        if (this.lexer.E() != 4) {
            return;
        }
        kotlinx.serialization.json.internal.a.y(this.lexer, "Unexpected leading comma", 0, null, 6, null);
        throw new w7.i();
    }

    private final boolean L(SerialDescriptor serialDescriptor, int i10) {
        String strF;
        kotlinx.serialization.json.a aVar = this.json;
        SerialDescriptor serialDescriptorD = serialDescriptor.d(i10);
        if (!serialDescriptorD.b() && (!this.lexer.M())) {
            return true;
        }
        if (!kotlin.jvm.internal.t.e(serialDescriptorD.getKind(), kotlinx.serialization.descriptors.i.b.INSTANCE) || (strF = this.lexer.F(this.configuration.l())) == null || c0.d(serialDescriptorD, aVar, strF) != -3) {
            return false;
        }
        this.lexer.q();
        return true;
    }

    private final int M() {
        boolean zL = this.lexer.L();
        if (!this.lexer.f()) {
            if (!zL) {
                return -1;
            }
            kotlinx.serialization.json.internal.a.y(this.lexer, "Unexpected trailing comma", 0, null, 6, null);
            throw new w7.i();
        }
        int i10 = this.currentIndex;
        if (i10 != -1 && !zL) {
            kotlinx.serialization.json.internal.a.y(this.lexer, "Expected end of the array or comma", 0, null, 6, null);
            throw new w7.i();
        }
        int i11 = i10 + 1;
        this.currentIndex = i11;
        return i11;
    }

    private final int N() {
        int i10 = this.currentIndex;
        boolean zL = false;
        boolean z6 = i10 % 2 != 0;
        if (!z6) {
            this.lexer.o(kotlinx.serialization.json.internal.b.COLON);
        } else if (i10 != -1) {
            zL = this.lexer.L();
        }
        if (!this.lexer.f()) {
            if (!zL) {
                return -1;
            }
            kotlinx.serialization.json.internal.a.y(this.lexer, "Expected '}', but had ',' instead", 0, null, 6, null);
            throw new w7.i();
        }
        if (z6) {
            if (this.currentIndex == -1) {
                kotlinx.serialization.json.internal.a aVar = this.lexer;
                boolean z10 = !zL;
                int i11 = aVar.currentPosition;
                if (!z10) {
                    kotlinx.serialization.json.internal.a.y(aVar, "Unexpected trailing comma", i11, null, 4, null);
                    throw new w7.i();
                }
            } else {
                kotlinx.serialization.json.internal.a aVar2 = this.lexer;
                int i12 = aVar2.currentPosition;
                if (!zL) {
                    kotlinx.serialization.json.internal.a.y(aVar2, "Expected comma after the key-value pair", i12, null, 4, null);
                    throw new w7.i();
                }
            }
        }
        int i13 = this.currentIndex + 1;
        this.currentIndex = i13;
        return i13;
    }

    private final int O(SerialDescriptor serialDescriptor) {
        boolean zL;
        boolean zL2 = this.lexer.L();
        while (this.lexer.f()) {
            String strP = P();
            this.lexer.o(kotlinx.serialization.json.internal.b.COLON);
            int iD = c0.d(serialDescriptor, this.json, strP);
            boolean z6 = false;
            if (iD == -3) {
                z6 = true;
                zL = false;
            } else {
                if (!this.configuration.d() || !L(serialDescriptor, iD)) {
                    y yVar = this.elementMarker;
                    if (yVar != null) {
                        yVar.c(iD);
                    }
                    return iD;
                }
                zL = this.lexer.L();
            }
            zL2 = z6 ? Q(strP) : zL;
        }
        if (zL2) {
            kotlinx.serialization.json.internal.a.y(this.lexer, "Unexpected trailing comma", 0, null, 6, null);
            throw new w7.i();
        }
        y yVar2 = this.elementMarker;
        if (yVar2 != null) {
            return yVar2.d();
        }
        return -1;
    }

    private final String P() {
        return this.configuration.l() ? this.lexer.t() : this.lexer.k();
    }

    private final boolean Q(String str) {
        if (this.configuration.g() || S(this.discriminatorHolder, str)) {
            this.lexer.H(this.configuration.l());
        } else {
            this.lexer.A(str);
        }
        return this.lexer.L();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public boolean A() {
        return this.configuration.l() ? this.lexer.i() : this.lexer.g();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public boolean D() {
        y yVar = this.elementMarker;
        return (yVar == null || !yVar.b()) && this.lexer.M();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public <T> T G(@NotNull kotlinx.serialization.b<T> deserializer) {
        kotlin.jvm.internal.t.j(deserializer, "deserializer");
        try {
            if ((deserializer instanceof kotlinx.serialization.internal.b) && !this.json.e().k()) {
                String strC = q0.c(deserializer.getDescriptor(), this.json);
                String strL = this.lexer.l(strC, this.configuration.l());
                kotlinx.serialization.b<? extends T> bVarC = strL != null ? ((kotlinx.serialization.internal.b) deserializer).c(this, strL) : null;
                if (bVarC == null) {
                    return (T) q0.d(this, deserializer);
                }
                this.discriminatorHolder = new a(strC);
                return bVarC.deserialize(this);
            }
            return deserializer.deserialize(this);
        } catch (kotlinx.serialization.c e) {
            throw new kotlinx.serialization.c(e.a(), e.getMessage() + " at path: " + this.lexer.path.a(), e);
        }
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public byte H() {
        long jP = this.lexer.p();
        byte b7 = (byte) jP;
        if (jP == b7) {
            return b7;
        }
        kotlinx.serialization.json.internal.a.y(this.lexer, "Failed to parse byte for input '" + jP + '\'', 0, null, 6, null);
        throw new w7.i();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    @NotNull
    public kotlinx.serialization.encoding.c b(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        z0 z0VarB = a1.b(this.json, descriptor);
        this.lexer.path.c(descriptor);
        this.lexer.o(z0VarB.begin);
        K();
        int i10 = b.$EnumSwitchMapping$0[z0VarB.ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return new s0(this.json, z0VarB, this.lexer, descriptor, this.discriminatorHolder);
        }
        return (this.mode == z0VarB && this.json.e().f()) ? this : new s0(this.json, z0VarB, this.lexer, descriptor, this.discriminatorHolder);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.c
    public void c(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        if (this.json.e().g() && descriptor.e() == 0) {
            R(descriptor);
        }
        this.lexer.o(this.mode.end);
        this.lexer.path.b();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public long h() {
        return this.lexer.p();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public short m() {
        long jP = this.lexer.p();
        short s = (short) jP;
        if (jP == s) {
            return s;
        }
        kotlinx.serialization.json.internal.a.y(this.lexer, "Failed to parse short for input '" + jP + '\'', 0, null, 6, null);
        throw new w7.i();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public double n() {
        kotlinx.serialization.json.internal.a aVar = this.lexer;
        String strS = aVar.s();
        try {
            double d = Double.parseDouble(strS);
            if (this.json.e().a() || !(Double.isInfinite(d) || Double.isNaN(d))) {
                return d;
            }
            b0.j(this.lexer, Double.valueOf(d));
            throw new w7.i();
        } catch (IllegalArgumentException unused) {
            kotlinx.serialization.json.internal.a.y(aVar, "Failed to parse type 'double' for input '" + strS + '\'', 0, null, 6, null);
            throw new w7.i();
        }
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public char o() {
        String strS = this.lexer.s();
        if (strS.length() == 1) {
            return strS.charAt(0);
        }
        kotlinx.serialization.json.internal.a.y(this.lexer, "Expected single char, but got '" + strS + '\'', 0, null, 6, null);
        throw new w7.i();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.c
    public <T> T p(@NotNull SerialDescriptor descriptor, int i10, @NotNull kotlinx.serialization.b<T> deserializer, @Nullable T t5) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        kotlin.jvm.internal.t.j(deserializer, "deserializer");
        boolean z6 = this.mode == z0.MAP && (i10 & 1) == 0;
        if (z6) {
            this.lexer.path.d();
        }
        T t10 = (T) super.p(descriptor, i10, deserializer, t5);
        if (z6) {
            this.lexer.path.f(t10);
        }
        return t10;
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    @NotNull
    public String q() {
        return this.configuration.l() ? this.lexer.t() : this.lexer.q();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public int s(@NotNull SerialDescriptor enumDescriptor) {
        kotlin.jvm.internal.t.j(enumDescriptor, "enumDescriptor");
        return c0.e(enumDescriptor, this.json, q(), " at path " + this.lexer.path.a());
    }

    @Override // kotlinx.serialization.json.f
    @NotNull
    public JsonElement t() {
        return new o0(this.json.e(), this.lexer).e();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public int u() {
        long jP = this.lexer.p();
        int i10 = (int) jP;
        if (jP == i10) {
            return i10;
        }
        kotlinx.serialization.json.internal.a.y(this.lexer, "Failed to parse int for input '" + jP + '\'', 0, null, 6, null);
        throw new w7.i();
    }

    @Override // kotlinx.serialization.encoding.c
    public int w(@NotNull SerialDescriptor descriptor) {
        int iN;
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        int i10 = b.$EnumSwitchMapping$0[this.mode.ordinal()];
        if (i10 != 2) {
            iN = i10 != 4 ? M() : O(descriptor);
        } else {
            iN = N();
        }
        if (this.mode != z0.MAP) {
            this.lexer.path.g(iN);
        }
        return iN;
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    @NotNull
    public Decoder x(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return u0.a(descriptor) ? new w(this.lexer, this.json) : super.x(descriptor);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public float y() {
        kotlinx.serialization.json.internal.a aVar = this.lexer;
        String strS = aVar.s();
        try {
            float f = Float.parseFloat(strS);
            if (this.json.e().a() || !(Float.isInfinite(f) || Float.isNaN(f))) {
                return f;
            }
            b0.j(this.lexer, Float.valueOf(f));
            throw new w7.i();
        } catch (IllegalArgumentException unused) {
            kotlinx.serialization.json.internal.a.y(aVar, "Failed to parse type '" + TypedValues.Custom.S_FLOAT + "' for input '" + strS + '\'', 0, null, 6, null);
            throw new w7.i();
        }
    }

    private final void R(SerialDescriptor serialDescriptor) {
        while (w(serialDescriptor) != -1) {
        }
    }
}
