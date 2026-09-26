package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes6.dex */
public final class FlagListLayoutBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView flagIcon;

    @NonNull
    public final LinearLayout resolveFlagLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FlagListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlagListLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.flagIcon = fontAwesomeView;
        this.resolveFlagLayout = linearLayout2;
    }

    @NonNull
    public static FlagListLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.flag_icon;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.flag_icon);
        if (fontAwesomeView != null) {
            i10 = R.id.resolve_flag_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.resolve_flag_layout);
            if (linearLayout != null) {
                return new FlagListLayoutBinding((LinearLayout) view, fontAwesomeView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
