package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class MediaImagePickerAlbumBinding implements ViewBinding {

    @NonNull
    public final NVImageView image;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static MediaImagePickerAlbumBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaImagePickerAlbumBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
        if (nVImageView != null) {
            i10 = R.id.title;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                return new MediaImagePickerAlbumBinding((LinearLayout) view, nVImageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaImagePickerAlbumBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_image_picker_album, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaImagePickerAlbumBinding(@NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.image = nVImageView;
        this.title = textView;
    }
}
