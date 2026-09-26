package com.narvii.nested.tab;

import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.widget.ScaleView;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class ScrollTabViewDelegate implements UpdateTabViewDelegate {
    @Override // com.narvii.nested.tab.UpdateTabViewDelegate
    public void onSelected(@Nullable View view, int i10, boolean z6) {
    }

    @Override // com.narvii.nested.tab.UpdateTabViewDelegate
    public void onScrolled(@Nullable View view, int i10, float f) {
        TextView textView = view != null ? (TextView) view.findViewById(R.id.tab_title) : null;
        if (view == null || textView == null) {
            return;
        }
        textView.setTextColor(-1);
        if (f > 0.98f) {
            f = 1.0f;
        } else if (f < 0.02f) {
            f = 0.0f;
        }
        if (view instanceof ScaleView) {
            ((ScaleView) view).setScale(((1.214f - 1) * f) + 1.0f);
        }
        textView.setTypeface(f > 0.3f ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
        textView.setAlpha((float) ((((double) f) * 0.3d) + 0.7d));
    }
}
