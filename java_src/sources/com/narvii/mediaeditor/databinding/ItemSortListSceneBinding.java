package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.scene.view.NVSceneView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemSortListSceneBinding implements ViewBinding {

    @NonNull
    public final ImageView attached;

    @NonNull
    public final ImageView dragHandle;

    @NonNull
    public final TintButton editHandle;

    @NonNull
    public final View icOverlay;

    @NonNull
    public final ImageView ivAddVideo;

    @NonNull
    public final ThumbImageView ivCoverImage;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final FrameLayout sceneThumbnailLayout;

    @NonNull
    public final NVSceneView sceneView;

    @NonNull
    public final TextView tvTime;

    @NonNull
    public final TextView tvTitle;

    @NonNull
    public final ImageView warningView;

    @NonNull
    public static ItemSortListSceneBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSortListSceneBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.attached;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.drag_handle;
            ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
            if (imageView2 != null) {
                i10 = R.id.edit_handle;
                TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
                if (tintButton != null && (viewA = ViewBindings.a(view, (i10 = R.id.ic_overlay))) != null) {
                    i10 = R.id.iv_add_video;
                    ImageView imageView3 = (ImageView) ViewBindings.a(view, i10);
                    if (imageView3 != null) {
                        i10 = R.id.iv_cover_image;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
                        if (thumbImageView != null) {
                            i10 = R.id.scene_thumbnail_layout;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                            if (frameLayout != null) {
                                i10 = R.id.scene_view;
                                NVSceneView nVSceneView = (NVSceneView) ViewBindings.a(view, i10);
                                if (nVSceneView != null) {
                                    i10 = R.id.tv_time;
                                    TextView textView = (TextView) ViewBindings.a(view, i10);
                                    if (textView != null) {
                                        i10 = R.id.tv_title;
                                        TextView textView2 = (TextView) ViewBindings.a(view, i10);
                                        if (textView2 != null) {
                                            i10 = R.id.warning_view;
                                            ImageView imageView4 = (ImageView) ViewBindings.a(view, i10);
                                            if (imageView4 != null) {
                                                return new ItemSortListSceneBinding((RelativeLayout) view, imageView, imageView2, tintButton, viewA, imageView3, thumbImageView, frameLayout, nVSceneView, textView, textView2, imageView4);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemSortListSceneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_sort_list_scene, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSortListSceneBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TintButton tintButton, @NonNull View view, @NonNull ImageView imageView3, @NonNull ThumbImageView thumbImageView, @NonNull FrameLayout frameLayout, @NonNull NVSceneView nVSceneView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView4) {
        this.rootView = relativeLayout;
        this.attached = imageView;
        this.dragHandle = imageView2;
        this.editHandle = tintButton;
        this.icOverlay = view;
        this.ivAddVideo = imageView3;
        this.ivCoverImage = thumbImageView;
        this.sceneThumbnailLayout = frameLayout;
        this.sceneView = nVSceneView;
        this.tvTime = textView;
        this.tvTitle = textView2;
        this.warningView = imageView4;
    }
}
