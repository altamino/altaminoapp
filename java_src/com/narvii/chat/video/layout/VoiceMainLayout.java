package com.narvii.chat.video.layout;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.mastes.R;
import com.narvii.chat.video.layout.LiveCallingLayout;
import com.narvii.model.User;

/* loaded from: classes2.dex */
public class VoiceMainLayout extends FlexLayout implements LiveCallingLayout.EnterConversationAnimationListener {
    LiveCallingLayout audioCallingLayout;
    VoiceParticipantLayout voiceParticipantLayout;

    public VoiceMainLayout(Context context) {
        this(context, null);
    }

    public VoiceMainLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.audioCallingLayout = (LiveCallingLayout) findViewById(R.id.call_layout);
        this.voiceParticipantLayout = (VoiceParticipantLayout) findViewById(R.id.participant_layout);
        this.audioCallingLayout.setEnterConversationAnimationListener(this);
    }

    public void updateViews(boolean z, User user, int i) throws Resources.NotFoundException {
        updateViews(z, user, i, true);
    }

    public void updateViews(boolean z, User user, int i, boolean z2) throws Resources.NotFoundException {
        if (z) {
            this.audioCallingLayout.updateViews(user, i);
            if (i == 1 || i == 0) {
                this.audioCallingLayout.setVisibility(0);
                this.voiceParticipantLayout.setVisibility(4);
                return;
            } else if (i != 2) {
                this.audioCallingLayout.setVisibility(0);
                this.voiceParticipantLayout.setVisibility(8);
                return;
            } else if (z2) {
                this.audioCallingLayout.enterConversation();
                return;
            } else {
                this.audioCallingLayout.setVisibility(8);
                this.voiceParticipantLayout.setVisibility(0);
                return;
            }
        }
        this.audioCallingLayout.setVisibility(8);
        this.voiceParticipantLayout.setVisibility(0);
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
}
