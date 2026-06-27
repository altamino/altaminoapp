package com.narvii.chat.screenroom.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.video.ui.UserStatusData;

/* loaded from: classes2.dex */
public class VideoWatchView extends FrameLayout {
    private ChannelUserWrapper channelUserWrapper;

    public VideoWatchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setKeepScreenOn(true);
    }

    public void updateView(ChannelUserWrapper channelUserWrapper) {
        this.channelUserWrapper = channelUserWrapper != null ? channelUserWrapper.m36clone() : null;
        if (channelUserWrapper == null) {
            setTag(R.id.sr_sv_id, null);
            removeAllViews();
            return;
        }
        UserStatusData userStatusData = channelUserWrapper.userStatus;
        if (userStatusData == null || userStatusData.mView == null) {
            return;
        }
        if (getTag(R.id.sr_sv_id) != null && ((Integer) getTag(R.id.sr_sv_id)).intValue() == channelUserWrapper.channelUid) {
            if (getChildCount() == 1 && getChildAt(0) != userStatusData.mView) {
                rebuildUserVideoView(userStatusData);
                return;
            } else {
                if (getChildCount() == 0) {
                    rebuildUserVideoView(userStatusData);
                    return;
                }
                return;
            }
        }
        rebuildUserVideoView(userStatusData);
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
