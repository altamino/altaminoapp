package com.narvii.tipping;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.mastes.R;
import com.narvii.model.User;
import com.narvii.tipping.model.TipLog;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;

/* loaded from: classes3.dex */
public class TippingListItemCell extends FlexLayout {
    UserAvatarLayout avatar;
    ImageView followedCheck;
    NicknameView nicknameView;
    TextView rank;
    View rankFrame;
    ImageView rankIcon;
    TippingThanksView thanksView;
    TextView tippingCoin;
    View tippingContainer;
    TextView tippingDesc;
    FrameLayout userFollow;

    public TippingListItemCell(Context context) {
        super(context);
    }

    public TippingListItemCell(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TippingListItemCell(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.rank = (TextView) findViewById(R.id.rank);
        this.avatar = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.nicknameView = (NicknameView) findViewById(R.id.nickname);
        this.tippingDesc = (TextView) findViewById(R.id.tipping_desc);
        this.thanksView = (TippingThanksView) findViewById(R.id.tipping_thanks_view);
        this.rankIcon = (ImageView) findViewById(R.id.rank_icon);
        this.tippingContainer = findViewById(R.id.tipping_container);
        this.tippingCoin = (TextView) findViewById(R.id.tipping_coin);
        this.rankFrame = findViewById(R.id.rank_frame);
        this.userFollow = (FrameLayout) findViewById(R.id.user_follow);
        this.followedCheck = (ImageView) findViewById(R.id.user_relation_following);
    }

    public void setTipLog(TipLog tipLog, int i, boolean z, boolean z2, boolean z3, boolean z4) {
        if (tipLog == null || tipLog.getAuthor() == null) {
            return;
        }
        this.thanksView.setVisibility(z ? 0 : 8);
        this.rankFrame.setVisibility(z ? 0 : 8);
        User author = tipLog.getAuthor();
        this.avatar.setUser(author);
        this.nicknameView.setUser(author);
        if (z) {
            this.userFollow.setVisibility(8);
            this.followedCheck.setVisibility(8);
            if (!tipLog.isTipperAccessible) {
                this.thanksView.setVisibility(8);
            } else {
                this.thanksView.setVisibility(0);
                this.thanksView.bindBebefactor(tipLog, !z4);
            }
            this.tippingDesc.setVisibility(8);
            this.tippingContainer.setVisibility(0);
            this.tippingCoin.setText(TextUtils.numberFormat.format(tipLog.totalTippedCoins));
            matchRankStyle(i);
            return;
        }
        int i2 = author.membershipStatus;
        boolean z5 = i2 == 1 || i2 == 3;
        this.followedCheck.setVisibility((z3 || !z5) ? 8 : 0);
        this.userFollow.setVisibility((z3 || z5) ? 8 : 0);
        this.userFollow.findViewById(R.id.user_follow_icon).setVisibility(z2 ? 8 : 0);
        this.userFollow.findViewById(R.id.user_follow_text).setVisibility(z2 ? 8 : 0);
        this.userFollow.findViewById(R.id.user_follow_progress).setVisibility(z2 ? 0 : 8);
        this.tippingDesc.setVisibility(0);
        this.tippingContainer.setVisibility(8);
        this.tippingDesc.setText(getContext().getString(R.string.tipping_date_format, DateTimeFormatter.getInstance(getContext()).format(tipLog.lastTippedTime)));
    }

    private void matchRankStyle(int i) {
        if (i > 2) {
            this.rankIcon.setVisibility(8);
            this.rank.setVisibility(0);
            this.rank.setText(String.valueOf(i + 1));
            return;
        }
        if (i == 0) {
            this.rankIcon.setImageResource(R.drawable.ic_medal_first);
        } else if (i == 1) {
            this.rankIcon.setImageResource(R.drawable.ic_medal_second);
        } else if (i == 2) {
            this.rankIcon.setImageResource(R.drawable.ic_medal_third);
        }
        this.rankIcon.setVisibility(0);
        this.rank.setVisibility(8);
    }
}
