package androidx.compose.ui.graphics.vector;

import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorComposeKt$Group$2$7 extends v implements p<GroupComponent, Float, l0> {
    public static final VectorComposeKt$Group$2$7 INSTANCE = new VectorComposeKt$Group$2$7();

    VectorComposeKt$Group$2$7() {
        super(2);
    }

    public final void a(@NotNull GroupComponent set, float f) {
        t.j(set, "$this$set");
        set.r(f);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(GroupComponent groupComponent, Float f) {
        a(groupComponent, f.floatValue());
        return l0.INSTANCE;
    }
}
