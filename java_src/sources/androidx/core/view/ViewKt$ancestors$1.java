package androidx.core.view;

import android.view.ViewParent;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
/* synthetic */ class ViewKt$ancestors$1 extends kotlin.jvm.internal.q implements e8.l<ViewParent, ViewParent> {
    public static final ViewKt$ancestors$1 INSTANCE = new ViewKt$ancestors$1();

    ViewKt$ancestors$1() {
        super(1, ViewParent.class, "getParent", "getParent()Landroid/view/ViewParent;", 0);
    }

    @Override // e8.l
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ViewParent invoke(@NotNull ViewParent p0) {
        kotlin.jvm.internal.t.j(p0, "p0");
        return p0.getParent();
    }
}
