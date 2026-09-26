package kotlinx.serialization.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class p2 extends w1<w7.d0, w7.e0, o2> {

    @NotNull
    public static final p2 INSTANCE = new p2();

    @NotNull
    protected int[] w() {
        return w7.e0.c(0);
    }

    private p2() {
        super(m8.a.E(w7.d0.Companion));
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ int e(Object obj) {
        return v(((w7.e0) obj).x());
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ Object k(Object obj) {
        return y(((w7.e0) obj).x());
    }

    @Override // kotlinx.serialization.internal.w1
    public /* bridge */ /* synthetic */ void u(kotlinx.serialization.encoding.d dVar, w7.e0 e0Var, int i10) {
        z(dVar, e0Var.x(), i10);
    }

    protected int v(@NotNull int[] collectionSize) {
        kotlin.jvm.internal.t.j(collectionSize, "$this$collectionSize");
        return w7.e0.r(collectionSize);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull o2 builder, boolean z6) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        kotlin.jvm.internal.t.j(builder, "builder");
        builder.e(w7.d0.b(decoder.l(getDescriptor(), i10).u()));
    }

    @NotNull
    protected o2 y(@NotNull int[] toBuilder) {
        kotlin.jvm.internal.t.j(toBuilder, "$this$toBuilder");
        return new o2(toBuilder, null);
    }

    protected void z(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull int[] content, int i10) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.w(getDescriptor(), i11).s(w7.e0.p(content, i11));
        }
    }

    @Override // kotlinx.serialization.internal.w1
    public /* bridge */ /* synthetic */ w7.e0 r() {
        return w7.e0.a(w());
    }
}
