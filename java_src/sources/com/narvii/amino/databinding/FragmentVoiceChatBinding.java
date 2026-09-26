package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.chat.screenroom.widgets.SRLiveUserLayout;
import com.narvii.chat.video.layout.LiveCallingLayout;
import com.narvii.chat.video.layout.VVContentLayout;
import com.narvii.chat.video.layout.VoicePresenterLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentVoiceChatBinding implements ViewBinding {

    @NonNull
    public final LiveCallingLayout callLayout;

    @NonNull
    public final SRLiveUserLayout liveUserContainer;

    @NonNull
    public final VoicePresenterLayout participantLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FlexLayout voiceMainLayout;

    @NonNull
    public final VVContentLayout vvLiveContent;

    @NonNull
    public static FragmentVoiceChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentVoiceChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_voice_chat, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentVoiceChatBinding(@NonNull FrameLayout frameLayout, @NonNull LiveCallingLayout liveCallingLayout, @NonNull SRLiveUserLayout sRLiveUserLayout, @NonNull VoicePresenterLayout voicePresenterLayout, @NonNull FlexLayout flexLayout, @NonNull VVContentLayout vVContentLayout) {
        this.rootView = frameLayout;
        this.callLayout = liveCallingLayout;
        this.liveUserContainer = sRLiveUserLayout;
        this.participantLayout = voicePresenterLayout;
        this.voiceMainLayout = flexLayout;
        this.vvLiveContent = vVContentLayout;
    }

    @NonNull
    public static FragmentVoiceChatBinding bind(@NonNull View view) {
        int i10 = R.id.call_layout;
        LiveCallingLayout liveCallingLayout = (LiveCallingLayout) ViewBindings.a(view, R.id.call_layout);
        if (liveCallingLayout != null) {
            i10 = R.id.live_user_container;
            SRLiveUserLayout sRLiveUserLayout = (SRLiveUserLayout) ViewBindings.a(view, R.id.live_user_container);
            if (sRLiveUserLayout != null) {
                i10 = R.id.participant_layout;
                VoicePresenterLayout voicePresenterLayout = (VoicePresenterLayout) ViewBindings.a(view, R.id.participant_layout);
                if (voicePresenterLayout != null) {
                    i10 = R.id.voice_main_layout;
                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.voice_main_layout);
                    if (flexLayout != null) {
                        i10 = R.id.vv_live_content;
                        VVContentLayout vVContentLayout = (VVContentLayout) ViewBindings.a(view, R.id.vv_live_content);
                        if (vVContentLayout != null) {
                            return new FragmentVoiceChatBinding((FrameLayout) view, liveCallingLayout, sRLiveUserLayout, voicePresenterLayout, flexLayout, vVContentLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
