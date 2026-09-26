package com.narvii.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes.dex */
public class Top3UserLayout extends FlexLayout {
    UserAvatarLayout avatar;
    ImageView ivNo;
    RankingTitleView rankingTitleView;
    NicknameView tvName;
    TextView tvNo;
    TextView tvQuizNoPlayed;
    TextView tvScore;

    public Top3UserLayout(Context context) {
        this(context, null);
    }

    private int getRankingNoResource(int i10) {
        if (i10 == 1) {
            return R.drawable.ic_medal_first;
        }
        if (i10 != 2) {
            return i10 != 3 ? R.drawable.ic_medal_first : R.drawable.ic_medal_third;
        }
        return R.drawable.ic_medal_second;
    }

    public Top3UserLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setScore(String str) {
        TextView textView = this.tvScore;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setUser(User user, int i10, NVContext nVContext) {
        if (user == null) {
            return;
        }
        UserAvatarLayout userAvatarLayout = this.avatar;
        if (userAvatarLayout != null) {
            userAvatarLayout.setAvatarShadow(Utils.dpToPxInt(getContext(), 5.0f), Color.parseColor("#c0000000"), false);
            this.avatar.setAvatarStroke(3.0f, false);
            this.avatar.setUser(user);
        }
        TextView textView = this.tvNo;
        if (textView != null) {
            int i11 = i10 + 1;
            textView.setText(String.valueOf(i11));
            this.tvNo.setBackgroundDrawable(getRankingNoDrawable(i11));
        }
        ImageView imageView = this.ivNo;
        if (imageView != null) {
            imageView.setImageResource(getRankingNoResource(i10 + 1));
        }
        NicknameView nicknameView = this.tvName;
        if (nicknameView != null) {
            nicknameView.setUser(user);
        }
        RankingTitleView rankingTitleView = this.rankingTitleView;
        if (rankingTitleView != null) {
            rankingTitleView.setUser(user, nVContext);
        }
        TextView textView2 = this.tvQuizNoPlayed;
        if (textView2 != null) {
            textView2.setText(getContext().getResources().getString(R.string.quiz_no_played, Integer.valueOf(user.totalQuizPlayedTimes)));
        }
    }

    public Top3UserLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    private Drawable getRankingNoDrawable(int i10) {
        int color = getResources().getColor(R.color.ranking_no_1);
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    color = getResources().getColor(R.color.ranking_no_3);
                }
            } else {
                color = getResources().getColor(R.color.ranking_no_2);
            }
        } else {
            color = getResources().getColor(R.color.ranking_no_1);
        }
        LayerDrawable layerDrawable = (LayerDrawable) getResources().getDrawable(R.drawable.ranking_number);
        layerDrawable.findDrawableByLayerId(R.id.top).setColorFilter(color, PorterDuff.Mode.SRC_ATOP);
        return layerDrawable;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.avatar = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.tvNo = (TextView) findViewById(R.id.user_ranking_no);
        this.ivNo = (ImageView) findViewById(R.id.user_no_image);
        this.tvName = (NicknameView) findViewById(R.id.name);
        this.rankingTitleView = (RankingTitleView) findViewById(R.id.ranking_badge);
        this.tvScore = (TextView) findViewById(R.id.ranking_score);
        this.tvQuizNoPlayed = (TextView) findViewById(R.id.quiz_no_played);
    }
}
