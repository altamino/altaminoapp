package com.narvii.nested.tab;

import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.narvii.lib.R;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: UpdateTabViewDelegate.kt */
/* loaded from: classes3.dex */
public final class SelectTabViewDelegate implements UpdateTabViewDelegate {
    public static final Companion Companion = new Companion(null);
    public static final float MAX_TEXT_SIZE_DP = 17.0f;
    public static final float MIN_TEXT_SIZE_DP = 14.0f;

    @Override // com.narvii.nested.tab.UpdateTabViewDelegate
    public void onScrolled(View view, int i, float f) {
    }

    /* compiled from: UpdateTabViewDelegate.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.nested.tab.UpdateTabViewDelegate
    public void onSelected(View view, int i, boolean z) {
        TextView textView = view != null ? (TextView) view.findViewById(R.id.tab_title) : null;
        if (textView != null) {
            textView.setTextColor(-1);
        }
        if (textView != null) {
            textView.setTypeface(z ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
        }
        if (textView != null) {
            textView.setAlpha(z ? 1.0f : 0.7f);
        }
        if (textView != null) {
            textView.setTextSize(1, z ? 17.0f : 14.0f);
        }
    }
}
