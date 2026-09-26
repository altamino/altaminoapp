package kotlinx.serialization.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class b0 extends w1<Double, double[], a0> {

    @NotNull
    public static final b0 INSTANCE = new b0();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w1
    @NotNull
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public double[] r() {
        return new double[0];
    }

    private b0() {
        super(m8.a.x(kotlin.jvm.internal.l.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public int e(@NotNull double[] dArr) {
        kotlin.jvm.internal.t.j(dArr, "<this>");
        return dArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull a0 builder, boolean z6) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        kotlin.jvm.internal.t.j(builder, "builder");
        builder.e(decoder.F(getDescriptor(), i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public a0 k(@NotNull double[] dArr) {
        kotlin.jvm.internal.t.j(dArr, "<this>");
        return new a0(dArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w1
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void u(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull double[] content, int i10) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.G(getDescriptor(), i11, content[i11]);
        }
    }
}
