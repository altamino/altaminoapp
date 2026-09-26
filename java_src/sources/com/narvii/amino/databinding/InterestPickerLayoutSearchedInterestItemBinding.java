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
import com.narvii.util.layouts.NVFlowLayout;

/* JADX INFO: loaded from: classes3.dex */
public final class InterestPickerLayoutSearchedInterestItemBinding implements ViewBinding {

    @NonNull
    public final LinearLayout interestLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVFlowLayout topicFlow;

    @NonNull
    public static InterestPickerLayoutSearchedInterestItemBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        NVFlowLayout nVFlowLayout = (NVFlowLayout) ViewBindings.a(view, R.id.topic_flow);
        if (nVFlowLayout != null) {
            return new InterestPickerLayoutSearchedInterestItemBinding(linearLayout, linearLayout, nVFlowLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.topic_flow)));
    }

    @NonNull
    public static InterestPickerLayoutSearchedInterestItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InterestPickerLayoutSearchedInterestItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.interest_picker_layout_searched_interest_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InterestPickerLayoutSearchedInterestItemBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull NVFlowLayout nVFlowLayout) {
        this.rootView = linearLayout;
        this.interestLayout = linearLayout2;
        this.topicFlow = nVFlowLayout;
    }
}
