package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.narvii.mediaeditor.R;
import com.narvii.mediaeditor.databinding.ComponentVolumeProgressBarBinding;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class VolumeProgressView extends RelativeLayout {

    @NotNull
    private final ComponentVolumeProgressBarBinding binding;

    @Nullable
    private OnVolumeChangedListener volumeListener;

    public interface OnVolumeChangedListener {
        void onVolumeChanged(int i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VolumeProgressView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        ComponentVolumeProgressBarBinding componentVolumeProgressBarBindingInflate = ComponentVolumeProgressBarBinding.inflate(LayoutInflater.from(getContext()), this);
        t.i(componentVolumeProgressBarBindingInflate, "inflate(...)");
        this.binding = componentVolumeProgressBarBindingInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$1(View view) {
    }

    public final void removeOnVolumeChangedListener() {
        this.volumeListener = null;
    }

    public static /* synthetic */ void init$default(VolumeProgressView volumeProgressView, int i10, OnVolumeChangedListener onVolumeChangedListener, boolean z6, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z6 = true;
        }
        volumeProgressView.init(i10, onVolumeChangedListener, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateVolumeIcon(int i10) {
        ComponentVolumeProgressBarBinding componentVolumeProgressBarBinding = this.binding;
        if (i10 <= 0) {
            componentVolumeProgressBarBinding.iconVolume.setImageLevel(3);
        } else if (1 > i10 || i10 >= 50) {
            componentVolumeProgressBarBinding.iconVolume.setImageLevel(1);
        } else {
            componentVolumeProgressBarBinding.iconVolume.setImageLevel(2);
        }
    }

    public final void init(int i10, @NotNull OnVolumeChangedListener listener, boolean z6) {
        t.j(listener, "listener");
        Drawable drawable = ContextCompat.getDrawable(getContext(), R.drawable.button_volume_bg);
        if (drawable != null) {
            if (z6) {
                this.binding.volumeProgressText.setTextColor(Color.parseColor("#88FFFFFF"));
                DrawableCompat.n(drawable, Color.parseColor("#FFFFFF"));
            } else {
                this.binding.volumeProgressText.setTextColor(Color.parseColor("#4A4A4A"));
                DrawableCompat.n(drawable, Color.parseColor("#4A4A4A"));
            }
        }
        this.binding.iconVolume.setImageDrawable(drawable);
        updateVolumeIcon(i10);
        this.volumeListener = listener;
        this.binding.volumeBar.setProgress(i10);
        TextView textView = this.binding.volumeProgressText;
        StringBuilder sb = new StringBuilder();
        sb.append(i10);
        sb.append('%');
        textView.setText(sb.toString());
        this.binding.volumeBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.video.widget.VolumeProgressView.init.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(@Nullable SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(@Nullable SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(@Nullable SeekBar seekBar, int i11, boolean z10) {
                TextView textView2 = VolumeProgressView.this.binding.volumeProgressText;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i11);
                sb2.append('%');
                textView2.setText(sb2.toString());
                VolumeProgressView.this.updateVolumeIcon(i11);
                OnVolumeChangedListener onVolumeChangedListener = VolumeProgressView.this.volumeListener;
                if (onVolumeChangedListener != null) {
                    onVolumeChangedListener.onVolumeChanged(i11);
                }
            }
        });
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.widget.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VolumeProgressView.init$lambda$1(view);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VolumeProgressView(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
        ComponentVolumeProgressBarBinding componentVolumeProgressBarBindingInflate = ComponentVolumeProgressBarBinding.inflate(LayoutInflater.from(getContext()), this);
        t.i(componentVolumeProgressBarBindingInflate, "inflate(...)");
        this.binding = componentVolumeProgressBarBindingInflate;
    }
}
