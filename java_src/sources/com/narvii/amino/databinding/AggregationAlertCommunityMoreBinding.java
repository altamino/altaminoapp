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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class AggregationAlertCommunityMoreBinding implements ViewBinding {

    @NonNull
    public final LinearLayout clearAll;

    @NonNull
    public final TintButton clearAllIcon;

    @NonNull
    public final TextView clearAllText;

    @NonNull
    public final SameChildWidthLinearLayout main;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final LinearLayout settings;

    @NonNull
    public static AggregationAlertCommunityMoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AggregationAlertCommunityMoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.aggregation_alert_community_more, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AggregationAlertCommunityMoreBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull SameChildWidthLinearLayout sameChildWidthLinearLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = frameLayout;
        this.clearAll = linearLayout;
        this.clearAllIcon = tintButton;
        this.clearAllText = textView;
        this.main = sameChildWidthLinearLayout;
        this.settings = linearLayout2;
    }

    @NonNull
    public static AggregationAlertCommunityMoreBinding bind(@NonNull View view) {
        int i10 = R.id.clear_all;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.clear_all);
        if (linearLayout != null) {
            i10 = R.id.clear_all_icon;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.clear_all_icon);
            if (tintButton != null) {
                i10 = R.id.clear_all_text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.clear_all_text);
                if (textView != null) {
                    i10 = R.id.main;
                    SameChildWidthLinearLayout sameChildWidthLinearLayout = (SameChildWidthLinearLayout) ViewBindings.a(view, R.id.main);
                    if (sameChildWidthLinearLayout != null) {
                        i10 = R.id.settings;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.settings);
                        if (linearLayout2 != null) {
                            return new AggregationAlertCommunityMoreBinding((FrameLayout) view, linearLayout, tintButton, textView, sameChildWidthLinearLayout, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
