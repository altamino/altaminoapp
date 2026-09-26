package m3;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class b {
    private boolean expanded = false;

    @IdRes
    private int expandedComponentIdHint = 0;

    @NonNull
    private final View widget;

    @IdRes
    public int b() {
        return this.expandedComponentIdHint;
    }

    public boolean c() {
        return this.expanded;
    }

    public void f(@IdRes int i10) {
        this.expandedComponentIdHint = i10;
    }

    private void a() {
        ViewParent parent = this.widget.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.widget);
        }
    }

    public void d(@NonNull Bundle bundle) {
        this.expanded = bundle.getBoolean("expanded", false);
        this.expandedComponentIdHint = bundle.getInt("expandedComponentIdHint", 0);
        if (this.expanded) {
            a();
        }
    }

    @NonNull
    public Bundle e() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.expanded);
        bundle.putInt("expandedComponentIdHint", this.expandedComponentIdHint);
        return bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(a aVar) {
        this.widget = (View) aVar;
    }
}
