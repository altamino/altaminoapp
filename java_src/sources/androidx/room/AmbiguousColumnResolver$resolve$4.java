package androidx.room;

import java.util.List;
import kotlin.jvm.internal.p0;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class AmbiguousColumnResolver$resolve$4 extends kotlin.jvm.internal.v implements e8.l<List<? extends AmbiguousColumnResolver.Match>, l0> {
    final /* synthetic */ p0<AmbiguousColumnResolver.Solution> $bestSolution;

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(List<? extends AmbiguousColumnResolver.Match> list) {
        invoke2((List<AmbiguousColumnResolver.Match>) list);
        return l0.INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull List<AmbiguousColumnResolver.Match> it) {
        kotlin.jvm.internal.t.j(it, "it");
        ?? A = AmbiguousColumnResolver.Solution.Companion.a(it);
        if (A.compareTo(this.$bestSolution.element) < 0) {
            this.$bestSolution.element = A;
        }
    }
}
