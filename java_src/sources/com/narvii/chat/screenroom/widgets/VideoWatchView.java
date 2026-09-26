package com.narvii.chat.screenroom.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.video.ui.UserStatusData;

/* JADX INFO: loaded from: classes11.dex */
public class VideoWatchView extends FrameLayout {
    private ChannelUserWrapper channelUserWrapper;

    public void updateView(ChannelUserWrapper channelUserWrapper) {
        this.channelUserWrapper = channelUserWrapper != null ? channelUserWrapper.m1315clone() : null;
        if (channelUserWrapper == null) {
            setTag(R.id.sr_sv_id, null);
            removeAllViews();
            return;
        }
        UserStatusData userStatusData = channelUserWrapper.userStatus;
        if (userStatusData == null || userStatusData.mView == null) {
            return;
        }
        if (getTag(R.id.sr_sv_id) == null || ((Integer) getTag(R.id.sr_sv_id)).intValue() != channelUserWrapper.channelUid) {
            rebuildUserVideoView(userStatusData);
            return;
        }
        if (getChildCount() == 1 && getChildAt(0) != userStatusData.mView) {
            rebuildUserVideoView(userStatusData);
        } else if (getChildCount() == 0) {
            rebuildUserVideoView(userStatusData);
        }
    }

    public VideoWatchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setKeepScreenOn(true);
    }

    private void rebuildUserVideoView(UserStatusData userStatusData) {
        if (getChildCount() == 1 && getChildAt(0) == userStatusData.mView) {
            return;
        }
        removeAllViews();
        stripView(userStatusData.mView);
        setTag(R.id.sr_sv_id, Integer.valueOf(this.channelUserWrapper.channelUid));
        addView(userStatusData.mView);
    }

    public void stripView(View view) {
        ViewParent parent = view.getParent();
        if (parent != null) {
            ((FrameLayout) parent).removeView(view);
        }
    }
}
