package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.livelayer.detailview.LiveLayerDetailListItemView;
import com.narvii.widget.MarqueeTextView;
import com.narvii.widget.RtcIndicatorView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class LiveLayerDetailVvChattingItemBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final ThumbImageView organizerAvatar;

    @NonNull
    public final FlexLayout organizerSpeakingLayout;

    @NonNull
    private final LiveLayerDetailListItemView rootView;

    @NonNull
    public final RtcIndicatorView rtcIndicatorView;

    @NonNull
    public final MarqueeTextView screenRoomPlaying;

    @NonNull
    public final LottieAnimationView srAnim;

    @NonNull
    public final TextView title;

    @NonNull
    public final UserSpeakingView userSpeaking;

    @NonNull
    public static LiveLayerDetailVvChattingItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LiveLayerDetailListItemView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerDetailVvChattingItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_detail_vv_chatting_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerDetailVvChattingItemBinding(@NonNull LiveLayerDetailListItemView liveLayerDetailListItemView, @NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2, @NonNull FlexLayout flexLayout, @NonNull RtcIndicatorView rtcIndicatorView, @NonNull MarqueeTextView marqueeTextView, @NonNull LottieAnimationView lottieAnimationView, @NonNull TextView textView, @NonNull UserSpeakingView userSpeakingView) {
        this.rootView = liveLayerDetailListItemView;
        this.image = thumbImageView;
        this.organizerAvatar = thumbImageView2;
        this.organizerSpeakingLayout = flexLayout;
        this.rtcIndicatorView = rtcIndicatorView;
        this.screenRoomPlaying = marqueeTextView;
        this.srAnim = lottieAnimationView;
        this.title = textView;
        this.userSpeaking = userSpeakingView;
    }

    @NonNull
    public static LiveLayerDetailVvChattingItemBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
        if (thumbImageView != null) {
            i10 = R.id.organizer_avatar;
            ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.organizer_avatar);
            if (thumbImageView2 != null) {
                i10 = R.id.organizer_speaking_layout;
                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.organizer_speaking_layout);
                if (flexLayout != null) {
                    i10 = R.id.rtc_indicator_view;
                    RtcIndicatorView rtcIndicatorView = (RtcIndicatorView) ViewBindings.a(view, R.id.rtc_indicator_view);
                    if (rtcIndicatorView != null) {
                        i10 = R.id.screen_room_playing;
                        MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.a(view, R.id.screen_room_playing);
                        if (marqueeTextView != null) {
                            i10 = R.id.sr_anim;
                            LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.a(view, R.id.sr_anim);
                            if (lottieAnimationView != null) {
                                i10 = R.id.title;
                                TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView != null) {
                                    i10 = R.id.user_speaking;
                                    UserSpeakingView userSpeakingView = (UserSpeakingView) ViewBindings.a(view, R.id.user_speaking);
                                    if (userSpeakingView != null) {
                                        return new LiveLayerDetailVvChattingItemBinding((LiveLayerDetailListItemView) view, thumbImageView, thumbImageView2, flexLayout, rtcIndicatorView, marqueeTextView, lottieAnimationView, textView, userSpeakingView);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
