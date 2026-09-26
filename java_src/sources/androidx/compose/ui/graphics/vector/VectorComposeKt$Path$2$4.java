package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Brush;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorComposeKt$Path$2$4 extends v implements p<PathComponent, Brush, l0> {
    public static final VectorComposeKt$Path$2$4 INSTANCE = new VectorComposeKt$Path$2$4();

    VectorComposeKt$Path$2$4() {
        super(2);
    }

    public final void a(@NotNull PathComponent set, @Nullable Brush brush) {
        t.j(set, "$this$set");
        set.f(brush);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(PathComponent pathComponent, Brush brush) {
        a(pathComponent, brush);
        return l0.INSTANCE;
    }
}
