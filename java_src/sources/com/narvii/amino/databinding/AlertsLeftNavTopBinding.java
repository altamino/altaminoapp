package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class AlertsLeftNavTopBinding implements ViewBinding {

    @NonNull
    public final ItemGlobalAggregationBinding globalLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FrameLayout teamAminoLayout;

    @NonNull
    public final ImageView teamAminoSelected;

    @NonNull
    public static AlertsLeftNavTopBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AlertsLeftNavTopBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.alerts_left_nav_top, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AlertsLeftNavTopBinding(@NonNull LinearLayout linearLayout, @NonNull ItemGlobalAggregationBinding itemGlobalAggregationBinding, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.globalLayout = itemGlobalAggregationBinding;
        this.teamAminoLayout = frameLayout;
        this.teamAminoSelected = imageView;
    }

    @NonNull
    public static AlertsLeftNavTopBinding bind(@NonNull View view) {
        int i10 = R.id.global_layout;
        View viewA = ViewBindings.a(view, R.id.global_layout);
        if (viewA != null) {
            ItemGlobalAggregationBinding itemGlobalAggregationBindingBind = ItemGlobalAggregationBinding.bind(viewA);
            int i11 = R.id.team_amino_layout;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.team_amino_layout);
            if (frameLayout != null) {
                i11 = R.id.team_amino_selected;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.team_amino_selected);
                if (imageView != null) {
                    return new AlertsLeftNavTopBinding((LinearLayout) view, itemGlobalAggregationBindingBind, frameLayout, imageView);
                }
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
