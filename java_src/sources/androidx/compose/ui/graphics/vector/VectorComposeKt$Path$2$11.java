package androidx.compose.ui.graphics.vector;

import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorComposeKt$Path$2$11 extends v implements p<PathComponent, Float, l0> {
    public static final VectorComposeKt$Path$2$11 INSTANCE = new VectorComposeKt$Path$2$11();

    VectorComposeKt$Path$2$11() {
        super(2);
    }

    public final void a(@NotNull PathComponent set, float f) {
        t.j(set, "$this$set");
        set.o(f);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(PathComponent pathComponent, Float f) {
        a(pathComponent, f.floatValue());
        return l0.INSTANCE;
    }
}
