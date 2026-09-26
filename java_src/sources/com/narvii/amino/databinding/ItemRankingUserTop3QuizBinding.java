package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;
import com.narvii.widget.RankingTitleView;
import com.narvii.widget.Top3UserLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemRankingUserTop3QuizBinding implements ViewBinding {

    @NonNull
    public final NicknameView name;

    @NonNull
    public final TextView quizNoPlayed;

    @NonNull
    public final RankingTitleView rankingBadge;

    @NonNull
    public final FrameLayout rankingBadgeLayout;

    @NonNull
    public final TextView rankingScore;

    @NonNull
    private final Top3UserLayout rootView;

    @NonNull
    public final TextView userRankingNo;

    @NonNull
    public static ItemRankingUserTop3QuizBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public Top3UserLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemRankingUserTop3QuizBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_ranking_user_top3_quiz, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemRankingUserTop3QuizBinding(@NonNull Top3UserLayout top3UserLayout, @NonNull NicknameView nicknameView, @NonNull TextView textView, @NonNull RankingTitleView rankingTitleView, @NonNull FrameLayout frameLayout, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = top3UserLayout;
        this.name = nicknameView;
        this.quizNoPlayed = textView;
        this.rankingBadge = rankingTitleView;
        this.rankingBadgeLayout = frameLayout;
        this.rankingScore = textView2;
        this.userRankingNo = textView3;
    }

    @NonNull
    public static ItemRankingUserTop3QuizBinding bind(@NonNull View view) {
        int i10 = R.id.name;
        NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.name);
        if (nicknameView != null) {
            i10 = R.id.quiz_no_played;
            TextView textView = (TextView) ViewBindings.a(view, R.id.quiz_no_played);
            if (textView != null) {
                i10 = R.id.ranking_badge;
                RankingTitleView rankingTitleView = (RankingTitleView) ViewBindings.a(view, R.id.ranking_badge);
                if (rankingTitleView != null) {
                    i10 = R.id.ranking_badge_layout;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.ranking_badge_layout);
                    if (frameLayout != null) {
                        i10 = R.id.ranking_score;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.ranking_score);
                        if (textView2 != null) {
                            i10 = R.id.user_ranking_no;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.user_ranking_no);
                            if (textView3 != null) {
                                return new ItemRankingUserTop3QuizBinding((Top3UserLayout) view, nicknameView, textView, rankingTitleView, frameLayout, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
