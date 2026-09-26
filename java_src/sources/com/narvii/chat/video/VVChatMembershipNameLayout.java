package com.narvii.chat.video;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes10.dex */
public class VVChatMembershipNameLayout extends LinearLayout {
    CommunityConfigHelper communityConfigHelper;
    boolean forceHideBadge;
    NicknameView nicknameView;

    public void setForceHideBadge(boolean z6) {
        this.forceHideBadge = z6;
        NicknameView nicknameView = this.nicknameView;
        if (nicknameView != null) {
            nicknameView.setHideInfluencerBadge(z6);
        }
    }

    public void setText(String str) {
        NicknameView nicknameView = this.nicknameView;
        if (nicknameView != null) {
            nicknameView.setText(str);
        }
    }

    public void setUser(User user) {
        NicknameView nicknameView = this.nicknameView;
        if (nicknameView != null) {
            nicknameView.setUser(user);
        }
    }

    public VVChatMembershipNameLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.communityConfigHelper = new CommunityConfigHelper(Utils.getNVContext(context));
        setGravity(16);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.nicknameView = (NicknameView) findViewById(R.id.influencer_nickname);
    }
}
