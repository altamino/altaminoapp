package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
class ViewUtilsApi19 extends ViewUtilsBase {
    private static boolean sTryHiddenTransitionAlpha = true;

    @Override // androidx.transition.ViewUtilsBase
    public void a(@NonNull View view) {
    }

    @Override // androidx.transition.ViewUtilsBase
    public void d(@NonNull View view) {
    }

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    public float c(@NonNull View view) {
        if (sTryHiddenTransitionAlpha) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        return view.getAlpha();
    }

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    public void g(@NonNull View view, float f) {
        if (sTryHiddenTransitionAlpha) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        view.setAlpha(f);
    }

    ViewUtilsApi19() {
    }
}
