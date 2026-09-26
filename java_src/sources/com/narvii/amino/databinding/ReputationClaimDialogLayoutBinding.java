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
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class ReputationClaimDialogLayoutBinding implements ViewBinding {

    @NonNull
    public final ImageView buttonClose;

    @NonNull
    public final TextView claimedReputation;

    @NonNull
    public final TextView duration;

    @NonNull
    public final TextView durationLabel;

    @NonNull
    public final TextView reputationClaimContent;

    @NonNull
    public final SpinningView reputationClaimLoading;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView viewers;

    @NonNull
    public final TextView viewersLabel;

    @NonNull
    public static ReputationClaimDialogLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ReputationClaimDialogLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.reputation_claim_dialog_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ReputationClaimDialogLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SpinningView spinningView, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView = relativeLayout;
        this.buttonClose = imageView;
        this.claimedReputation = textView;
        this.duration = textView2;
        this.durationLabel = textView3;
        this.reputationClaimContent = textView4;
        this.reputationClaimLoading = spinningView;
        this.viewers = textView5;
        this.viewersLabel = textView6;
    }

    @NonNull
    public static ReputationClaimDialogLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.button_close;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.button_close);
        if (imageView != null) {
            i10 = R.id.claimed_reputation;
            TextView textView = (TextView) ViewBindings.a(view, R.id.claimed_reputation);
            if (textView != null) {
                i10 = R.id.duration;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.duration);
                if (textView2 != null) {
                    i10 = R.id.duration_label;
                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.duration_label);
                    if (textView3 != null) {
                        i10 = R.id.reputation_claim_content;
                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.reputation_claim_content);
                        if (textView4 != null) {
                            i10 = R.id.reputation_claim_loading;
                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.reputation_claim_loading);
                            if (spinningView != null) {
                                i10 = R.id.viewers;
                                TextView textView5 = (TextView) ViewBindings.a(view, R.id.viewers);
                                if (textView5 != null) {
                                    i10 = R.id.viewers_label;
                                    TextView textView6 = (TextView) ViewBindings.a(view, R.id.viewers_label);
                                    if (textView6 != null) {
                                        return new ReputationClaimDialogLayoutBinding((RelativeLayout) view, imageView, textView, textView2, textView3, textView4, spinningView, textView5, textView6);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
