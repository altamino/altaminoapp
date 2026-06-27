package com.narvii.chat.video.fragments;

import android.content.res.Resources;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
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

/* loaded from: classes2.dex */
public class VideoChatFragment extends LiveCallFragment implements NotifyShotCaptureListener {
    private VideoPresenterLayout participantLayout;
    RtcChatManager rtcChatManager;

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    public boolean isMappedLiveChannel(int i) {
        return i == 3 || i == 4;
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected boolean supportCollapse() {
        return false;
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.rtcChatManager = (RtcChatManager) getService("rtcManager");
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_video_chat, viewGroup, false);
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.participantLayout = (VideoPresenterLayout) view.findViewById(R.id.participant_layout);
        this.participantLayout.setDisplayMode(isPrivateCall() ? 1 : 0);
        this.participantLayout.setChatThread(getThread());
        this.participantLayout.setLauncher(isCreator());
        this.participantLayout.setPresenterItemClickListener(this);
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() throws Resources.NotFoundException {
        super.onResume();
        this.rtcChatManager.onResume();
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelUserListChanged(SignallingChannel signallingChannel, Collection<? extends ChannelUser> collection, Collection<? extends ChannelUser> collection2, SparseArray<ChannelUserWrapper> sparseArray) {
        super.onChannelUserListChanged(signallingChannel, collection, collection2, sparseArray);
        if (isCreator() && SignallingChannel.isLegalChannelType(this.channelType)) {
            signallingChannel.channelType = this.channelType;
        }
        this.participantLayout.notifyUserWrapperListChanged(signallingChannel, sparseArray);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.LocalMuteUserListChangeListener
    public void onLocalMuteUserListChanged(SignallingChannel signallingChannel, Set<String> set) {
        super.onLocalMuteUserListChanged(signallingChannel, set);
        this.participantLayout.notifyLocalMuteUserListChanged(set);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        super.onUserWrapperStatusChanged(signallingChannel, channelUserWrapper);
        this.participantLayout.notifyUserDataChanged(signallingChannel, channelUserWrapper);
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.MyChannelUserStatusChangeListener
    public void onMyChannelUserStatusChanged(int i, SignallingChannel signallingChannel, ChannelUser channelUser) {
        super.onMyChannelUserStatusChanged(i, signallingChannel, channelUser);
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
    protected int getNormalContentHeight() throws Resources.NotFoundException {
        int dimensionPixelSize = getThread() != null && getThread().type != 0 ? getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_height) + getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin) + getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin_bottom) : 0;
        VideoPresenterLayout videoPresenterLayout = this.participantLayout;
        return dimensionPixelSize + (videoPresenterLayout == null ? VideoPresenterLayout.getContentHeight(getContext(), getThread()) : videoPresenterLayout.getContentHeight());
    }
}
