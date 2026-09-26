package androidx.compose.animation;

import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes.dex */
final class EnterExitTransitionKt$expandIn$1 extends v implements l<IntSize, IntSize> {
    public static final EnterExitTransitionKt$expandIn$1 INSTANCE = new EnterExitTransitionKt$expandIn$1();

    EnterExitTransitionKt$expandIn$1() {
        super(1);
    }

    public final long a(long j6) {
        return IntSizeKt.a(0, 0);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
        return IntSize.b(a(intSize.j()));
    }
}
