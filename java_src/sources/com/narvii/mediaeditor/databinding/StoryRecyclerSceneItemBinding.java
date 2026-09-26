package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.scene.view.NVSceneView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class StoryRecyclerSceneItemBinding implements ViewBinding {

    @NonNull
    public final ImageView attached;

    @NonNull
    public final RelativeLayout borderLayout;

    @NonNull
    public final View borderView;

    @NonNull
    public final NVImageView editTag;

    @NonNull
    public final View icOverlay;

    @NonNull
    public final ImageView ivAddVideo;

    @NonNull
    public final ThumbImageView ivCoverImage;

    @NonNull
    public final NVImageView ivPlayingIcon;

    @NonNull
    public final LinearLayout layoutItem;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final NVSceneView sceneView;

    @NonNull
    public final View splitView;

    @NonNull
    public final TextView tvTime;

    @NonNull
    public final TextView tvTitle;

    @NonNull
    public static StoryRecyclerSceneItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StoryRecyclerSceneItemBinding bind(@NonNull View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i10 = R.id.attached;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.border_layout;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, i10);
            if (relativeLayout != null && (viewA = ViewBindings.a(view, (i10 = R.id.border_view))) != null) {
                i10 = R.id.edit_tag;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
                if (nVImageView != null && (viewA2 = ViewBindings.a(view, (i10 = R.id.ic_overlay))) != null) {
                    i10 = R.id.iv_add_video;
                    ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                    if (imageView2 != null) {
                        i10 = R.id.iv_cover_image;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
                        if (thumbImageView != null) {
                            i10 = R.id.iv_playing_icon;
                            NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, i10);
                            if (nVImageView2 != null) {
                                i10 = R.id.layout_item;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                                if (linearLayout != null) {
                                    i10 = R.id.scene_view;
                                    NVSceneView nVSceneView = (NVSceneView) ViewBindings.a(view, i10);
                                    if (nVSceneView != null && (viewA3 = ViewBindings.a(view, (i10 = R.id.split_view))) != null) {
                                        i10 = R.id.tv_time;
                                        TextView textView = (TextView) ViewBindings.a(view, i10);
                                        if (textView != null) {
                                            i10 = R.id.tv_title;
                                            TextView textView2 = (TextView) ViewBindings.a(view, i10);
                                            if (textView2 != null) {
                                                return new StoryRecyclerSceneItemBinding((RelativeLayout) view, imageView, relativeLayout, viewA, nVImageView, viewA2, imageView2, thumbImageView, nVImageView2, linearLayout, nVSceneView, viewA3, textView, textView2);
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
    public static StoryRecyclerSceneItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.story_recycler_scene_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StoryRecyclerSceneItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull View view, @NonNull NVImageView nVImageView, @NonNull View view2, @NonNull ImageView imageView2, @NonNull ThumbImageView thumbImageView, @NonNull NVImageView nVImageView2, @NonNull LinearLayout linearLayout, @NonNull NVSceneView nVSceneView, @NonNull View view3, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.attached = imageView;
        this.borderLayout = relativeLayout2;
        this.borderView = view;
        this.editTag = nVImageView;
        this.icOverlay = view2;
        this.ivAddVideo = imageView2;
        this.ivCoverImage = thumbImageView;
        this.ivPlayingIcon = nVImageView2;
        this.layoutItem = linearLayout;
        this.sceneView = nVSceneView;
        this.splitView = view3;
        this.tvTime = textView;
        this.tvTitle = textView2;
    }
}
