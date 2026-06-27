package com.narvii.chat.video.fragments;

import android.content.res.Resources;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.events.AgoraUserVolumeChangeListener;
import com.narvii.chat.video.layout.VoicePresenterLayout;
import com.narvii.util.Utils;
import java.util.Collection;
import java.util.Set;

/* loaded from: classes2.dex */
public class VoiceChatFragment extends LiveCallFragment implements AgoraUserVolumeChangeListener {
    private VoicePresenterLayout participantLayout;
    private View voiceMainLayout;

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    public boolean isMappedLiveChannel(int i) {
        return i == 1;
    }

    @Override // com.narvii.chat.video.events.AgoraUserVolumeChangeListener
    public void onTotalVolumeChanged(SignallingChannel signallingChannel, int i) {
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.rtcService.addAgoraUserVolumeChangeListener(getThreadId(), this);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_voice_chat, viewGroup, false);
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.voiceMainLayout = view.findViewById(R.id.voice_main_layout);
        this.participantLayout = (VoicePresenterLayout) view.findViewById(R.id.participant_layout);
        this.participantLayout.setDisplayMode(isPrivateCall() ? 1 : 0);
        this.participantLayout.setChatThread(getThread());
        this.participantLayout.setPresenterItemClickListener(this);
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.rtcService.removeAgoraUserVolumeChangeListener(getThreadId(), this);
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

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.MyChannelUserStatusChangeListener
    public void onMyChannelUserStatusChanged(int i, SignallingChannel signallingChannel, ChannelUser channelUser) {
        super.onMyChannelUserStatusChanged(i, signallingChannel, channelUser);
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        super.onUserWrapperStatusChanged(signallingChannel, channelUserWrapper);
        this.participantLayout.notifyUserDataChanged(signallingChannel, channelUserWrapper);
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment
    protected void changeCallCompetitorViewVisibility(boolean z) {
        if (this.participantLayout == null) {
            return;
        }
        boolean z2 = !isGroupChat() && z;
        this.voiceMainLayout.setPadding(0, z2 ? Utils.dpToPxInt(getContext(), 10.0f) : 0, 0, 0);
        this.participantLayout.setVisibility(z2 ? 0 : 8);
        if (Utils.isEqualsNotNull(getThreadId(), this.rtcService.getMainSigChannel() == null ? null : this.rtcService.getMainSigChannel().threadId)) {
            this.participantLayout.notifyUserWrapperListChanged(this.rtcService.getMainSigChannel(), this.rtcService.getMainChannelUserWrapperList());
        }
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected int getNormalContentHeight() throws Resources.NotFoundException {
        int dimensionPixelSize = getThread() != null && getThread().type != 0 ? getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_height) + getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin) + getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin_bottom) : 0;
        VoicePresenterLayout voicePresenterLayout = this.participantLayout;
        int contentHeight = voicePresenterLayout == null ? VoicePresenterLayout.getContentHeight(getContext(), getThread()) : voicePresenterLayout.getContentHeight();
        int dimensionPixelSize2 = isPrivateChat() ? 0 : getResources().getDimensionPixelSize(R.dimen.live_mini_indicator_height_for_voice);
        return dimensionPixelSize + (isGroupChat() ? dimensionPixelSize2 : contentHeight + Utils.dpToPxInt(getContext(), 10.0f)) + dimensionPixelSize2;
    }

    private boolean isGroupChat() {
        return getThread() != null && getThread().type == 1;
    }

    private boolean isPrivateChat() {
        return getThread() != null && getThread().type == 0;
    }
}
