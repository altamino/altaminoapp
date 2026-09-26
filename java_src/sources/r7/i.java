package r7;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class i extends p {
    /* JADX WARN: Multi-variable type inference failed */
    public i() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // r7.p
    protected final void q() {
    }

    @Override // r7.p
    protected final void r(@NotNull ByteBuffer source, int i10, int i11) {
        t.j(source, "source");
    }

    public /* synthetic */ i(t7.g gVar, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? s7.a.Companion.c() : gVar);
    }

    @NotNull
    public String toString() {
        return "BytePacketBuilder[0x" + hashCode() + kotlinx.serialization.json.internal.b.END_LIST;
    }

    @Override // r7.p
    @NotNull
    /* JADX INFO: renamed from: I0, reason: merged with bridge method [inline-methods] */
    public i append(char c7) {
        p pVarAppend = super.append(c7);
        t.h(pVarAppend, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder");
        return (i) pVarAppend;
    }

    @Override // r7.p
    @NotNull
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public i append(@Nullable CharSequence charSequence) {
        p pVarAppend = super.append(charSequence);
        t.h(pVarAppend, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder");
        return (i) pVarAppend;
    }

    @Override // r7.p
    @NotNull
    /* JADX INFO: renamed from: K0, reason: merged with bridge method [inline-methods] */
    public i append(@Nullable CharSequence charSequence, int i10, int i11) {
        p pVarAppend = super.append(charSequence, i10, i11);
        t.h(pVarAppend, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder");
        return (i) pVarAppend;
    }

    @NotNull
    public final j L0() {
        int iM0 = M0();
        s7.a aVarT0 = t0();
        if (aVarT0 == null) {
            return j.Companion.a();
        }
        return new j(aVarT0, iM0, Q());
    }

    public final int M0() {
        return g0();
    }

    public final boolean N0() {
        if (g0() == 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(@NotNull t7.g<s7.a> pool) {
        super(pool);
        t.j(pool, "pool");
    }
}
