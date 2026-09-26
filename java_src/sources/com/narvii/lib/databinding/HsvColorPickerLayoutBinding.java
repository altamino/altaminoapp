package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class HsvColorPickerLayoutBinding implements ViewBinding {

    @NonNull
    public final SeekBar hueSeekBar;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final SeekBar saturationSeekBar;

    @NonNull
    public final SeekBar valueSeekBar;

    @NonNull
    public static HsvColorPickerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HsvColorPickerLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.hue_seek_bar;
        SeekBar seekBar = (SeekBar) ViewBindings.a(view, i10);
        if (seekBar != null) {
            i10 = R.id.saturation_seek_bar;
            SeekBar seekBar2 = (SeekBar) ViewBindings.a(view, i10);
            if (seekBar2 != null) {
                i10 = R.id.value_seek_bar;
                SeekBar seekBar3 = (SeekBar) ViewBindings.a(view, i10);
                if (seekBar3 != null) {
                    return new HsvColorPickerLayoutBinding((LinearLayout) view, seekBar, seekBar2, seekBar3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static HsvColorPickerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.hsv_color_picker_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HsvColorPickerLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull SeekBar seekBar, @NonNull SeekBar seekBar2, @NonNull SeekBar seekBar3) {
        this.rootView = linearLayout;
        this.hueSeekBar = seekBar;
        this.saturationSeekBar = seekBar2;
        this.valueSeekBar = seekBar3;
    }
}
