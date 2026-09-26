package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.StrokeCap;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorComposeKt$Path$2$10 extends v implements p<PathComponent, StrokeCap, l0> {
    public static final VectorComposeKt$Path$2$10 INSTANCE = new VectorComposeKt$Path$2$10();

    VectorComposeKt$Path$2$10() {
        super(2);
    }

    public final void a(@NotNull PathComponent set, int i10) {
        t.j(set, "$this$set");
        set.m(i10);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(PathComponent pathComponent, StrokeCap strokeCap) {
        a(pathComponent, strokeCap.j());
        return l0.INSTANCE;
    }
}
