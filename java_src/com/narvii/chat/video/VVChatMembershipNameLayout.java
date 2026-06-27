package com.narvii.chat.video;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.narvii.amino.mastes.R;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;
import com.narvii.widget.NicknameView;

/* loaded from: classes2.dex */
public class VVChatMembershipNameLayout extends LinearLayout {
    CommunityConfigHelper communityConfigHelper;
    boolean forceHideBadge;
    NicknameView nicknameView;

    public VVChatMembershipNameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.communityConfigHelper = new CommunityConfigHelper(Utils.getNVContext(context));
        setGravity(16);
    }

    public void setForceHideBadge(boolean z) {
        this.forceHideBadge = z;
        NicknameView nicknameView = this.nicknameView;
        if (nicknameView != null) {
            nicknameView.setHideInfluencerBadge(z);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.nicknameView = (NicknameView) findViewById(R.id.influencer_nickname);
    }

    public void setUser(User user) {
        NicknameView nicknameView = this.nicknameView;
        if (nicknameView != null) {
            nicknameView.setUser(user);
        }
    }

    public void setText(String str) {
        NicknameView nicknameView = this.nicknameView;
        if (nicknameView != null) {
            nicknameView.setText(str);
        }
    }
}
