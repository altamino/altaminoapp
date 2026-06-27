package com.narvii.nested.tab;

import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.widget.ScaleView;

/* compiled from: UpdateTabViewDelegate.kt */
/* loaded from: classes3.dex */
public final class ScrollTabViewDelegate implements UpdateTabViewDelegate {
    @Override // com.narvii.nested.tab.UpdateTabViewDelegate
    public void onSelected(View view, int i, boolean z) {
    }

    @Override // com.narvii.nested.tab.UpdateTabViewDelegate
    public void onScrolled(View view, int i, float f) {
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
        double d = f;
        Double.isNaN(d);
        textView.setAlpha((float) ((d * 0.3d) + 0.7d));
    }
}
