package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.util.layouts.NVFlowLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class InterestPickerLayoutSubInterestItemBinding implements ViewBinding {

    @NonNull
    public final LinearLayout interestLayout;

    @NonNull
    public final TextView interestName;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVFlowLayout topicFlow;

    @NonNull
    public static InterestPickerLayoutSubInterestItemBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.interest_name;
        TextView textView = (TextView) ViewBindings.a(view, R.id.interest_name);
        if (textView != null) {
            i10 = R.id.topic_flow;
            NVFlowLayout nVFlowLayout = (NVFlowLayout) ViewBindings.a(view, R.id.topic_flow);
            if (nVFlowLayout != null) {
                return new InterestPickerLayoutSubInterestItemBinding(linearLayout, linearLayout, textView, nVFlowLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static InterestPickerLayoutSubInterestItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InterestPickerLayoutSubInterestItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.interest_picker_layout_sub_interest_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InterestPickerLayoutSubInterestItemBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull NVFlowLayout nVFlowLayout) {
        this.rootView = linearLayout;
        this.interestLayout = linearLayout2;
        this.interestName = textView;
        this.topicFlow = nVFlowLayout;
    }
}
