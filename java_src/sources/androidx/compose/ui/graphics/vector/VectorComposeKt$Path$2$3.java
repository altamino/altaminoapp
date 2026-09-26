package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.PathFillType;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorComposeKt$Path$2$3 extends v implements p<PathComponent, PathFillType, l0> {
    public static final VectorComposeKt$Path$2$3 INSTANCE = new VectorComposeKt$Path$2$3();

    VectorComposeKt$Path$2$3() {
        super(2);
    }

    public final void a(@NotNull PathComponent set, int i10) {
        t.j(set, "$this$set");
        set.j(i10);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(PathComponent pathComponent, PathFillType pathFillType) {
        a(pathComponent, pathFillType.i());
        return l0.INSTANCE;
    }
}
