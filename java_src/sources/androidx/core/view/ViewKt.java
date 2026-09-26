package androidx.core.view;

import android.view.View;
import android.view.ViewParent;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class ViewKt {
    @NotNull
    public static final kotlin.sequences.g<View> a(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "<this>");
        return kotlin.sequences.k.b(new ViewKt$allViews$1(view, null));
    }

    @NotNull
    public static final kotlin.sequences.g<ViewParent> b(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "<this>");
        return kotlin.sequences.m.f(view.getParent(), ViewKt$ancestors$1.INSTANCE);
    }
}
