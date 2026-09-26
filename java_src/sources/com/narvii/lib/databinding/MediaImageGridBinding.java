package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class MediaImageGridBinding implements ViewBinding {

    @NonNull
    public final View greyMask;

    @NonNull
    public final NVImageView image;

    @NonNull
    public final ImageView mediaPickerLabel;

    @NonNull
    public final TextView mediaPickerVideoTime;

    @NonNull
    public final ImageView membershipLabel;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final ImageView select;

    @NonNull
    public static MediaImageGridBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaImageGridBinding bind(@NonNull View view) {
        int i10 = R.id.grey_mask;
        View viewA = ViewBindings.a(view, i10);
        if (viewA != null) {
            i10 = R.id.image;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
            if (nVImageView != null) {
                i10 = R.id.media_picker_label;
                ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                if (imageView != null) {
                    i10 = R.id.media_picker_video_time;
                    TextView textView = (TextView) ViewBindings.a(view, i10);
                    if (textView != null) {
                        i10 = R.id.membership_label;
                        ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                        if (imageView2 != null) {
                            i10 = R.id.select;
                            ImageView imageView3 = (ImageView) ViewBindings.a(view, i10);
                            if (imageView3 != null) {
                                return new MediaImageGridBinding((RelativeLayout) view, viewA, nVImageView, imageView, textView, imageView2, imageView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaImageGridBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_image_grid, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaImageGridBinding(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull NVImageView nVImageView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull ImageView imageView3) {
        this.rootView = relativeLayout;
        this.greyMask = view;
        this.image = nVImageView;
        this.mediaPickerLabel = imageView;
        this.mediaPickerVideoTime = textView;
        this.membershipLabel = imageView2;
        this.select = imageView3;
    }
}
