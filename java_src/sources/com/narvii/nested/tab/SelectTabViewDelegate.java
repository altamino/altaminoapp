package com.narvii.nested.tab;

import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.narvii.lib.R;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class SelectTabViewDelegate implements UpdateTabViewDelegate {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final float MAX_TEXT_SIZE_DP = 17.0f;
    public static final float MIN_TEXT_SIZE_DP = 14.0f;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.narvii.nested.tab.UpdateTabViewDelegate
    public void onScrolled(@Nullable View view, int i10, float f) {
    }

    @Override // com.narvii.nested.tab.UpdateTabViewDelegate
    public void onSelected(@Nullable View view, int i10, boolean z6) {
        TextView textView = view != null ? (TextView) view.findViewById(R.id.tab_title) : null;
        if (textView != null) {
            textView.setTextColor(-1);
        }
        if (textView != null) {
            textView.setTypeface(z6 ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
        }
        if (textView != null) {
            textView.setAlpha(z6 ? 1.0f : 0.7f);
        }
        if (textView != null) {
            textView.setTextSize(1, z6 ? 17.0f : 14.0f);
        }
    }
}
