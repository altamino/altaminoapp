package androidx.compose.material;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class SwipeToDismissKt$SwipeToDismiss$1 extends v implements l<DismissDirection, FractionalThreshold> {
    public static final SwipeToDismissKt$SwipeToDismiss$1 INSTANCE = new SwipeToDismissKt$SwipeToDismiss$1();

    SwipeToDismissKt$SwipeToDismiss$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final FractionalThreshold invoke(@NotNull DismissDirection it) {
        t.j(it, "it");
        return new FractionalThreshold(0.5f);
    }
}
