package androidx.compose.animation;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class EnterExitTransitionKt$slideInVertically$1 extends v implements l<Integer, Integer> {
    public static final EnterExitTransitionKt$slideInVertically$1 INSTANCE = new EnterExitTransitionKt$slideInVertically$1();

    EnterExitTransitionKt$slideInVertically$1() {
        super(1);
    }

    @NotNull
    public final Integer b(int i10) {
        return Integer.valueOf((-i10) / 2);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
        return b(num.intValue());
    }
}
