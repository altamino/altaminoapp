package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.mediaeditor.R;
import com.narvii.widget.NVImageView;
import com.narvii.widget.RadiusLayout;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemSceneTemplateBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView coverImage;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final RadiusLayout videoContainer;

    @NonNull
    public final NVImageView videoPlayButton;

    @NonNull
    public static ItemSceneTemplateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSceneTemplateBinding bind(@NonNull View view) {
        int i10 = R.id.cover_image;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
        if (thumbImageView != null) {
            i10 = R.id.video_container;
            RadiusLayout radiusLayout = (RadiusLayout) ViewBindings.a(view, i10);
            if (radiusLayout != null) {
                i10 = R.id.video_play_button;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
                if (nVImageView != null) {
                    return new ItemSceneTemplateBinding((FlexLayout) view, thumbImageView, radiusLayout, nVImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemSceneTemplateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_scene_template, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSceneTemplateBinding(@NonNull FlexLayout flexLayout, @NonNull ThumbImageView thumbImageView, @NonNull RadiusLayout radiusLayout, @NonNull NVImageView nVImageView) {
        this.rootView = flexLayout;
        this.coverImage = thumbImageView;
        this.videoContainer = radiusLayout;
        this.videoPlayButton = nVImageView;
    }
}
