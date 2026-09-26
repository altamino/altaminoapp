package androidx.compose.ui.graphics.vector;

import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorComposeKt$Path$2$1 extends v implements p<PathComponent, String, l0> {
    public static final VectorComposeKt$Path$2$1 INSTANCE = new VectorComposeKt$Path$2$1();

    VectorComposeKt$Path$2$1() {
        super(2);
    }

    public final void a(@NotNull PathComponent set, @NotNull String it) {
        t.j(set, "$this$set");
        t.j(it, "it");
        set.h(it);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(PathComponent pathComponent, String str) {
        a(pathComponent, str);
        return l0.INSTANCE;
    }
}
