package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;

/* JADX INFO: loaded from: classes11.dex */
public final class ComponentVolumeProgressBarBinding implements ViewBinding {

    @NonNull
    public final ImageView iconVolume;

    @NonNull
    private final View rootView;

    @NonNull
    public final SeekBar volumeBar;

    @NonNull
    public final TextView volumeProgressText;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ComponentVolumeProgressBarBinding bind(@NonNull View view) {
        int i10 = R.id.icon_volume;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.volume_bar;
            SeekBar seekBar = (SeekBar) ViewBindings.a(view, i10);
            if (seekBar != null) {
                i10 = R.id.volume_progress_text;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    return new ComponentVolumeProgressBarBinding(view, imageView, seekBar, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ComponentVolumeProgressBarBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.component_volume_progress_bar, viewGroup);
        return bind(viewGroup);
    }

    private ComponentVolumeProgressBarBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull SeekBar seekBar, @NonNull TextView textView) {
        this.rootView = view;
        this.iconVolume = imageView;
        this.volumeBar = seekBar;
        this.volumeProgressText = textView;
    }
}
