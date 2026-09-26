package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaAudioPickerItemBinding implements ViewBinding {

    @NonNull
    public final NVImageView image;

    @NonNull
    public final TextView mediaPickerInfo;

    @NonNull
    public final TextView mediaPickerTime;

    @NonNull
    public final TextView mediaPickerTitle;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ImageView select;

    @NonNull
    public static MediaAudioPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaAudioPickerItemBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
        if (nVImageView != null) {
            i10 = R.id.media_picker_info;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.media_picker_time;
                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                if (textView2 != null) {
                    i10 = R.id.media_picker_title;
                    TextView textView3 = (TextView) ViewBindings.a(view, i10);
                    if (textView3 != null) {
                        i10 = R.id.select;
                        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                        if (imageView != null) {
                            return new MediaAudioPickerItemBinding((LinearLayout) view, nVImageView, textView, textView2, textView3, imageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaAudioPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_audio_picker_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaAudioPickerItemBinding(@NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.image = nVImageView;
        this.mediaPickerInfo = textView;
        this.mediaPickerTime = textView2;
        this.mediaPickerTitle = textView3;
        this.select = imageView;
    }
}
