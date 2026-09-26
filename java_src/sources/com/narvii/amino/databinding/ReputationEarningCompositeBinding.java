package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class ReputationEarningCompositeBinding implements ViewBinding {

    @NonNull
    public final ImageView drops;

    @NonNull
    public final TextView repValueAlert;

    @NonNull
    public final TextView repValueLabel;

    @NonNull
    public final ThumbImageView reputationBubble;

    @NonNull
    public final RelativeLayout reputationComposite;

    @NonNull
    public final TextView reputationValue;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static ReputationEarningCompositeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ReputationEarningCompositeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.reputation_earning_composite, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ReputationEarningCompositeBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView3) {
        this.rootView = relativeLayout;
        this.drops = imageView;
        this.repValueAlert = textView;
        this.repValueLabel = textView2;
        this.reputationBubble = thumbImageView;
        this.reputationComposite = relativeLayout2;
        this.reputationValue = textView3;
    }

    @NonNull
    public static ReputationEarningCompositeBinding bind(@NonNull View view) {
        int i10 = R.id.drops;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.drops);
        if (imageView != null) {
            i10 = R.id.rep_value_alert;
            TextView textView = (TextView) ViewBindings.a(view, R.id.rep_value_alert);
            if (textView != null) {
                i10 = R.id.rep_value_label;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.rep_value_label);
                if (textView2 != null) {
                    i10 = R.id.reputation_bubble;
                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.reputation_bubble);
                    if (thumbImageView != null) {
                        RelativeLayout relativeLayout = (RelativeLayout) view;
                        i10 = R.id.reputation_value;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.reputation_value);
                        if (textView3 != null) {
                            return new ReputationEarningCompositeBinding(relativeLayout, imageView, textView, textView2, thumbImageView, relativeLayout, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
