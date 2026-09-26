package androidx.compose.material;

import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class SwipeableState$Companion$Saver$1 extends v implements p<SaverScope, SwipeableState<Object>, Object> {
    public static final SwipeableState$Companion$Saver$1 INSTANCE = new SwipeableState$Companion$Saver$1();

    SwipeableState$Companion$Saver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull SwipeableState<Object> it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        return it.p();
    }
}
