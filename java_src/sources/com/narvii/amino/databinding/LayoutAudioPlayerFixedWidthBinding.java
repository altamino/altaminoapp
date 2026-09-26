package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.audio.AudioPlayerFixedWidth;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class LayoutAudioPlayerFixedWidthBinding implements ViewBinding {

    @NonNull
    public final AudioPlayerFixedWidth audioPlayer;

    @NonNull
    public final TintButton icon;

    @NonNull
    public final ProgressBar progressBar;

    @NonNull
    private final AudioPlayerFixedWidth rootView;

    @NonNull
    public final SeekBar seekbar;

    @NonNull
    public final SpinningView spinner;

    @NonNull
    public final TextView time;

    @NonNull
    public static LayoutAudioPlayerFixedWidthBinding bind(@NonNull View view) {
        AudioPlayerFixedWidth audioPlayerFixedWidth = (AudioPlayerFixedWidth) view;
        int i10 = R.id.icon;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.icon);
        if (tintButton != null) {
            i10 = R.id.progress_bar;
            ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.progress_bar);
            if (progressBar != null) {
                i10 = R.id.seekbar;
                SeekBar seekBar = (SeekBar) ViewBindings.a(view, R.id.seekbar);
                if (seekBar != null) {
                    i10 = R.id.spinner;
                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.spinner);
                    if (spinningView != null) {
                        i10 = R.id.time;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.time);
                        if (textView != null) {
                            return new LayoutAudioPlayerFixedWidthBinding(audioPlayerFixedWidth, audioPlayerFixedWidth, tintButton, progressBar, seekBar, spinningView, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static LayoutAudioPlayerFixedWidthBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public AudioPlayerFixedWidth getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutAudioPlayerFixedWidthBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_audio_player_fixed_width, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutAudioPlayerFixedWidthBinding(@NonNull AudioPlayerFixedWidth audioPlayerFixedWidth, @NonNull AudioPlayerFixedWidth audioPlayerFixedWidth2, @NonNull TintButton tintButton, @NonNull ProgressBar progressBar, @NonNull SeekBar seekBar, @NonNull SpinningView spinningView, @NonNull TextView textView) {
        this.rootView = audioPlayerFixedWidth;
        this.audioPlayer = audioPlayerFixedWidth2;
        this.icon = tintButton;
        this.progressBar = progressBar;
        this.seekbar = seekBar;
        this.spinner = spinningView;
        this.time = textView;
    }
}
