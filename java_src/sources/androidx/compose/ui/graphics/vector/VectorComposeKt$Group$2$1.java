package androidx.compose.ui.graphics.vector;

import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorComposeKt$Group$2$1 extends v implements p<GroupComponent, String, l0> {
    public static final VectorComposeKt$Group$2$1 INSTANCE = new VectorComposeKt$Group$2$1();

    VectorComposeKt$Group$2$1() {
        super(2);
    }

    public final void a(@NotNull GroupComponent set, @NotNull String it) {
        t.j(set, "$this$set");
        t.j(it, "it");
        set.l(it);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(GroupComponent groupComponent, String str) {
        a(groupComponent, str);
        return l0.INSTANCE;
    }
}
