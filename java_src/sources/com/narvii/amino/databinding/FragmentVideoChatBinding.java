package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.chat.screenroom.widgets.SRLiveUserLayout;
import com.narvii.chat.video.layout.LiveCallingLayout;
import com.narvii.chat.video.layout.VideoPresenterLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class FragmentVideoChatBinding implements ViewBinding {

    @NonNull
    public final LiveCallingLayout callLayout;

    @NonNull
    public final SRLiveUserLayout liveUserContainer;

    @NonNull
    public final VideoPresenterLayout participantLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FlexLayout rtcVideoLayout;

    @NonNull
    public static FragmentVideoChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentVideoChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_video_chat, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentVideoChatBinding(@NonNull LinearLayout linearLayout, @NonNull LiveCallingLayout liveCallingLayout, @NonNull SRLiveUserLayout sRLiveUserLayout, @NonNull VideoPresenterLayout videoPresenterLayout, @NonNull FlexLayout flexLayout) {
        this.rootView = linearLayout;
        this.callLayout = liveCallingLayout;
        this.liveUserContainer = sRLiveUserLayout;
        this.participantLayout = videoPresenterLayout;
        this.rtcVideoLayout = flexLayout;
    }

    @NonNull
    public static FragmentVideoChatBinding bind(@NonNull View view) {
        int i10 = R.id.call_layout;
        LiveCallingLayout liveCallingLayout = (LiveCallingLayout) ViewBindings.a(view, R.id.call_layout);
        if (liveCallingLayout != null) {
            i10 = R.id.live_user_container;
            SRLiveUserLayout sRLiveUserLayout = (SRLiveUserLayout) ViewBindings.a(view, R.id.live_user_container);
            if (sRLiveUserLayout != null) {
                i10 = R.id.participant_layout;
                VideoPresenterLayout videoPresenterLayout = (VideoPresenterLayout) ViewBindings.a(view, R.id.participant_layout);
                if (videoPresenterLayout != null) {
                    i10 = R.id.rtc_video_layout;
                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.rtc_video_layout);
                    if (flexLayout != null) {
                        return new FragmentVideoChatBinding((LinearLayout) view, liveCallingLayout, sRLiveUserLayout, videoPresenterLayout, flexLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
