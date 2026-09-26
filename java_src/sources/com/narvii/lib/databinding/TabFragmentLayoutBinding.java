package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class TabFragmentLayoutBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FrameLayout tabFragmentContainer;

    @NonNull
    public final LinearLayout tabFragmentFrame;

    @NonNull
    public final RadioGroup tabFragmentGroup;

    @NonNull
    public static TabFragmentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TabFragmentLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.tab_fragment_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
        if (frameLayout != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            int i11 = R.id.tab_fragment_group;
            RadioGroup radioGroup = (RadioGroup) ViewBindings.a(view, i11);
            if (radioGroup != null) {
                return new TabFragmentLayoutBinding(linearLayout, frameLayout, linearLayout, radioGroup);
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static TabFragmentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.tab_fragment_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private TabFragmentLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull RadioGroup radioGroup) {
        this.rootView = linearLayout;
        this.tabFragmentContainer = frameLayout;
        this.tabFragmentFrame = linearLayout2;
        this.tabFragmentGroup = radioGroup;
    }
}
