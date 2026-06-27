package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.narvii.amino.mastes.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.video.view.CheckableImageView;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.video.ui.UserStatusData;
import com.narvii.widget.BlurImageView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinDrawable;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.VolumeIndicator;

/* loaded from: classes2.dex */
public class VideoPresenterItemView extends FrameLayout {
    private View attachContainer;
    private View badNetworkIndicator;
    private View badNetworkIndicatorVideoLayer;
    private CheckableImageView cameraFlip;
    private CheckableImageView cameraMuted;
    public int channelUid;
    private LinearLayout controllerViewOverlay;
    private View emptyContainer;
    private ImageView imgBadge;
    private ImageView imgBadgeInfo;
    private ImageView loadingIndicator;
    private View localMuteIndicator;
    private ImageView muteIndicator;
    private ImageView muteIndicatorVideoLayer;
    private View nicknameContainer;
    private View nicknameInfoContainer;
    private View organizerLabel;
    private FrameLayout sfContainer;
    public SubViewClickListener subViewClickListener;
    private NicknameView tvNickname;
    private NicknameView tvNicknameInfo;
    private UserAvatarLayout userAvatarLayout;
    private View userInfoContainer;
    private BlurImageView userInfoLayerBg;
    private UserSpeakingView userSpeakingView;
    private VolumeIndicator volumeIndicator;
    private VolumeIndicator volumeIndicatorVideoLayer;

    public interface SubViewClickListener {
        void onSubViewCliekedd(View view);
    }

    public VideoPresenterItemView(Context context) {
        this(context, null);
    }

