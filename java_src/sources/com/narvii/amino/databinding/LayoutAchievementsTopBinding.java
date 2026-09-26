package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.BoldBorderRankingTitleView;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutAchievementsTopBinding implements ViewBinding {

    @NonNull
    public final ImageView badge;

    @NonNull
    public final BoldBorderRankingTitleView rankingTitle;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView seeAllRanks;

    @NonNull
    public final TextView title;

    @NonNull
    public static LayoutAchievementsTopBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutAchievementsTopBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_achievements_top, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutAchievementsTopBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull BoldBorderRankingTitleView boldBorderRankingTitleView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.badge = imageView;
        this.rankingTitle = boldBorderRankingTitleView;
        this.seeAllRanks = textView;
        this.title = textView2;
    }

    @NonNull
    public static LayoutAchievementsTopBinding bind(@NonNull View view) {
        int i10 = R.id.badge;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.badge);
        if (imageView != null) {
            i10 = R.id.ranking_title;
            BoldBorderRankingTitleView boldBorderRankingTitleView = (BoldBorderRankingTitleView) ViewBindings.a(view, R.id.ranking_title);
            if (boldBorderRankingTitleView != null) {
                i10 = R.id.see_all_ranks;
                TextView textView = (TextView) ViewBindings.a(view, R.id.see_all_ranks);
                if (textView != null) {
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView2 != null) {
                        return new LayoutAchievementsTopBinding((LinearLayout) view, imageView, boldBorderRankingTitleView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
