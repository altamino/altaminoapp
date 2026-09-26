package kotlinx.serialization.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class h extends w1<Boolean, boolean[], g> {

    @NotNull
    public static final h INSTANCE = new h();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w1
    @NotNull
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public boolean[] r() {
        return new boolean[0];
    }

    private h() {
        super(m8.a.u(kotlin.jvm.internal.d.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public int e(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.t.j(zArr, "<this>");
        return zArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull g builder, boolean z6) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        kotlin.jvm.internal.t.j(builder, "builder");
        builder.e(decoder.C(getDescriptor(), i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public g k(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.t.j(zArr, "<this>");
        return new g(zArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w1
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void u(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull boolean[] content, int i10) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.o(getDescriptor(), i11, content[i11]);
        }
    }
}
