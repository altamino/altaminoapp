package com.narvii.livelayer;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.amino.mastes.R;
import com.narvii.widget.UserAvatarLayout;

/* loaded from: classes3.dex */
public class CBBLiveLayerOnlineBar extends LiveLayerOnlineBar {
    private int size;

    public CBBLiveLayerOnlineBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.size = getContext().getResources().getDimensionPixelSize(R.dimen.live_layer_online_avatar_width);
        this.forceHideOnlineTextLayout = true;
        this.maxAvatarCount = 2;
        this.minAvatarCount = 2;
        this.fromCBB = true;
        UserAvatarLayout userAvatarLayout = this.recentAvatar;
        if (userAvatarLayout != null) {
            userAvatarLayout.getAvatarView().setForceRequestSize(getForceRequestWidth(), getForceRequestHeight());
        }
        this.shouldFilterUserList = false;
    }

    @Override // com.narvii.livelayer.LiveLayerOnlineBar
    protected int getPreloadAvatarSize() {
        return this.size;
    }

    @Override // com.narvii.livelayer.LiveLayerOnlineBar
    protected int getForceRequestHeight() {
        return this.size;
    }

    @Override // com.narvii.livelayer.LiveLayerOnlineBar
    protected int getForceRequestWidth() {
        return this.size;
    }
}
