package com.narvii.chat.video.floating;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.layout.LiveCallingLayout;
import com.narvii.chat.video.layout.VideoMainLayout;
import com.narvii.chat.video.layout.VideoParticipantLayout;
import com.narvii.model.User;
import com.narvii.video.ui.floating.FloatingWindowBaseLayout;
import java.util.Set;

/* loaded from: classes2.dex */
public class VideoFloatingLayout extends FloatingWindowBaseLayout {
    LiveCallingLayout videoCallLayout;
    VideoMainLayout videoMainLayout;
    VideoParticipantLayout videoParticipantLayout;

    public VideoFloatingLayout(Context context) {
        super(context);
    }

    public VideoFloatingLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.video.ui.floating.FloatingWindowBaseLayout, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.videoParticipantLayout = (VideoParticipantLayout) findViewById(R.id.video_min_main);
        this.videoMainLayout = (VideoMainLayout) findViewById(R.id.video_mini_container);
        this.videoCallLayout = (LiveCallingLayout) findViewById(R.id.video_call_layout);
    }

    public void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
        this.videoParticipantLayout.notifyUserWrapperListChanged(signallingChannel, sparseArray);
        if (sparseArray == null || sparseArray.size() <= 0) {
            return;
        }
        hideEndedView();
    }

    public void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        this.videoParticipantLayout.notifyUserDataChanged(signallingChannel, channelUserWrapper);
    }

    public void notifyMutedListChanged(Set<String> set) {
        this.videoParticipantLayout.notifyLocalMuteUserListChanged(set);
    }

    public void notifyForceQuit(int i) {
        showEndedView();
    }

    public void onChannelNeedEnd() {
        showWarningView();
    }

    public void setIsLauncher(boolean z) {
        VideoParticipantLayout videoParticipantLayout = this.videoParticipantLayout;
        if (videoParticipantLayout != null) {
            videoParticipantLayout.setIsLauncher(z);
        }
    }

    public void updateVideoViews(boolean z, User user, int i) {
        if (user == null) {
            this.videoParticipantLayout.setVisibility(0);
            this.videoCallLayout.setVisibility(8);
            ViewGroup.LayoutParams layoutParams = this.videoParticipantLayout.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            return;
        }
        if (z) {
            ViewGroup.LayoutParams layoutParams2 = this.videoParticipantLayout.getLayoutParams();
            if (i == 2) {
                layoutParams2.width = -1;
                layoutParams2.height = -1;
            } else {
                layoutParams2.width = -1;
                layoutParams2.height = getResources().getDimensionPixelSize(R.dimen.video_floating_cell_height_half);
            }
            this.videoParticipantLayout.setLayoutParams(layoutParams2);
        }
        this.videoMainLayout.updateViews(z, user, i);
    }
}
