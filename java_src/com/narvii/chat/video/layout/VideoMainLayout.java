package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.mastes.R;
import com.narvii.chat.video.layout.LiveCallingLayout;
import com.narvii.model.User;

/* loaded from: classes2.dex */
public class VideoMainLayout extends FlexLayout implements LiveCallingLayout.EnterConversationAnimationListener {
    LiveCallingLayout videoCallLayout;
    VideoMainContainer videoParticipantLayout;

    public VideoMainLayout(Context context) {
        super(context);
    }

    public VideoMainLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.videoCallLayout = (LiveCallingLayout) findViewById(R.id.video_call_layout);
        this.videoParticipantLayout = (VideoMainContainer) findViewById(R.id.participant_container);
        LiveCallingLayout liveCallingLayout = this.videoCallLayout;
        if (liveCallingLayout != null) {
            liveCallingLayout.setEnterConversationAnimationListener(this);
        }
    }

    public void updateViews(boolean z, User user, int i) {
        updateViews(z, user, i, true);
    }

    public void updateViews(boolean z, User user, int i, boolean z2) {
        if (z) {
            this.videoCallLayout.updateViews(user, i);
            this.videoCallLayout.setVisibility(i != 2 ? 0 : 8);
        } else {
            this.videoCallLayout.setVisibility(8);
        }
    }

    @Override // com.narvii.chat.video.layout.LiveCallingLayout.EnterConversationAnimationListener
    public void onAnimationFinished() {
        LiveCallingLayout liveCallingLayout = this.videoCallLayout;
        if (liveCallingLayout != null) {
            liveCallingLayout.setVisibility(8);
        }
        VideoMainContainer videoMainContainer = this.videoParticipantLayout;
        if (videoMainContainer != null) {
            videoMainContainer.setVisibility(0);
        }
    }
}