    public VideoPresenterItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.channelUid = -1;
        FrameLayout.inflate(context, R.layout.item_video_prestenter_cell, this);
        this.sfContainer = (FrameLayout) findViewById(R.id.sv_container);
        this.emptyContainer = findViewById(R.id.empty_container);
        this.userInfoContainer = findViewById(R.id.user_info_layer);
        this.attachContainer = findViewById(R.id.attach_container);
        this.userInfoLayerBg = (BlurImageView) findViewById(R.id.user_info_bg);
        this.userSpeakingView = (UserSpeakingView) findViewById(R.id.user_speaking);
        this.userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.volumeIndicator = (VolumeIndicator) findViewById(R.id.volume_level);
        this.localMuteIndicator = findViewById(R.id.local_mute_indicator);
        this.badNetworkIndicator = findViewById(R.id.bad_connection_container);
        this.muteIndicator = (ImageView) findViewById(R.id.muted);
        this.loadingIndicator = (ImageView) findViewById(R.id.loading_indicator);
        this.volumeIndicatorVideoLayer = (VolumeIndicator) findViewById(R.id.volume_level_video_layer);
        this.muteIndicatorVideoLayer = (ImageView) findViewById(R.id.muted_video_layer);
        this.badNetworkIndicatorVideoLayer = findViewById(R.id.bad_network_video_layer);
        this.tvNickname = (NicknameView) findViewById(R.id.nickname);
        this.imgBadge = (ImageView) findViewById(R.id.nickname_badge);
        this.tvNicknameInfo = (NicknameView) findViewById(R.id.nickname_info_layer);
        this.imgBadgeInfo = (ImageView) findViewById(R.id.nickname_badge_info_layer);
        this.organizerLabel = findViewById(R.id.organizer_label);
        this.nicknameContainer = findViewById(R.id.nickname_container_video_layer);
        this.nicknameInfoContainer = findViewById(R.id.nickname_badge_info_layer_layout);
        this.controllerViewOverlay = (LinearLayout) findViewById(R.id.controller_video_layer);
        this.cameraMuted = (CheckableImageView) this.controllerViewOverlay.findViewById(R.id.camera_mute_overlay);
        this.cameraMuted.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.layout.-$$Lambda$VideoPresenterItemView$9TnCxtf8HDDTW-7xVxy4f92u_OE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0$VideoPresenterItemView(view);
            }
        });
        this.cameraFlip = (CheckableImageView) this.controllerViewOverlay.findViewById(R.id.camera_flip_overlay);
        this.cameraFlip.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.layout.-$$Lambda$VideoPresenterItemView$ojWD3vNInZkNUlz6aYvbTHA9aYM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1$VideoPresenterItemView(view);
            }
        });
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.layout.-$$Lambda$VideoPresenterItemView$Uwj0pI-XBJNqsPHkEwtqGAsfo04
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2$VideoPresenterItemView(view);
            }
        });
    }

    public /* synthetic */ void lambda$new$2$VideoPresenterItemView(View view) {
        this.subViewClickListener.onSubViewCliekedd(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: subViewIsClicked, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$new$1$VideoPresenterItemView(View view) {
        SubViewClickListener subViewClickListener = this.subViewClickListener;
        if (subViewClickListener != null) {
            subViewClickListener.onSubViewCliekedd(view);
        }
    }

    public void updatePresenter(ChannelUserWrapper channelUserWrapper, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        SpinDrawable spinDrawable;
        if (channelUserWrapper == null) {
            this.channelUid = -1;
            this.emptyContainer.setVisibility(0);
            this.sfContainer.removeAllViews();
            this.sfContainer.setVisibility(8);
            this.userInfoContainer.setVisibility(8);
            this.attachContainer.setVisibility(8);
            this.controllerViewOverlay.setVisibility(8);
            this.userSpeakingView.setVolumeLevel(0);
            this.volumeIndicator.setValue(0.0f, false);
            this.volumeIndicatorVideoLayer.setValue(0.0f, false);
            return;
        }
        this.channelUid = channelUserWrapper.channelUid;
        this.emptyContainer.setVisibility(8);
        this.sfContainer.setVisibility(0);
        this.userInfoContainer.setVisibility(0);
        this.attachContainer.setVisibility(0);
        UserStatusData userStatusData = channelUserWrapper.userStatus;
        ChannelUser channelUser = channelUserWrapper.channelUser;
        User user = channelUser == null ? null : channelUser.userProfile;
        boolean z7 = channelUserWrapper.status == 1;
        boolean z8 = userStatusData != null && userStatusData.isBadNetwork();
        boolean z9 = userStatusData != null && userStatusData.isVoiceMuted();
        boolean z10 = userStatusData != null && userStatusData.isVideoMuted();
        boolean z11 = z10 || z4 || !(z7 || (z && z2));
        this.userInfoContainer.setVisibility(z11 ? 0 : 8);
        if (!z10) {
            if (userStatusData != null && userStatusData.mView != null && (this.sfContainer.getChildCount() == 0 || this.sfContainer.getChildAt(0) != userStatusData.mView)) {
                this.sfContainer.removeAllViews();
                stripView(userStatusData.mView);
                this.sfContainer.addView(userStatusData.mView);
            }
        } else {
            this.sfContainer.removeAllViews();
        }
        int curVolumeLevel = (userStatusData == null || z9 || z4) ? 0 : userStatusData.getCurVolumeLevel();
        this.volumeIndicator.setVisibility((!z7 || z4 || z9 || !z10) ? 8 : 0);
        float f = curVolumeLevel / 4.0f;
        this.volumeIndicator.setValue(f, true);
        this.volumeIndicatorVideoLayer.setVisibility((z11 || !z7 || z9) ? 8 : 0);
        this.volumeIndicatorVideoLayer.setValue(f, true);
        if (z4 || z9 || !z11) {
            curVolumeLevel = 0;
        }
        this.userSpeakingView.setVolumeLevel(curVolumeLevel);
        this.userSpeakingView.setPendingSpeakingMode(z && !z7);
        ((NVImageView) findViewById(R.id.avatar)).setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.chat.video.layout.VideoPresenterItemView.1
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public void onImageChanged(NVImageView nVImageView, int i, Media media) {
                if (i == 4) {
                    VideoPresenterItemView.this.userInfoLayerBg.setImageDrawable2(nVImageView.getDrawable());
                }
            }
        });
        this.userAvatarLayout.showAudioStroke((!z || z7) && curVolumeLevel > 0);
        this.userAvatarLayout.setUser(user, z3);
        this.tvNickname.setUser(user);
        this.tvNicknameInfo.setUser(user);
        if (z) {
            this.tvNickname.setText(R.string.me);
            this.tvNicknameInfo.setText(R.string.me);
        }
        this.nicknameContainer.setVisibility((z6 || z || z10) ? 8 : 0);
        this.nicknameInfoContainer.setVisibility((z || !z10 || z6) ? 8 : 0);
        this.imgBadge.setVisibility(z3 ? 0 : 8);
        this.imgBadgeInfo.setVisibility(z3 ? 0 : 8);
        this.localMuteIndicator.setVisibility(z4 ? 0 : 8);
        this.badNetworkIndicator.setVisibility((!z11 || z4 || !z8 || z9) ? 8 : 0);
        this.badNetworkIndicatorVideoLayer.setVisibility((z11 || !z8 || z9) ? 8 : 0);
        this.muteIndicator.setVisibility((z4 || !z9) ? 8 : 0);
        this.muteIndicatorVideoLayer.setVisibility((z11 || !z9) ? 8 : 0);
        this.organizerLabel.setVisibility(4);
        this.controllerViewOverlay.setVisibility(z ? 0 : 8);
        this.cameraMuted.setChecked(z10);
        if (this.loadingIndicator.getDrawable() instanceof SpinDrawable) {
            spinDrawable = (SpinDrawable) this.loadingIndicator.getDrawable();
        } else {
            spinDrawable = new SpinDrawable();
            spinDrawable.setLoadingColor(-1);
            this.loadingIndicator.setImageDrawable(spinDrawable);
        }
        if (z7 || z4 || z || z10) {
            spinDrawable.stop();
            this.loadingIndicator.setVisibility(8);
        } else {
            if (!spinDrawable.isRunning()) {
                spinDrawable.start();
            }
            this.loadingIndicator.setVisibility(0);
        }
    }

    public void stripView(View view) {
        ViewParent parent = view.getParent();
        if (parent != null) {
            ((FrameLayout) parent).removeView(view);
        }
    }
}
