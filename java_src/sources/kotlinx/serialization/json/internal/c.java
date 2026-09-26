package kotlinx.serialization.json.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.h1;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
abstract class c extends h1 implements kotlinx.serialization.json.f {

    @NotNull
    protected final kotlinx.serialization.json.e configuration;

    @NotNull
    private final kotlinx.serialization.json.a json;

    @NotNull
    private final JsonElement value;

    public /* synthetic */ c(kotlinx.serialization.json.a aVar, JsonElement jsonElement, kotlin.jvm.internal.k kVar) {
        this(aVar, jsonElement);
    }

    @Override // kotlinx.serialization.internal.h1
    @NotNull
    protected String b0(@NotNull String parentName, @NotNull String childName) {
        kotlin.jvm.internal.t.j(parentName, "parentName");
        kotlin.jvm.internal.t.j(childName, "childName");
        return childName;
    }

    @Override // kotlinx.serialization.internal.h2, kotlinx.serialization.encoding.c
    public void c(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.json.f
    @NotNull
    public kotlinx.serialization.json.a d() {
        return this.json;
    }

    @NotNull
    protected abstract JsonElement g0(@NotNull String str);

    @NotNull
    public JsonElement v0() {
        return this.value;
    }

    private c(kotlinx.serialization.json.a aVar, JsonElement jsonElement) {
        this.json = aVar;
        this.value = jsonElement;
        this.configuration = d().e();
    }

    private final kotlinx.serialization.json.n f0(JsonPrimitive jsonPrimitive, String str) {
        kotlinx.serialization.json.n nVar = jsonPrimitive instanceof kotlinx.serialization.json.n ? (kotlinx.serialization.json.n) jsonPrimitive : null;
        if (nVar != null) {
            return nVar;
        }
        throw b0.e(-1, "Unexpected 'null' when " + str + " was expected");
    }

    private final Void w0(String str) {
        throw b0.f(-1, "Failed to parse '" + str + '\'', h0().toString());
    }

    @Override // kotlinx.serialization.internal.h2, kotlinx.serialization.encoding.Decoder
    public <T> T G(@NotNull kotlinx.serialization.b<T> deserializer) {
        kotlin.jvm.internal.t.j(deserializer, "deserializer");
        return (T) q0.d(this, deserializer);
    }

    @Override // kotlinx.serialization.internal.h2, kotlinx.serialization.encoding.Decoder
    @NotNull
    public kotlinx.serialization.encoding.c b(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        JsonElement jsonElementH0 = h0();
        kotlinx.serialization.descriptors.i kind = descriptor.getKind();
        if (kotlin.jvm.internal.t.e(kind, kotlinx.serialization.descriptors.j.b.INSTANCE) || (kind instanceof kotlinx.serialization.descriptors.d)) {
            kotlinx.serialization.json.a aVarD = d();
            if (jsonElementH0 instanceof JsonArray) {
                return new k0(aVarD, (JsonArray) jsonElementH0);
            }
            throw b0.e(-1, "Expected " + kotlin.jvm.internal.q0.b(JsonArray.class) + " as the serialized body of " + descriptor.h() + ", but had " + kotlin.jvm.internal.q0.b(jsonElementH0.getClass()));
        }
        if (!kotlin.jvm.internal.t.e(kind, kotlinx.serialization.descriptors.j.c.INSTANCE)) {
            kotlinx.serialization.json.a aVarD2 = d();
            if (jsonElementH0 instanceof JsonObject) {
                return new i0(aVarD2, (JsonObject) jsonElementH0, null, null, 12, null);
            }
            throw b0.e(-1, "Expected " + kotlin.jvm.internal.q0.b(JsonObject.class) + " as the serialized body of " + descriptor.h() + ", but had " + kotlin.jvm.internal.q0.b(jsonElementH0.getClass()));
        }
        kotlinx.serialization.json.a aVarD3 = d();
        SerialDescriptor serialDescriptorA = a1.a(descriptor.d(0), aVarD3.a());
        kotlinx.serialization.descriptors.i kind2 = serialDescriptorA.getKind();
        if ((kind2 instanceof kotlinx.serialization.descriptors.e) || kotlin.jvm.internal.t.e(kind2, kotlinx.serialization.descriptors.i.b.INSTANCE)) {
            kotlinx.serialization.json.a aVarD4 = d();
            if (jsonElementH0 instanceof JsonObject) {
                return new m0(aVarD4, (JsonObject) jsonElementH0);
            }
            throw b0.e(-1, "Expected " + kotlin.jvm.internal.q0.b(JsonObject.class) + " as the serialized body of " + descriptor.h() + ", but had " + kotlin.jvm.internal.q0.b(jsonElementH0.getClass()));
        }
        if (!aVarD3.e().b()) {
            throw b0.d(serialDescriptorA);
        }
        kotlinx.serialization.json.a aVarD5 = d();
        if (jsonElementH0 instanceof JsonArray) {
            return new k0(aVarD5, (JsonArray) jsonElementH0);
        }
        throw b0.e(-1, "Expected " + kotlin.jvm.internal.q0.b(JsonArray.class) + " as the serialized body of " + descriptor.h() + ", but had " + kotlin.jvm.internal.q0.b(jsonElementH0.getClass()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public boolean J(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        JsonPrimitive jsonPrimitiveU0 = u0(tag);
        if (!d().e().l() && f0(jsonPrimitiveU0, TypedValues.Custom.S_BOOLEAN).f()) {
            throw b0.f(-1, "Boolean literal for key '" + tag + "' should be unquoted.\nUse 'isLenient = true' in 'Json {}` builder to accept non-compliant JSON.", h0().toString());
        }
        try {
            Boolean boolE = kotlinx.serialization.json.h.e(jsonPrimitiveU0);
            if (boolE != null) {
                return boolE.booleanValue();
            }
            throw new IllegalArgumentException();
        } catch (IllegalArgumentException unused) {
            w0(TypedValues.Custom.S_BOOLEAN);
            throw new w7.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public byte K(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        try {
            int iJ = kotlinx.serialization.json.h.j(u0(tag));
            Byte bValueOf = (-128 > iJ || iJ > 127) ? null : Byte.valueOf((byte) iJ);
            if (bValueOf != null) {
                return bValueOf.byteValue();
            }
            w0("byte");
            throw new w7.i();
        } catch (IllegalArgumentException unused) {
            w0("byte");
            throw new w7.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public char L(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        try {
            return kotlin.text.w.j1(u0(tag).e());
        } catch (IllegalArgumentException unused) {
            w0("char");
            throw new w7.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
    public double M(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        try {
            double dG = kotlinx.serialization.json.h.g(u0(tag));
            if (d().e().a() || !(Double.isInfinite(dG) || Double.isNaN(dG))) {
                return dG;
            }
            throw b0.a(Double.valueOf(dG), tag, h0().toString());
        } catch (IllegalArgumentException unused) {
            w0("double");
            throw new w7.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public int N(@NotNull String tag, @NotNull SerialDescriptor enumDescriptor) {
        kotlin.jvm.internal.t.j(tag, "tag");
        kotlin.jvm.internal.t.j(enumDescriptor, "enumDescriptor");
        return c0.f(enumDescriptor, d(), u0(tag).e(), null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public float O(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        try {
            float fI = kotlinx.serialization.json.h.i(u0(tag));
            if (d().e().a() || !(Float.isInfinite(fI) || Float.isNaN(fI))) {
                return fI;
            }
            throw b0.a(Float.valueOf(fI), tag, h0().toString());
        } catch (IllegalArgumentException unused) {
            w0(TypedValues.Custom.S_FLOAT);
            throw new w7.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    @NotNull
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public Decoder P(@NotNull String tag, @NotNull SerialDescriptor inlineDescriptor) {
        kotlin.jvm.internal.t.j(tag, "tag");
        kotlin.jvm.internal.t.j(inlineDescriptor, "inlineDescriptor");
        return u0.a(inlineDescriptor) ? new w(new v0(u0(tag).e()), d()) : super.P(tag, inlineDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
    public int Q(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        try {
            return kotlinx.serialization.json.h.j(u0(tag));
        } catch (IllegalArgumentException unused) {
            w0("int");
            throw new w7.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public long R(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        try {
            return kotlinx.serialization.json.h.m(u0(tag));
        } catch (IllegalArgumentException unused) {
            w0("long");
            throw new w7.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public boolean S(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        return g0(tag) != JsonNull.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public short T(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        try {
            int iJ = kotlinx.serialization.json.h.j(u0(tag));
            Short shValueOf = (-32768 > iJ || iJ > 32767) ? null : Short.valueOf((short) iJ);
            if (shValueOf != null) {
                return shValueOf.shortValue();
            }
            w0("short");
            throw new w7.i();
        } catch (IllegalArgumentException unused) {
            w0("short");
            throw new w7.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.h2
    @NotNull
    /* JADX INFO: renamed from: t0, reason: merged with bridge method [inline-methods] */
    public String U(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        JsonPrimitive jsonPrimitiveU0 = u0(tag);
        if (d().e().l() || f0(jsonPrimitiveU0, TypedValues.Custom.S_STRING).f()) {
            if (jsonPrimitiveU0 instanceof JsonNull) {
                throw b0.f(-1, "Unexpected 'null' value instead of string literal", h0().toString());
            }
            return jsonPrimitiveU0.e();
        }
        throw b0.f(-1, "String literal for key '" + tag + "' should be quoted.\nUse 'isLenient = true' in 'Json {}` builder to accept non-compliant JSON.", h0().toString());
    }

    @NotNull
    protected final JsonPrimitive u0(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        JsonElement jsonElementG0 = g0(tag);
        JsonPrimitive jsonPrimitive = jsonElementG0 instanceof JsonPrimitive ? (JsonPrimitive) jsonElementG0 : null;
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        throw b0.f(-1, "Expected JsonPrimitive at " + tag + ", found " + jsonElementG0, h0().toString());
    }

    private final JsonElement h0() {
        JsonElement jsonElementG0;
        String strW = W();
        if (strW == null || (jsonElementG0 = g0(strW)) == null) {
            return v0();
        }
        return jsonElementG0;
    }

    @Override // kotlinx.serialization.internal.h2, kotlinx.serialization.encoding.Decoder
    public boolean D() {
        return !(h0() instanceof JsonNull);
    }

    @Override // kotlinx.serialization.internal.h2, kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.c
    @NotNull
    public kotlinx.serialization.modules.c a() {
        return d().a();
    }

    @Override // kotlinx.serialization.json.f
    @NotNull
    public JsonElement t() {
        return h0();
    }
}
