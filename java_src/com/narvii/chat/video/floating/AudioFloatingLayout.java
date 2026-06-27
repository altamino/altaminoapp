package com.narvii.chat.video.floating;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import com.narvii.amino.mastes.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.layout.LiveCallingLayout;
import com.narvii.chat.video.layout.VoiceMainLayout;
import com.narvii.chat.video.layout.VoiceParticipantLayout;
import com.narvii.chat.video.view.VoiceCallHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.video.ui.floating.FloatingWindowBaseLayout;
import java.util.Collection;
import java.util.Set;

/* loaded from: classes2.dex */
public class AudioFloatingLayout extends FloatingWindowBaseLayout {
    private ChatThread chatThread;
    LiveCallingLayout liveCallingLayout;
    VoiceCallHelper voiceCallHelper;
    VoiceMainLayout voiceMainLayout;
    VoiceParticipantLayout voiceParticipantLayout;

    public AudioFloatingLayout(Context context) {
        this(context, null);
    }

    public AudioFloatingLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.voiceCallHelper = new VoiceCallHelper(context);
    }

    @Override // com.narvii.video.ui.floating.FloatingWindowBaseLayout, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.voiceParticipantLayout = (VoiceParticipantLayout) findViewById(R.id.participant_layout);
        this.voiceMainLayout = (VoiceMainLayout) findViewById(R.id.audio_mini_container);
        this.liveCallingLayout = (LiveCallingLayout) findViewById(R.id.call_layout);
    }

    public void updateVoiceViews(boolean z, User user, int i) {
        if (user == null) {
            this.liveCallingLayout.updateStatus(i);
            this.voiceParticipantLayout.setVisibility(0);
            this.liveCallingLayout.setVisibility(8);
            return;
        }
        this.voiceMainLayout.updateViews(z, user, i);
    }

    public void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
        this.voiceParticipantLayout.notifyUserWrapperListChanged(signallingChannel, sparseArray);
        if (sparseArray == null || sparseArray.size() <= 0) {
            return;
        }
        hideEndedView();
    }

    public void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        this.voiceParticipantLayout.notifyUserDataChanged(signallingChannel, channelUserWrapper);
    }

    public void notifyMutedListChanged(Set<String> set) {
        this.voiceParticipantLayout.notifyLocalMuteUserListChanged(set);
    }

    public void notifyForceQuit(int i) {
        showEndedView();
    }

    public void onChannelNeedEnd() {
        showWarningView();
    }

    public void setChatThread(ChatThread chatThread) {
        this.chatThread = chatThread;
        this.voiceParticipantLayout.setIsGroupChat(chatThread != null && chatThread.type == 1);
    }

    private int getPresenterCount(Collection<ChannelUser> collection) {
        return this.voiceCallHelper.getPresenterCount(collection);
    }

    public void setIsLauncher(boolean z) {
        VoiceParticipantLayout voiceParticipantLayout = this.voiceParticipantLayout;
        if (voiceParticipantLayout != null) {
            voiceParticipantLayout.setIsLauncher(z);
        }
    }
}
