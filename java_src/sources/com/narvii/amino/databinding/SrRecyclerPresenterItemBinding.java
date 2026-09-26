package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.chat.screenroom.widgets.SRPresenterItemView;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.widget.VolumeIndicator;

/* JADX INFO: loaded from: classes8.dex */
public final class SrRecyclerPresenterItemBinding implements ViewBinding {

    @NonNull
    public final ImageView badConnection;

    @NonNull
    public final TextView hostLabel;

    @NonNull
    public final ImageView joinLoading;

    @NonNull
    public final ImageView localMute;

    @NonNull
    public final ImageView offline;

    @NonNull
    private final SRPresenterItemView rootView;

    @NonNull
    public final FlexLayout userAvatarContainer;

    @NonNull
    public final UserSpeakingView userSpeaking;

    @NonNull
    public final ImageView voiceMute;

    @NonNull
    public final ImageView voiceMuteHost;

    @NonNull
    public final VolumeIndicator volumeLevelMid;

    @NonNull
    public static SrRecyclerPresenterItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SRPresenterItemView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SrRecyclerPresenterItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sr_recycler_presenter_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SrRecyclerPresenterItemBinding(@NonNull SRPresenterItemView sRPresenterItemView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull FlexLayout flexLayout, @NonNull UserSpeakingView userSpeakingView, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull VolumeIndicator volumeIndicator) {
        this.rootView = sRPresenterItemView;
        this.badConnection = imageView;
        this.hostLabel = textView;
        this.joinLoading = imageView2;
        this.localMute = imageView3;
        this.offline = imageView4;
        this.userAvatarContainer = flexLayout;
        this.userSpeaking = userSpeakingView;
        this.voiceMute = imageView5;
        this.voiceMuteHost = imageView6;
        this.volumeLevelMid = volumeIndicator;
    }

    @NonNull
    public static SrRecyclerPresenterItemBinding bind(@NonNull View view) {
        int i10 = R.id.bad_connection;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.bad_connection);
        if (imageView != null) {
            i10 = R.id.host_label;
            TextView textView = (TextView) ViewBindings.a(view, R.id.host_label);
            if (textView != null) {
                i10 = R.id.join_loading;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.join_loading);
                if (imageView2 != null) {
                    i10 = R.id.local_mute;
                    ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.local_mute);
                    if (imageView3 != null) {
                        i10 = R.id.offline;
                        ImageView imageView4 = (ImageView) ViewBindings.a(view, R.id.offline);
                        if (imageView4 != null) {
                            i10 = R.id.user_avatar_container;
                            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.user_avatar_container);
                            if (flexLayout != null) {
                                i10 = R.id.user_speaking;
                                UserSpeakingView userSpeakingView = (UserSpeakingView) ViewBindings.a(view, R.id.user_speaking);
                                if (userSpeakingView != null) {
                                    i10 = R.id.voice_mute;
                                    ImageView imageView5 = (ImageView) ViewBindings.a(view, R.id.voice_mute);
                                    if (imageView5 != null) {
                                        i10 = R.id.voice_mute_host;
                                        ImageView imageView6 = (ImageView) ViewBindings.a(view, R.id.voice_mute_host);
                                        if (imageView6 != null) {
                                            i10 = R.id.volume_level_mid;
                                            VolumeIndicator volumeIndicator = (VolumeIndicator) ViewBindings.a(view, R.id.volume_level_mid);
                                            if (volumeIndicator != null) {
                                                return new SrRecyclerPresenterItemBinding((SRPresenterItemView) view, imageView, textView, imageView2, imageView3, imageView4, flexLayout, userSpeakingView, imageView5, imageView6, volumeIndicator);
                                            }
                                        }
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
