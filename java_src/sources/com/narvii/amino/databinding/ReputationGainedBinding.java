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
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.ExactRankingTitleView;
import com.narvii.widget.StrokedTextView;

/* JADX INFO: loaded from: classes8.dex */
public final class ReputationGainedBinding implements ViewBinding {

    @NonNull
    public final LinearLayout main;

    @NonNull
    public final FlexLayout mainLayout;

    @NonNull
    public final ExactRankingTitleView rankingTitleView;

    @NonNull
    public final TextView reputationGained;

    @NonNull
    public final FlexLayout reputationGainedLayout;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final StrokedTextView rp;

    @NonNull
    public final TextView title;

    @NonNull
    public static ReputationGainedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ReputationGainedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.reputation_gained, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ReputationGainedBinding(@NonNull FlexLayout flexLayout, @NonNull LinearLayout linearLayout, @NonNull FlexLayout flexLayout2, @NonNull ExactRankingTitleView exactRankingTitleView, @NonNull TextView textView, @NonNull FlexLayout flexLayout3, @NonNull StrokedTextView strokedTextView, @NonNull TextView textView2) {
        this.rootView = flexLayout;
        this.main = linearLayout;
        this.mainLayout = flexLayout2;
        this.rankingTitleView = exactRankingTitleView;
        this.reputationGained = textView;
        this.reputationGainedLayout = flexLayout3;
        this.rp = strokedTextView;
        this.title = textView2;
    }

    @NonNull
    public static ReputationGainedBinding bind(@NonNull View view) {
        int i10 = R.id.main;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.main);
        if (linearLayout != null) {
            i10 = R.id.main_layout;
            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.main_layout);
            if (flexLayout != null) {
                i10 = R.id.ranking_title_view;
                ExactRankingTitleView exactRankingTitleView = (ExactRankingTitleView) ViewBindings.a(view, R.id.ranking_title_view);
                if (exactRankingTitleView != null) {
                    i10 = R.id.reputation_gained;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.reputation_gained);
                    if (textView != null) {
                        FlexLayout flexLayout2 = (FlexLayout) view;
                        i10 = R.id.rp;
                        StrokedTextView strokedTextView = (StrokedTextView) ViewBindings.a(view, R.id.rp);
                        if (strokedTextView != null) {
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView2 != null) {
                                return new ReputationGainedBinding(flexLayout2, linearLayout, flexLayout, exactRankingTitleView, textView, flexLayout2, strokedTextView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
