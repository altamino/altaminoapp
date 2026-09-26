package com.narvii.tipping;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.model.User;
import com.narvii.tipping.model.TipLog;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes11.dex */
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

    private void matchRankStyle(int i10) {
        if (i10 > 2) {
            this.rankIcon.setVisibility(8);
            this.rank.setVisibility(0);
            this.rank.setText(String.valueOf(i10 + 1));
            return;
        }
        if (i10 == 0) {
            this.rankIcon.setImageResource(R.drawable.ic_medal_first);
        } else if (i10 == 1) {
            this.rankIcon.setImageResource(R.drawable.ic_medal_second);
        } else if (i10 == 2) {
            this.rankIcon.setImageResource(R.drawable.ic_medal_third);
        }
        this.rankIcon.setVisibility(0);
        this.rank.setVisibility(8);
    }

    public TippingListItemCell(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setTipLog(TipLog tipLog, int i10, boolean z6, boolean z10, boolean z11, boolean z12) {
        if (tipLog == null || tipLog.getAuthor() == null) {
            return;
        }
        this.thanksView.setVisibility(z6 ? 0 : 8);
        this.rankFrame.setVisibility(z6 ? 0 : 8);
        User author = tipLog.getAuthor();
        this.avatar.setUser(author);
        this.nicknameView.setUser(author);
        if (z6) {
            this.userFollow.setVisibility(8);
            this.followedCheck.setVisibility(8);
            if (tipLog.isTipperAccessible) {
                this.thanksView.setVisibility(0);
                this.thanksView.bindBebefactor(tipLog, !z12);
            } else {
                this.thanksView.setVisibility(8);
            }
            this.tippingDesc.setVisibility(8);
            this.tippingContainer.setVisibility(0);
            this.tippingCoin.setText(TextUtils.numberFormat.format(tipLog.totalTippedCoins));
            matchRankStyle(i10);
            return;
        }
        int i11 = author.membershipStatus;
        boolean z13 = i11 == 1 || i11 == 3;
        this.followedCheck.setVisibility((z11 || !z13) ? 8 : 0);
        this.userFollow.setVisibility((z11 || z13) ? 8 : 0);
        this.userFollow.findViewById(R.id.user_follow_icon).setVisibility(z10 ? 8 : 0);
        this.userFollow.findViewById(R.id.user_follow_text).setVisibility(z10 ? 8 : 0);
        this.userFollow.findViewById(R.id.user_follow_progress).setVisibility(z10 ? 0 : 8);
        this.tippingDesc.setVisibility(0);
        this.tippingContainer.setVisibility(8);
        this.tippingDesc.setText(getContext().getString(R.string.tipping_date_format, DateTimeFormatter.getInstance(getContext()).format(tipLog.lastTippedTime)));
    }

    public TippingListItemCell(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
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
}
