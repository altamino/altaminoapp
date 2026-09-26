package androidx.viewbinding;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class ViewBindings {
    @Nullable
    public static <T extends View> T a(View view, @IdRes int i10) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            T t5 = (T) viewGroup.getChildAt(i11).findViewById(i10);
            if (t5 != null) {
                return t5;
            }
        }
        return null;
    }

    private ViewBindings() {
    }
}
