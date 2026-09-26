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
import com.narvii.amino.master.R;
import com.narvii.chat.video.floating.AudioFloatingLayout;
import com.narvii.chat.video.layout.LiveCallingLayout;
import com.narvii.chat.video.layout.VoiceMainLayout;
import com.narvii.chat.video.layout.VoiceParticipantLayout;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class FloatingAudioWindowBinding implements ViewBinding {

    @NonNull
    public final VoiceMainLayout audioMiniContainer;

    @NonNull
    public final NVImageView bg;

    @NonNull
    public final LiveCallingLayout callLayout;

    @NonNull
    public final ImageView close;

    @NonNull
    public final TextView ended;

    @NonNull
    public final VoiceParticipantLayout participantLayout;

    @NonNull
    private final AudioFloatingLayout rootView;

    @NonNull
    public final TextView warning;

    @NonNull
    public static FloatingAudioWindowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public AudioFloatingLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FloatingAudioWindowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.floating_audio_window, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FloatingAudioWindowBinding(@NonNull AudioFloatingLayout audioFloatingLayout, @NonNull VoiceMainLayout voiceMainLayout, @NonNull NVImageView nVImageView, @NonNull LiveCallingLayout liveCallingLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull VoiceParticipantLayout voiceParticipantLayout, @NonNull TextView textView2) {
        this.rootView = audioFloatingLayout;
        this.audioMiniContainer = voiceMainLayout;
        this.bg = nVImageView;
        this.callLayout = liveCallingLayout;
        this.close = imageView;
        this.ended = textView;
        this.participantLayout = voiceParticipantLayout;
        this.warning = textView2;
    }

    @NonNull
    public static FloatingAudioWindowBinding bind(@NonNull View view) {
        int i10 = R.id.audio_mini_container;
        VoiceMainLayout voiceMainLayout = (VoiceMainLayout) ViewBindings.a(view, R.id.audio_mini_container);
        if (voiceMainLayout != null) {
            i10 = R.id.bg;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.bg);
            if (nVImageView != null) {
                i10 = R.id.call_layout;
                LiveCallingLayout liveCallingLayout = (LiveCallingLayout) ViewBindings.a(view, R.id.call_layout);
                if (liveCallingLayout != null) {
                    i10 = R.id.close;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.close);
                    if (imageView != null) {
                        i10 = R.id.ended;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.ended);
                        if (textView != null) {
                            i10 = R.id.participant_layout;
                            VoiceParticipantLayout voiceParticipantLayout = (VoiceParticipantLayout) ViewBindings.a(view, R.id.participant_layout);
                            if (voiceParticipantLayout != null) {
                                i10 = R.id.warning;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.warning);
                                if (textView2 != null) {
                                    return new FloatingAudioWindowBinding((AudioFloatingLayout) view, voiceMainLayout, nVImageView, liveCallingLayout, imageView, textView, voiceParticipantLayout, textView2);
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
