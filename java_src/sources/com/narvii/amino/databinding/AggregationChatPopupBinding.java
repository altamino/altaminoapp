package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SameChildWidthLinearLayout;

/* JADX INFO: loaded from: classes11.dex */
public final class AggregationChatPopupBinding implements ViewBinding {

    @NonNull
    public final View divider;

    @NonNull
    public final LinearLayout inbound;

    @NonNull
    public final TextView inboundText;

    @NonNull
    public final SameChildWidthLinearLayout main;

    @NonNull
    public final LinearLayout manage;

    @NonNull
    public final TextView manageText;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static AggregationChatPopupBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AggregationChatPopupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.aggregation_chat_popup, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AggregationChatPopupBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SameChildWidthLinearLayout sameChildWidthLinearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.divider = view;
        this.inbound = linearLayout;
        this.inboundText = textView;
        this.main = sameChildWidthLinearLayout;
        this.manage = linearLayout2;
        this.manageText = textView2;
    }

    @NonNull
    public static AggregationChatPopupBinding bind(@NonNull View view) {
        int i10 = R.id.divider;
        View viewA = ViewBindings.a(view, R.id.divider);
        if (viewA != null) {
            i10 = R.id.inbound;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.inbound);
            if (linearLayout != null) {
                i10 = R.id.inbound_text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.inbound_text);
                if (textView != null) {
                    i10 = R.id.main;
                    SameChildWidthLinearLayout sameChildWidthLinearLayout = (SameChildWidthLinearLayout) ViewBindings.a(view, R.id.main);
                    if (sameChildWidthLinearLayout != null) {
                        i10 = R.id.manage;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.manage);
                        if (linearLayout2 != null) {
                            i10 = R.id.manage_text;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.manage_text);
                            if (textView2 != null) {
                                return new AggregationChatPopupBinding((FrameLayout) view, viewA, linearLayout, textView, sameChildWidthLinearLayout, linearLayout2, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
