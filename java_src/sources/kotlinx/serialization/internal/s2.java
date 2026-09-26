package kotlinx.serialization.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class s2 extends w1<w7.f0, w7.g0, r2> {

    @NotNull
    public static final s2 INSTANCE = new s2();

    @NotNull
    protected long[] w() {
        return w7.g0.c(0);
    }

    private s2() {
        super(m8.a.F(w7.f0.Companion));
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ int e(Object obj) {
        return v(((w7.g0) obj).x());
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ Object k(Object obj) {
        return y(((w7.g0) obj).x());
    }

    @Override // kotlinx.serialization.internal.w1
    public /* bridge */ /* synthetic */ void u(kotlinx.serialization.encoding.d dVar, w7.g0 g0Var, int i10) {
        z(dVar, g0Var.x(), i10);
    }

    protected int v(@NotNull long[] collectionSize) {
        kotlin.jvm.internal.t.j(collectionSize, "$this$collectionSize");
        return w7.g0.r(collectionSize);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull r2 builder, boolean z6) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        kotlin.jvm.internal.t.j(builder, "builder");
        builder.e(w7.f0.b(decoder.l(getDescriptor(), i10).h()));
    }

    @NotNull
    protected r2 y(@NotNull long[] toBuilder) {
        kotlin.jvm.internal.t.j(toBuilder, "$this$toBuilder");
        return new r2(toBuilder, null);
    }

    protected void z(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull long[] content, int i10) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.w(getDescriptor(), i11).A(w7.g0.p(content, i11));
        }
    }

    @Override // kotlinx.serialization.internal.w1
    public /* bridge */ /* synthetic */ w7.g0 r() {
        return w7.g0.a(w());
    }
}
