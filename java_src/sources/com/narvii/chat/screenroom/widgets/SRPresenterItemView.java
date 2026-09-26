package com.narvii.chat.screenroom.widgets;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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

/* JADX INFO: loaded from: classes9.dex */
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

    public void setHostVolumeLevel(int i10) {
        this.hostVolumeLevel = i10;
    }

    public void setLocalUid(int i10) {
        this.localChannelUid = i10;
    }

    public void setTextOnly(boolean z6) {
        this.textOnly = z6;
    }

    public void updateView(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper, boolean z6, boolean z10, boolean z11, String str) {
        boolean zIsEqualsNotNull;
        if (channelUserWrapper == null || signallingChannel == null) {
            return;
        }
        this.channelUserWrapper = channelUserWrapper.m1315clone();
        this.isHost = z6;
        this.showVideo = z10;
        this.isLocalMute = z11;
        UserStatusData userStatusData = channelUserWrapper.userStatus;
        boolean z12 = channelUserWrapper.status == 1;
        boolean z13 = userStatusData != null && userStatusData.isVoiceMuted();
        boolean z14 = userStatusData != null && userStatusData.isBadNetwork();
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext != null) {
            String userId = ((AccountService) nVContext.getService("account")).getUserId();
            ChannelUser channelUser = this.channelUserWrapper.channelUser;
            zIsEqualsNotNull = Utils.isEqualsNotNull(userId, channelUser != null ? channelUser.uid() : null);
        } else {
            zIsEqualsNotNull = false;
        }
        int i10 = this.channelUserWrapper.channelUid;
        boolean z15 = i10 == this.localChannelUid || zIsEqualsNotNull;
        boolean z16 = z6 && !z10;
        setTag(R.id.sr_item_id, Integer.valueOf(i10));
        int i11 = 8;
        if (TextUtils.isEmpty(str)) {
            this.hostLabelView.setVisibility(8);
        } else {
            this.hostLabelView.setVisibility(0);
            this.hostLabelView.setText(str);
        }
        ChannelUser channelUser2 = this.channelUserWrapper.channelUser;
        User user = channelUser2 != null ? channelUser2.userProfile : null;
        int curVolumeLevel = userStatusData == null ? 0 : userStatusData.getCurVolumeLevel();
        if (z16 && signallingChannel.channelType == 5) {
            if (z15) {
                ScreenRoomService screenRoomService = this.screenRoomService;
                z13 = screenRoomService != null && screenRoomService.getLocalMicMuted();
            } else {
                ScreenRoomService screenRoomService2 = this.screenRoomService;
                z13 = screenRoomService2 != null && screenRoomService2.isSrHostMuted();
                curVolumeLevel = this.hostVolumeLevel;
            }
        }
        ChannelUser channelUser3 = channelUserWrapper.channelUser;
        boolean z17 = channelUser3 != null && channelUser3.joinRole == 1;
        if (!z17) {
            curVolumeLevel = 0;
        }
        this.voiceMute.setVisibility((!z17 || z11 || !z13 || this.textOnly || this.isHostView) ? 8 : 0);
        this.voiceMuteHost.setVisibility((z17 && !z11 && z13 && !this.textOnly && this.isHostView) ? 0 : 8);
        this.badNetWorkIndicator.setVisibility((!z14 || z13) ? 8 : 0);
        this.imgVolumeLevelMid.setValue(curVolumeLevel / 4.0f, !z6);
        VolumeIndicator volumeIndicator = this.imgVolumeLevelMid;
        if (z12 && !z11 && !z13 && !this.textOnly) {
            i11 = 0;
        }
        volumeIndicator.setVisibility(i11);
        this.userAvatarLayout.setUser(user);
        if (z13 || z11) {
            curVolumeLevel = 0;
        }
        this.userAvatarLayout.showAudioStroke(!this.textOnly && curVolumeLevel > 0);
        UserSpeakingView userSpeakingView = this.speakingView;
        if (this.textOnly) {
            curVolumeLevel = 0;
        }
        userSpeakingView.setVolumeLevel(curVolumeLevel);
        this.localMuteIndicator.setVisibility(z11 ? 0 : 4);
        ChannelUser channelUser4 = channelUserWrapper.channelUser;
        boolean z18 = channelUser4 != null && channelUser4.isOffline;
        updateLoadingView(this.imgJoinLoading, z12, z11, z15 && z6, z18, z17);
        if (z18) {
            this.userAvatarLayout.setAlpha(0.37f);
            this.userAvatarLayout.setHasOverlappingRendering(false);
            this.offlineView.setVisibility(0);
        } else {
            this.userAvatarLayout.setAlpha(1.0f);
            this.userAvatarLayout.setHasOverlappingRendering(true);
            this.offlineView.setVisibility(4);
        }
    }

    public SRPresenterItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.localChannelUid = -1;
        NVContext nVContext = Utils.getNVContext(context);
        if (nVContext != null) {
            this.screenRoomService = (ScreenRoomService) nVContext.getService("screenRoom");
        }
    }

    private void updateLoadingView(ImageView imageView, boolean z6, boolean z10, boolean z11, boolean z12, boolean z13) {
        SpinDrawable spinDrawable;
        if (imageView.getDrawable() instanceof SpinDrawable) {
            spinDrawable = (SpinDrawable) imageView.getDrawable();
        } else {
            spinDrawable = new SpinDrawable();
            spinDrawable.setLoadingColor(-1);
            imageView.setImageDrawable(spinDrawable);
        }
        if (!z6 && !z10 && !z11 && !z12 && z13) {
            if (!spinDrawable.isRunning()) {
                spinDrawable.start();
            }
            imageView.setVisibility(0);
        } else {
            spinDrawable.stop();
            imageView.setVisibility(8);
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
}
