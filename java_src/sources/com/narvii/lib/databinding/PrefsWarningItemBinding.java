package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.app.theme.view.NVThemeRelativeLayout;
import com.narvii.app.theme.view.NVThemeTintButton;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class PrefsWarningItemBinding implements ViewBinding {

    @NonNull
    public final NVThemeTintButton chevronRight;

    @NonNull
    private final NVThemeRelativeLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public final TextView text2;

    @NonNull
    public final TextView warningInfo;

    @NonNull
    public static PrefsWarningItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeRelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsWarningItemBinding bind(@NonNull View view) {
        int i10 = R.id.chevron_right;
        NVThemeTintButton nVThemeTintButton = (NVThemeTintButton) ViewBindings.a(view, i10);
        if (nVThemeTintButton != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.text2;
                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                if (textView2 != null) {
                    i10 = R.id.warning_info;
                    TextView textView3 = (TextView) ViewBindings.a(view, i10);
                    if (textView3 != null) {
                        return new PrefsWarningItemBinding((NVThemeRelativeLayout) view, nVThemeTintButton, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PrefsWarningItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_warning_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsWarningItemBinding(@NonNull NVThemeRelativeLayout nVThemeRelativeLayout, @NonNull NVThemeTintButton nVThemeTintButton, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = nVThemeRelativeLayout;
        this.chevronRight = nVThemeTintButton;
        this.text = textView;
        this.text2 = textView2;
        this.warningInfo = textView3;
    }
}
