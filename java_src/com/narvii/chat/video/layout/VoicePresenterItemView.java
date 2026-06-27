package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.model.User;
import com.narvii.video.ui.UserStatusData;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinDrawable;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.VolumeIndicator;

/* loaded from: classes2.dex */
public class VoicePresenterItemView extends FrameLayout {
    private View badNetworkIndicator;
    public int channelUid;
    private View emptyContainer;
    private ImageView imgBadge;
    private ImageView loadingIndicator;
    private View localMuteIndicator;
    private View muteIndicator;
    private View organizerLabel;
    private NicknameView tvNickname;
    private UserAvatarLayout userAvatarLayout;
    private View userInfoContainer;
    private UserSpeakingView userSpeakingView;
    private VolumeIndicator volumeIndicator;

    public VoicePresenterItemView(Context context) {
        this(context, null, false);
    }

    public VoicePresenterItemView(Context context, boolean z) {
        this(context, null, z);
    }

    public VoicePresenterItemView(Context context, AttributeSet attributeSet, boolean z) {
        super(context, attributeSet);
        this.channelUid = -1;
        FrameLayout.inflate(context, z ? R.layout.item_voice_presenter_cell_pair : R.layout.item_voice_presenter_cell, this);
        setClipChildren(false);
        this.emptyContainer = findViewById(R.id.empty_container);
        this.userInfoContainer = findViewById(R.id.channel_user_info_container);
        this.userSpeakingView = (UserSpeakingView) findViewById(R.id.user_speaking);
        this.userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.localMuteIndicator = findViewById(R.id.local_mute_indicator);
        this.badNetworkIndicator = findViewById(R.id.bad_connection_container);
        this.muteIndicator = findViewById(R.id.muted);
        this.volumeIndicator = (VolumeIndicator) findViewById(R.id.volume_level);
        this.loadingIndicator = (ImageView) findViewById(R.id.loading_indicator);
        this.tvNickname = (NicknameView) findViewById(R.id.nickname);
        this.imgBadge = (ImageView) findViewById(R.id.nickname_badge);
        this.organizerLabel = findViewById(R.id.organizer);
    }

    public void updatePresenter(ChannelUserWrapper channelUserWrapper, boolean z, boolean z2, boolean z3, boolean z4) {
        SpinDrawable spinDrawable;
        if (channelUserWrapper == null) {
            this.channelUid = -1;
            this.emptyContainer.setVisibility(0);
            this.userInfoContainer.setVisibility(8);
            this.userSpeakingView.setVolumeLevel(0);
            this.volumeIndicator.setValue(0.0f, false);
            return;
        }
        this.emptyContainer.setVisibility(8);
        this.userInfoContainer.setVisibility(0);
        this.channelUid = channelUserWrapper.channelUid;
        UserStatusData userStatusData = channelUserWrapper.userStatus;
        ChannelUser channelUser = channelUserWrapper.channelUser;
        User user = channelUser == null ? null : channelUser.userProfile;
        boolean z5 = userStatusData != null && userStatusData.isBadNetwork();
        boolean z6 = userStatusData != null && userStatusData.isVoiceMuted();
        boolean z7 = channelUserWrapper.status == 1;
        this.tvNickname.setUser(user);
        if (z) {
            this.tvNickname.setText(R.string.me);
        }
        this.imgBadge.setVisibility(z2 ? 0 : 8);
        this.volumeIndicator.setVisibility((!z7 || z3 || z6) ? 8 : 0);
        int curVolumeLevel = (userStatusData == null || z6 || z3) ? 0 : userStatusData.getCurVolumeLevel();
        this.volumeIndicator.setValue(curVolumeLevel / 4.0f, true);
        if (z3 || z6) {
            curVolumeLevel = 0;
        } else if (z && !z7) {
            curVolumeLevel = 1;
        }
        this.userSpeakingView.setVolumeLevel(curVolumeLevel);
        this.userSpeakingView.setPendingSpeakingMode(z && !z7);
        this.userAvatarLayout.setUser(user, z2);
        this.userAvatarLayout.showAudioStroke((!z || z7) && curVolumeLevel > 0);
        this.localMuteIndicator.setVisibility(z3 ? 0 : 8);
        this.muteIndicator.setVisibility((z3 || !z6) ? 8 : 0);
        this.badNetworkIndicator.setVisibility(z5 ? 0 : 8);
        this.organizerLabel.setVisibility(z4 ? 0 : 4);
        if (this.loadingIndicator.getDrawable() instanceof SpinDrawable) {
            spinDrawable = (SpinDrawable) this.loadingIndicator.getDrawable();
        } else {
            spinDrawable = new SpinDrawable();
            spinDrawable.setLoadingColor(-1);
            this.loadingIndicator.setImageDrawable(spinDrawable);
        }
        if (z7 || z3 || z) {
            spinDrawable.stop();
            this.loadingIndicator.setVisibility(8);
        } else {
            if (!spinDrawable.isRunning()) {
                spinDrawable.start();
            }
            this.loadingIndicator.setVisibility(0);
        }
    }
}
