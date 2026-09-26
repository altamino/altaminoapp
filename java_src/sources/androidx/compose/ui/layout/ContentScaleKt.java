package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Size;

/* JADX INFO: loaded from: classes5.dex */
public final class ContentScaleKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final float e(long j6, long j10) {
        return Size.g(j10) / Size.g(j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float f(long j6, long j10) {
        return Math.max(h(j6, j10), e(j6, j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float g(long j6, long j10) {
        return Math.min(h(j6, j10), e(j6, j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float h(long j6, long j10) {
        return Size.i(j10) / Size.i(j6);
    }
}
