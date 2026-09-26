package com.narvii.chat.video.floating;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.layout.LiveCallingLayout;
import com.narvii.chat.video.layout.VideoMainLayout;
import com.narvii.chat.video.layout.VideoParticipantLayout;
import com.narvii.model.User;
import com.narvii.video.ui.floating.FloatingWindowBaseLayout;
import java.util.Set;

/* JADX INFO: loaded from: classes10.dex */
public class VideoFloatingLayout extends FloatingWindowBaseLayout {
    LiveCallingLayout videoCallLayout;
    VideoMainLayout videoMainLayout;
    VideoParticipantLayout videoParticipantLayout;

    public VideoFloatingLayout(@NonNull Context context) {
        super(context);
    }

    public void updateVideoViews(boolean z6, User user, int i10) {
        if (user == null) {
            this.videoParticipantLayout.setVisibility(0);
            this.videoCallLayout.setVisibility(8);
            ViewGroup.LayoutParams layoutParams = this.videoParticipantLayout.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            return;
        }
        if (z6) {
            ViewGroup.LayoutParams layoutParams2 = this.videoParticipantLayout.getLayoutParams();
            if (i10 == 2) {
                layoutParams2.width = -1;
                layoutParams2.height = -1;
            } else {
                layoutParams2.width = -1;
                layoutParams2.height = getResources().getDimensionPixelSize(R.dimen.video_floating_cell_height_half);
            }
            this.videoParticipantLayout.setLayoutParams(layoutParams2);
        }
        this.videoMainLayout.updateViews(z6, user, i10);
    }

    public VideoFloatingLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void notifyMutedListChanged(Set<String> set) {
        this.videoParticipantLayout.notifyLocalMuteUserListChanged(set);
    }

    public void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        this.videoParticipantLayout.notifyUserDataChanged(signallingChannel, channelUserWrapper);
    }

    public void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
        this.videoParticipantLayout.notifyUserWrapperListChanged(signallingChannel, sparseArray);
        if (sparseArray == null || sparseArray.size() <= 0) {
            return;
        }
        hideEndedView();
    }

    public void setIsLauncher(boolean z6) {
        VideoParticipantLayout videoParticipantLayout = this.videoParticipantLayout;
        if (videoParticipantLayout != null) {
            videoParticipantLayout.setIsLauncher(z6);
        }
    }

    public void notifyForceQuit(int i10) {
        showEndedView();
    }

    public void onChannelNeedEnd() {
        showWarningView();
    }

    @Override // com.narvii.video.ui.floating.FloatingWindowBaseLayout, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.videoParticipantLayout = (VideoParticipantLayout) findViewById(R.id.video_min_main);
        this.videoMainLayout = (VideoMainLayout) findViewById(R.id.video_mini_container);
        this.videoCallLayout = (LiveCallingLayout) findViewById(R.id.video_call_layout);
    }
}
