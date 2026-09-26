package kotlinx.serialization.json;

import kotlin.jvm.internal.q0;
import kotlin.text.a0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.b0;
import org.jetbrains.annotations.NotNull;
import w7.f0;

/* JADX INFO: loaded from: classes.dex */
final class o implements KSerializer<n> {

    @NotNull
    public static final o INSTANCE = new o();

    @NotNull
    private static final SerialDescriptor descriptor = kotlinx.serialization.descriptors.h.a("kotlinx.serialization.json.JsonLiteral", kotlinx.serialization.descriptors.e.i.INSTANCE);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public n deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        JsonElement jsonElementT = j.d(decoder).t();
        if (jsonElementT instanceof n) {
            return (n) jsonElementT;
        }
        throw b0.f(-1, "Unexpected JSON element, expected JsonLiteral, had " + q0.b(jsonElementT.getClass()), jsonElementT.toString());
    }

    @Override // kotlinx.serialization.k
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(@NotNull Encoder encoder, @NotNull n value) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(value, "value");
        j.h(encoder);
        if (value.f()) {
            encoder.v(value.e());
            return;
        }
        Long lN = h.n(value);
        if (lN != null) {
            encoder.A(lN.longValue());
            return;
        }
        f0 f0VarH = a0.h(value.e());
        if (f0VarH != null) {
            encoder.h(m8.a.F(f0.Companion).getDescriptor()).A(f0VarH.f());
            return;
        }
        Double dH = h.h(value);
        if (dH != null) {
            encoder.x(dH.doubleValue());
            return;
        }
        Boolean boolE = h.e(value);
        if (boolE != null) {
            encoder.l(boolE.booleanValue());
        } else {
            encoder.v(value.e());
        }
    }

    private o() {
    }
}
