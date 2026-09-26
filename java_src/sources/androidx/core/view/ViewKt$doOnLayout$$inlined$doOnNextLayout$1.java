package androidx.core.view;

import android.view.View;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class ViewKt$doOnLayout$$inlined$doOnNextLayout$1 implements View.OnLayoutChangeListener {
    final /* synthetic */ e8.l $action$inlined;

    public ViewKt$doOnLayout$$inlined$doOnNextLayout$1(e8.l lVar) {
        this.$action$inlined = lVar;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(@NotNull View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        kotlin.jvm.internal.t.j(view, "view");
        view.removeOnLayoutChangeListener(this);
        this.$action$inlined.invoke(view);
    }
}
