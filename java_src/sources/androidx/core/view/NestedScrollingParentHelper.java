package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes10.dex */
public class NestedScrollingParentHelper {
    private int mNestedScrollAxesNonTouch;
    private int mNestedScrollAxesTouch;

    public int a() {
        return this.mNestedScrollAxesTouch | this.mNestedScrollAxesNonTouch;
    }

    public void b(@NonNull View view, @NonNull View view2, int i10) {
        c(view, view2, i10, 0);
    }

    public void c(@NonNull View view, @NonNull View view2, int i10, int i11) {
        if (i11 == 1) {
            this.mNestedScrollAxesNonTouch = i10;
        } else {
            this.mNestedScrollAxesTouch = i10;
        }
    }

    public void d(@NonNull View view) {
        e(view, 0);
    }

    public void e(@NonNull View view, int i10) {
        if (i10 == 1) {
            this.mNestedScrollAxesNonTouch = 0;
        } else {
            this.mNestedScrollAxesTouch = 0;
        }
    }

    public NestedScrollingParentHelper(@NonNull ViewGroup viewGroup) {
    }
}
