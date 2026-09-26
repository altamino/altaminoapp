package com.narvii.chat.video.fragments;

import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.narvii.amino.master.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.events.AgoraUserVolumeChangeListener;
import com.narvii.chat.video.layout.VoicePresenterLayout;
import com.narvii.util.Utils;
import java.util.Collection;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class VoiceChatFragment extends LiveCallFragment implements AgoraUserVolumeChangeListener {
    private VoicePresenterLayout participantLayout;
    private View voiceMainLayout;

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    public boolean isMappedLiveChannel(int i10) {
        return i10 == 1;
    }

    @Override // com.narvii.chat.video.events.AgoraUserVolumeChangeListener
    public void onTotalVolumeChanged(@NotNull SignallingChannel signallingChannel, int i10) {
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment
    protected void changeCallCompetitorViewVisibility(boolean z6) {
        if (this.participantLayout == null) {
            return;
        }
        boolean z10 = !isGroupChat() && z6;
        this.voiceMainLayout.setPadding(0, z10 ? Utils.dpToPxInt(getContext(), 10.0f) : 0, 0, 0);
        this.participantLayout.setVisibility(z10 ? 0 : 8);
        if (Utils.isEqualsNotNull(getThreadId(), this.rtcService.getMainSigChannel() == null ? null : this.rtcService.getMainSigChannel().threadId)) {
            this.participantLayout.notifyUserWrapperListChanged(this.rtcService.getMainSigChannel(), this.rtcService.getMainChannelUserWrapperList());
        }
    }

    private boolean isGroupChat() {
        if (getThread() != null && getThread().type == 1) {
            return true;
        }
        return false;
    }

    private boolean isPrivateChat() {
        if (getThread() != null && getThread().type == 0) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment
    protected int getNormalContentHeight() {
        int i10;
        int contentHeight;
        int iDpToPxInt;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_height);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.sr_portrait_margin_bottom);
        int dimensionPixelSize4 = 0;
        if (getThread() != null && getThread().type != 0) {
            i10 = dimensionPixelSize + dimensionPixelSize2 + dimensionPixelSize3;
        } else {
            i10 = 0;
        }
        VoicePresenterLayout voicePresenterLayout = this.participantLayout;
        if (voicePresenterLayout == null) {
            contentHeight = VoicePresenterLayout.getContentHeight(getContext(), getThread());
        } else {
            contentHeight = voicePresenterLayout.getContentHeight();
        }
        if (!isPrivateChat()) {
            dimensionPixelSize4 = getResources().getDimensionPixelSize(R.dimen.live_mini_indicator_height_for_voice);
        }
        if (isGroupChat()) {
            iDpToPxInt = dimensionPixelSize4;
        } else {
            iDpToPxInt = contentHeight + Utils.dpToPxInt(getContext(), 10.0f);
        }
        return i10 + iDpToPxInt + dimensionPixelSize4;
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
        this.rtcService.addAgoraUserVolumeChangeListener(getThreadId(), this);
    }

    @Override // androidx.fragment.app.Fragment
    @androidx.annotation.Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @androidx.annotation.Nullable ViewGroup viewGroup, @androidx.annotation.Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_voice_chat, viewGroup, false);
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.rtcService.removeAgoraUserVolumeChangeListener(getThreadId(), this);
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

    @Override // com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(@NotNull SignallingChannel signallingChannel, @NotNull ChannelUserWrapper channelUserWrapper) {
        super.onUserWrapperStatusChanged(signallingChannel, channelUserWrapper);
        this.participantLayout.notifyUserDataChanged(signallingChannel, channelUserWrapper);
    }

    @Override // com.narvii.chat.video.fragments.LiveCallFragment, com.narvii.chat.video.fragments.LiveChannelFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @androidx.annotation.Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.voiceMainLayout = view.findViewById(R.id.voice_main_layout);
        VoicePresenterLayout voicePresenterLayout = (VoicePresenterLayout) view.findViewById(R.id.participant_layout);
        this.participantLayout = voicePresenterLayout;
        voicePresenterLayout.setDisplayMode(isPrivateCall() ? 1 : 0);
        this.participantLayout.setChatThread(getThread());
        this.participantLayout.setPresenterItemClickListener(this);
    }
}
