package kotlinx.serialization.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class q extends w1<Character, char[], p> {

    @NotNull
    public static final q INSTANCE = new q();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w1
    @NotNull
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public char[] r() {
        return new char[0];
    }

    private q() {
        super(m8.a.w(kotlin.jvm.internal.g.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public int e(@NotNull char[] cArr) {
        kotlin.jvm.internal.t.j(cArr, "<this>");
        return cArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull p builder, boolean z6) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        kotlin.jvm.internal.t.j(builder, "builder");
        builder.e(decoder.r(getDescriptor(), i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public p k(@NotNull char[] cArr) {
        kotlin.jvm.internal.t.j(cArr, "<this>");
        return new p(cArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w1
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void u(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull char[] content, int i10) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.i(getDescriptor(), i11, content[i11]);
        }
    }
}
