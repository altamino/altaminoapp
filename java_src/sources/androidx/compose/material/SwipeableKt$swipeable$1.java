package androidx.compose.material;

import androidx.compose.ui.unit.Dp;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SwipeableKt$swipeable$1 extends v implements p {
    public static final SwipeableKt$swipeable$1 INSTANCE = new SwipeableKt$swipeable$1();

    SwipeableKt$swipeable$1() {
        super(2);
    }

    @Override // e8.p
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final FixedThreshold invoke(Object obj, Object obj2) {
        return new FixedThreshold(Dp.f(56), null);
    }
}
