package androidx.compose.runtime;

import java.util.Iterator;
import java.util.Set;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class SnapshotStateKt__SnapshotFlowKt {
    @Composable
    @NotNull
    public static final <T extends R, R> State<R> b(@NotNull g<? extends T> gVar, R r, @Nullable kotlin.coroutines.g gVar2, @Nullable Composer composer, int i10, int i11) {
        t.j(gVar, "<this>");
        composer.G(-606625098);
        if ((i11 & 2) != 0) {
            gVar2 = h.INSTANCE;
        }
        kotlin.coroutines.g gVar3 = gVar2;
        int i12 = i10 >> 3;
        State<R> stateK = SnapshotStateKt.k(r, gVar, gVar3, new SnapshotStateKt__SnapshotFlowKt$collectAsState$1(gVar3, gVar, null), composer, (i12 & 8) | 576 | (i12 & 14));
        composer.Q();
        return stateK;
    }

    @Composable
    @NotNull
    public static final <T> State<T> c(@NotNull l0<? extends T> l0Var, @Nullable kotlin.coroutines.g gVar, @Nullable Composer composer, int i10, int i11) {
        t.j(l0Var, "<this>");
        composer.G(-1439883919);
        if ((i11 & 1) != 0) {
            gVar = h.INSTANCE;
        }
        State<T> stateA = SnapshotStateKt.a(l0Var, l0Var.getValue(), gVar, composer, 520, 0);
        composer.Q();
        return stateA;
    }

    @NotNull
    public static final <T> g<T> e(@NotNull e8.a<? extends T> block) {
        t.j(block, "block");
        return i.y(new SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1(block, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> boolean d(Set<? extends T> set, Set<? extends T> set2) {
        if (set.size() < set2.size()) {
            if (!set.isEmpty()) {
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    if (set2.contains(it.next())) {
                        return true;
                    }
                }
            }
        } else if (!set2.isEmpty()) {
            Iterator<T> it2 = set2.iterator();
            while (it2.hasNext()) {
                if (set.contains(it2.next())) {
                    return true;
                }
            }
        }
        return false;
    }
}
