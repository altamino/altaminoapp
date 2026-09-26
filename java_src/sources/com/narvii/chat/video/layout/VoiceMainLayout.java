package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.model.User;

/* JADX INFO: loaded from: classes9.dex */
public class VoiceMainLayout extends FlexLayout implements LiveCallingLayout.EnterConversationAnimationListener {
    LiveCallingLayout audioCallingLayout;
    VoiceParticipantLayout voiceParticipantLayout;

    public VoiceMainLayout(Context context) {
        this(context, null);
    }

    public void updateViews(boolean z6, User user, int i10) {
        updateViews(z6, user, i10, true);
    }

    public VoiceMainLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.chat.video.layout.LiveCallingLayout.EnterConversationAnimationListener
    public void onAnimationFinished() {
        LiveCallingLayout liveCallingLayout = this.audioCallingLayout;
        if (liveCallingLayout != null) {
            liveCallingLayout.setVisibility(8);
        }
        VoiceParticipantLayout voiceParticipantLayout = this.voiceParticipantLayout;
        if (voiceParticipantLayout != null) {
            voiceParticipantLayout.setVisibility(0);
        }
    }

    public void updateViews(boolean z6, User user, int i10, boolean z10) {
        if (!z6) {
            this.audioCallingLayout.setVisibility(8);
            this.voiceParticipantLayout.setVisibility(0);
            return;
        }
        this.audioCallingLayout.updateViews(user, i10);
        if (i10 == 1 || i10 == 0) {
            this.audioCallingLayout.setVisibility(0);
            this.voiceParticipantLayout.setVisibility(4);
        } else if (i10 != 2) {
            this.audioCallingLayout.setVisibility(0);
            this.voiceParticipantLayout.setVisibility(8);
        } else if (z10) {
            this.audioCallingLayout.enterConversation();
        } else {
            this.audioCallingLayout.setVisibility(8);
            this.voiceParticipantLayout.setVisibility(0);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.audioCallingLayout = (LiveCallingLayout) findViewById(R.id.call_layout);
        this.voiceParticipantLayout = (VoiceParticipantLayout) findViewById(R.id.participant_layout);
        this.audioCallingLayout.setEnterConversationAnimationListener(this);
    }
}
