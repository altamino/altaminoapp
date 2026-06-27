package com.narvii.chat.screenroom.widgets;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.video.ui.UserStatusData;
import com.narvii.widget.SpinDrawable;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.VolumeIndicator;

/* loaded from: classes2.dex */
public class SRPresenterItemView extends FrameLayout {
    private View badNetWorkIndicator;
    private ChannelUserWrapper channelUserWrapper;
    private TextView hostLabelView;
    private int hostVolumeLevel;
    private ImageView imgJoinLoading;
    private VolumeIndicator imgVolumeLevelMid;
    private boolean isHost;
    public boolean isHostView;
    private boolean isLocalMute;
    private int localChannelUid;
    private View localMuteIndicator;
    private ImageView offlineView;
    ScreenRoomService screenRoomService;
    private boolean showVideo;
    private UserSpeakingView speakingView;
    private boolean textOnly;
    private UserAvatarLayout userAvatarLayout;
    private View voiceMute;
    private View voiceMuteHost;

    public SRPresenterItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.localChannelUid = -1;
        NVContext nVContext = Utils.getNVContext(context);
        if (nVContext != null) {
            this.screenRoomService = (ScreenRoomService) nVContext.getService("screenRoom");
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.localMuteIndicator = findViewById(R.id.local_mute);
        this.badNetWorkIndicator = findViewById(R.id.bad_connection);
        this.imgVolumeLevelMid = (VolumeIndicator) findViewById(R.id.volume_level_mid);
        this.voiceMute = findViewById(R.id.voice_mute);
        this.voiceMuteHost = findViewById(R.id.voice_mute_host);
        this.userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.speakingView = (UserSpeakingView) findViewById(R.id.user_speaking);
        this.imgJoinLoading = (ImageView) findViewById(R.id.join_loading);
        this.hostLabelView = (TextView) findViewById(R.id.host_label);
        this.offlineView = (ImageView) findViewById(R.id.offline);
    }

    public void setLocalUid(int i) {
        this.localChannelUid = i;
    }

    public void setTextOnly(boolean z) {
        this.textOnly = z;
    }

    public void updateView(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper, boolean z, boolean z2, boolean z3, String str) {
        boolean zIsEqualsNotNull;
        if (channelUserWrapper == null || signallingChannel == null) {
            return;
        }
        this.channelUserWrapper = channelUserWrapper.m36clone();
        this.isHost = z;
        this.showVideo = z2;
        this.isLocalMute = z3;
        UserStatusData userStatusData = channelUserWrapper.userStatus;
        boolean z4 = channelUserWrapper.status == 1;
        boolean z5 = userStatusData != null && userStatusData.isVoiceMuted();
        boolean z6 = userStatusData != null && userStatusData.isBadNetwork();
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext != null) {
            String userId = ((AccountService) nVContext.getService("account")).getUserId();
            ChannelUser channelUser = this.channelUserWrapper.channelUser;
            zIsEqualsNotNull = Utils.isEqualsNotNull(userId, channelUser != null ? channelUser.uid() : null);
        } else {
            zIsEqualsNotNull = false;
        }
        boolean z7 = this.channelUserWrapper.channelUid == this.localChannelUid || zIsEqualsNotNull;
        boolean z8 = z && !z2;
        setTag(R.id.sr_item_id, Integer.valueOf(this.channelUserWrapper.channelUid));
        int i = 8;
        if (TextUtils.isEmpty(str)) {
            this.hostLabelView.setVisibility(8);
        } else {
            this.hostLabelView.setVisibility(0);
            this.hostLabelView.setText(str);
        }
        ChannelUser channelUser2 = this.channelUserWrapper.channelUser;
        User user = channelUser2 != null ? channelUser2.userProfile : null;
        int curVolumeLevel = userStatusData == null ? 0 : userStatusData.getCurVolumeLevel();
        if (z8 && signallingChannel.channelType == 5) {
            if (z7) {
                ScreenRoomService screenRoomService = this.screenRoomService;
                z5 = screenRoomService != null && screenRoomService.getLocalMicMuted();
            } else {
                ScreenRoomService screenRoomService2 = this.screenRoomService;
                z5 = screenRoomService2 != null && screenRoomService2.isSrHostMuted();
                curVolumeLevel = this.hostVolumeLevel;
            }
        }
        ChannelUser channelUser3 = channelUserWrapper.channelUser;
        boolean z9 = channelUser3 != null && channelUser3.joinRole == 1;
        if (!z9) {
            curVolumeLevel = 0;
        }
        this.voiceMute.setVisibility((!z9 || z3 || !z5 || this.textOnly || this.isHostView) ? 8 : 0);
        this.voiceMuteHost.setVisibility((z9 && !z3 && z5 && !this.textOnly && this.isHostView) ? 0 : 8);
        this.badNetWorkIndicator.setVisibility((!z6 || z5) ? 8 : 0);
        this.imgVolumeLevelMid.setValue(curVolumeLevel / 4.0f, !z);
        VolumeIndicator volumeIndicator = this.imgVolumeLevelMid;
        if (z4 && !z3 && !z5 && !this.textOnly) {
            i = 0;
        }
        volumeIndicator.setVisibility(i);
        this.userAvatarLayout.setUser(user);
        if (z5 || z3) {
            curVolumeLevel = 0;
        }
        this.userAvatarLayout.showAudioStroke(!this.textOnly && curVolumeLevel > 0);
        UserSpeakingView userSpeakingView = this.speakingView;
        if (this.textOnly) {
            curVolumeLevel = 0;
        }
        userSpeakingView.setVolumeLevel(curVolumeLevel);
        this.localMuteIndicator.setVisibility(z3 ? 0 : 4);
        ChannelUser channelUser4 = channelUserWrapper.channelUser;
        boolean z10 = channelUser4 != null && channelUser4.isOffline;
        updateLoadingView(this.imgJoinLoading, z4, z3, z7 && z, z10, z9);
        if (z10) {
            this.userAvatarLayout.setAlpha(0.37f);
            this.userAvatarLayout.setHasOverlappingRendering(false);
            this.offlineView.setVisibility(0);
        } else {
            this.userAvatarLayout.setAlpha(1.0f);
            this.userAvatarLayout.setHasOverlappingRendering(true);
            this.offlineView.setVisibility(4);
        }
    }

    private void updateLoadingView(ImageView imageView, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        SpinDrawable spinDrawable;
        if (imageView.getDrawable() instanceof SpinDrawable) {
            spinDrawable = (SpinDrawable) imageView.getDrawable();
        } else {
            spinDrawable = new SpinDrawable();
            spinDrawable.setLoadingColor(-1);
            imageView.setImageDrawable(spinDrawable);
        }
        if (z || z2 || z3 || z4 || !z5) {
            spinDrawable.stop();
            imageView.setVisibility(8);
        } else {
            if (!spinDrawable.isRunning()) {
                spinDrawable.start();
            }
            imageView.setVisibility(0);
        }
    }

    public void setHostVolumeLevel(int i) {
        this.hostVolumeLevel = i;
    }
}
