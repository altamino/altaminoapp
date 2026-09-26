package com.narvii.chat.video.fragments;

import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.narvii.amino.master.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.CameraRenderer;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.chat.video.TakeShotCaptureListener;
import com.narvii.chat.video.layout.VideoPresenterLayout;
import com.narvii.chat.video.overlay.NotifyShotCaptureListener;
import java.util.Collection;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class VideoChatFragment extends LiveCallFragment implements NotifyShotCaptureListener {
    private VideoPresenterLayout participantLayout;
    RtcChatManager rtcChatManager;

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    public boolean isMappedLiveChannel(int i10) {
        return i10 == 3 || i10 == 4;
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected boolean supportCollapse() {
        return false;
    }

    @Override // com.narvii.chat.video.overlay.NotifyShotCaptureListener
    public void notifyShotCapture(TakeShotCaptureListener takeShotCaptureListener) {
        RtcService rtcService = this.rtcService;
        if (rtcService == null) {
            takeShotCaptureListener.onShotCaptureReady(null);
            return;
        }
        CameraRenderer localUserSurfaceView = rtcService.getRtcManager().getLocalUserSurfaceView();
        if (localUserSurfaceView == null) {
            takeShotCaptureListener.onShotCaptureReady(null);
        } else {
            localUserSurfaceView.notifyShotCapture(takeShotCaptureListener);
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected int getNormalContentHeight() {
        int i10;
        int contentHeight;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_height);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin_bottom);
        if (getThread() != null && getThread().type != 0) {
            i10 = dimensionPixelSize + dimensionPixelSize2 + dimensionPixelSize3;
        } else {
            i10 = 0;
        }
        VideoPresenterLayout videoPresenterLayout = this.participantLayout;
        if (videoPresenterLayout == null) {
            contentHeight = VideoPresenterLayout.getContentHeight(getContext(), getThread());
        } else {
            contentHeight = videoPresenterLayout.getContentHeight();
        }
        return i10 + contentHeight;
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelUserListChanged(@NotNull SignallingChannel signallingChannel, @NotNull Collection<? extends ChannelUser> collection, @NotNull Collection<? extends ChannelUser> collection2, @Nullable SparseArray<ChannelUserWrapper> sparseArray) {
        super.onChannelUserListChanged(signallingChannel, collection, collection2, sparseArray);
        if (isCreator() && SignallingChannel.isLegalChannelType(this.channelType)) {
            signallingChannel.channelType = this.channelType;
        }
        this.participantLayout.notifyUserWrapperListChanged(signallingChannel, sparseArray);
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.rtcChatManager = (RtcChatManager) getService("rtcManager");
    }

    @Override // androidx.fragment.app.Fragment
    @androidx.annotation.Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @androidx.annotation.Nullable ViewGroup viewGroup, @androidx.annotation.Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_video_chat, viewGroup, false);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.LocalMuteUserListChangeListener
    public void onLocalMuteUserListChanged(@NotNull SignallingChannel signallingChannel, @NotNull Set<String> set) {
        super.onLocalMuteUserListChanged(signallingChannel, set);
        this.participantLayout.notifyLocalMuteUserListChanged(set);
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.MyChannelUserStatusChangeListener
    public void onMyChannelUserStatusChanged(int i10, @NotNull SignallingChannel signallingChannel, @Nullable ChannelUser channelUser) {
        super.onMyChannelUserStatusChanged(i10, signallingChannel, channelUser);
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.rtcChatManager.onResume();
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(@NotNull SignallingChannel signallingChannel, @NotNull ChannelUserWrapper channelUserWrapper) {
        super.onUserWrapperStatusChanged(signallingChannel, channelUserWrapper);
        this.participantLayout.notifyUserDataChanged(signallingChannel, channelUserWrapper);
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @androidx.annotation.Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        VideoPresenterLayout videoPresenterLayout = (VideoPresenterLayout) view.findViewById(R.id.participant_layout);
        this.participantLayout = videoPresenterLayout;
        videoPresenterLayout.setDisplayMode(isPrivateCall() ? 1 : 0);
        this.participantLayout.setChatThread(getThread());
        this.participantLayout.setLauncher(isCreator());
        this.participantLayout.setPresenterItemClickListener(this);
    }
}
