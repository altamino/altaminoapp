package kotlinx.serialization.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class m2 extends w1<w7.b0, w7.c0, l2> {

    @NotNull
    public static final m2 INSTANCE = new m2();

    @NotNull
    protected byte[] w() {
        return w7.c0.c(0);
    }

    private m2() {
        super(m8.a.D(w7.b0.Companion));
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ int e(Object obj) {
        return v(((w7.c0) obj).x());
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ Object k(Object obj) {
        return y(((w7.c0) obj).x());
    }

    @Override // kotlinx.serialization.internal.w1
    public /* bridge */ /* synthetic */ void u(kotlinx.serialization.encoding.d dVar, w7.c0 c0Var, int i10) {
        z(dVar, c0Var.x(), i10);
    }

    protected int v(@NotNull byte[] collectionSize) {
        kotlin.jvm.internal.t.j(collectionSize, "$this$collectionSize");
        return w7.c0.r(collectionSize);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull l2 builder, boolean z6) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        kotlin.jvm.internal.t.j(builder, "builder");
        builder.e(w7.b0.b(decoder.l(getDescriptor(), i10).H()));
    }

    @NotNull
    protected l2 y(@NotNull byte[] toBuilder) {
        kotlin.jvm.internal.t.j(toBuilder, "$this$toBuilder");
        return new l2(toBuilder, null);
    }

    protected void z(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull byte[] content, int i10) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.w(getDescriptor(), i11).f(w7.c0.p(content, i11));
        }
    }

    @Override // kotlinx.serialization.internal.w1
    public /* bridge */ /* synthetic */ w7.c0 r() {
        return w7.c0.a(w());
    }
}
