package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
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

/* JADX INFO: loaded from: classes3.dex */
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

    public VideoPresenterItemView(@NonNull Context context) {
        this(context, null);
    }

    public VideoPresenterItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.channelUid = -1;
        View.inflate(context, R.layout.item_video_prestenter_cell, this);
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
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.controller_video_layer);
        this.controllerViewOverlay = linearLayout;
        CheckableImageView checkableImageView = (CheckableImageView) linearLayout.findViewById(R.id.camera_mute_overlay);
        this.cameraMuted = checkableImageView;
        checkableImageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.layout.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2134a.lambda$new$0(view);
            }
        });
        CheckableImageView checkableImageView2 = (CheckableImageView) this.controllerViewOverlay.findViewById(R.id.camera_flip_overlay);
        this.cameraFlip = checkableImageView2;
        checkableImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.layout.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2135a.lambda$new$1(view);
            }
        });
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.layout.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2136a.lambda$new$2(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        this.subViewClickListener.onSubViewCliekedd(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: subViewIsClicked, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$new$1(View view) {
        SubViewClickListener subViewClickListener = this.subViewClickListener;
        if (subViewClickListener != null) {
            subViewClickListener.onSubViewCliekedd(view);
        }
    }

    public void updatePresenter(ChannelUserWrapper channelUserWrapper, boolean z6, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
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
        boolean z15 = channelUserWrapper.status == 1;
        boolean z16 = userStatusData != null && userStatusData.isBadNetwork();
        boolean z17 = userStatusData != null && userStatusData.isVoiceMuted();
        boolean z18 = userStatusData != null && userStatusData.isVideoMuted();
        boolean z19 = z18 || z12 || !(z15 || (z6 && z10));
        this.userInfoContainer.setVisibility(z19 ? 0 : 8);
        if (z18) {
            this.sfContainer.removeAllViews();
        } else if (userStatusData != null && userStatusData.mView != null && (this.sfContainer.getChildCount() == 0 || this.sfContainer.getChildAt(0) != userStatusData.mView)) {
            this.sfContainer.removeAllViews();
            stripView(userStatusData.mView);
            this.sfContainer.addView(userStatusData.mView);
        }
        int curVolumeLevel = (userStatusData == null || z17 || z12) ? 0 : userStatusData.getCurVolumeLevel();
        this.volumeIndicator.setVisibility((!z15 || z12 || z17 || !z18) ? 8 : 0);
        float f = curVolumeLevel / 4.0f;
        this.volumeIndicator.setValue(f, true);
        this.volumeIndicatorVideoLayer.setVisibility((z19 || !z15 || z17) ? 8 : 0);
        this.volumeIndicatorVideoLayer.setValue(f, true);
        if (z12 || z17 || !z19) {
            curVolumeLevel = 0;
        }
        this.userSpeakingView.setVolumeLevel(curVolumeLevel);
        this.userSpeakingView.setPendingSpeakingMode(z6 && !z15);
        ((NVImageView) findViewById(R.id.avatar)).setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.chat.video.layout.VideoPresenterItemView.1
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
                if (i10 == 4) {
                    VideoPresenterItemView.this.userInfoLayerBg.setImageDrawable2(nVImageView.getDrawable());
                }
            }
        });
        this.userAvatarLayout.showAudioStroke((!z6 || z15) && curVolumeLevel > 0);
        this.userAvatarLayout.setUser(user, z11);
        this.tvNickname.setUser(user);
        this.tvNicknameInfo.setUser(user);
        if (z6) {
            this.tvNickname.setText(R.string.me);
            this.tvNicknameInfo.setText(R.string.me);
        }
        this.nicknameContainer.setVisibility((z14 || z6 || z18) ? 8 : 0);
        this.nicknameInfoContainer.setVisibility((z6 || !z18 || z14) ? 8 : 0);
        this.imgBadge.setVisibility(z11 ? 0 : 8);
        this.imgBadgeInfo.setVisibility(z11 ? 0 : 8);
        this.localMuteIndicator.setVisibility(z12 ? 0 : 8);
        this.badNetworkIndicator.setVisibility((!z19 || z12 || !z16 || z17) ? 8 : 0);
        this.badNetworkIndicatorVideoLayer.setVisibility((z19 || !z16 || z17) ? 8 : 0);
        this.muteIndicator.setVisibility((z12 || !z17) ? 8 : 0);
        this.muteIndicatorVideoLayer.setVisibility((z19 || !z17) ? 8 : 0);
        this.organizerLabel.setVisibility(4);
        this.controllerViewOverlay.setVisibility(z6 ? 0 : 8);
        this.cameraMuted.setChecked(z18);
        if (this.loadingIndicator.getDrawable() instanceof SpinDrawable) {
            spinDrawable = (SpinDrawable) this.loadingIndicator.getDrawable();
        } else {
            spinDrawable = new SpinDrawable();
            spinDrawable.setLoadingColor(-1);
            this.loadingIndicator.setImageDrawable(spinDrawable);
        }
        if (z15 || z12 || z6 || z18) {
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
