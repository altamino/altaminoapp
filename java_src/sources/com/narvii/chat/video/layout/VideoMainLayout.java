package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.model.User;

/* JADX INFO: loaded from: classes6.dex */
public class VideoMainLayout extends FlexLayout implements LiveCallingLayout.EnterConversationAnimationListener {
    LiveCallingLayout videoCallLayout;
    VideoMainContainer videoParticipantLayout;

    public VideoMainLayout(Context context) {
        super(context);
    }

    public void updateViews(boolean z6, User user, int i10) {
        updateViews(z6, user, i10, true);
    }

    public VideoMainLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
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

    public void updateViews(boolean z6, User user, int i10, boolean z10) {
        if (!z6) {
            this.videoCallLayout.setVisibility(8);
        } else {
            this.videoCallLayout.updateViews(user, i10);
            this.videoCallLayout.setVisibility(i10 != 2 ? 0 : 8);
        }
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
}
