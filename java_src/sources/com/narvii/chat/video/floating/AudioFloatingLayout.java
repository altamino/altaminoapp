package com.narvii.chat.video.floating;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
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

/* JADX INFO: loaded from: classes6.dex */
public class AudioFloatingLayout extends FloatingWindowBaseLayout {
    private ChatThread chatThread;
    LiveCallingLayout liveCallingLayout;
    VoiceCallHelper voiceCallHelper;
    VoiceMainLayout voiceMainLayout;
    VoiceParticipantLayout voiceParticipantLayout;

    public AudioFloatingLayout(@NonNull Context context) {
        this(context, null);
    }

    public AudioFloatingLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.voiceCallHelper = new VoiceCallHelper(context);
    }

    private int getPresenterCount(Collection<ChannelUser> collection) {
        return this.voiceCallHelper.getPresenterCount(collection);
    }

    public void notifyMutedListChanged(Set<String> set) {
        this.voiceParticipantLayout.notifyLocalMuteUserListChanged(set);
    }

    public void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        this.voiceParticipantLayout.notifyUserDataChanged(signallingChannel, channelUserWrapper);
    }

    public void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
        this.voiceParticipantLayout.notifyUserWrapperListChanged(signallingChannel, sparseArray);
        if (sparseArray == null || sparseArray.size() <= 0) {
            return;
        }
        hideEndedView();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000a  */
    public void setChatThread(ChatThread chatThread) {
        boolean z6;
        this.chatThread = chatThread;
        if (chatThread != null) {
            z6 = chatThread.type == 1;
        }
        this.voiceParticipantLayout.setIsGroupChat(z6);
    }

    public void setIsLauncher(boolean z6) {
        VoiceParticipantLayout voiceParticipantLayout = this.voiceParticipantLayout;
        if (voiceParticipantLayout != null) {
            voiceParticipantLayout.setIsLauncher(z6);
        }
    }

    public void updateVoiceViews(boolean z6, User user, int i10) {
        if (user != null) {
            this.voiceMainLayout.updateViews(z6, user, i10);
            return;
        }
        this.liveCallingLayout.updateStatus(i10);
        this.voiceParticipantLayout.setVisibility(0);
        this.liveCallingLayout.setVisibility(8);
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
        this.voiceParticipantLayout = (VoiceParticipantLayout) findViewById(R.id.participant_layout);
        this.voiceMainLayout = (VoiceMainLayout) findViewById(R.id.audio_mini_container);
        this.liveCallingLayout = (LiveCallingLayout) findViewById(R.id.call_layout);
    }
}
