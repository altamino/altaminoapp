package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.lib.R;
import com.narvii.widget.PickerSelectedView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemMediaPickerBinding implements ViewBinding {

    @NonNull
    public final TintButton createScene;

    @NonNull
    public final ThumbImageView imageView;

    @NonNull
    public final FrameLayout layoutAdd;

    @NonNull
    public final View maskView;

    @NonNull
    public final ImageView mediaPickerLabel;

    @NonNull
    public final TextView mediaPickerVideoTime;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final PickerSelectedView select;

    @NonNull
    public final TextView selectCount;

    @NonNull
    public static ItemMediaPickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemMediaPickerBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.create_scene;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton != null) {
            i10 = R.id.image_view;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
            if (thumbImageView != null) {
                i10 = R.id.layout_add;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                if (frameLayout != null && (viewA = ViewBindings.a(view, (i10 = R.id.mask_view))) != null) {
                    i10 = R.id.media_picker_label;
                    ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                    if (imageView != null) {
                        i10 = R.id.media_picker_video_time;
                        TextView textView = (TextView) ViewBindings.a(view, i10);
                        if (textView != null) {
                            i10 = R.id.select;
                            PickerSelectedView pickerSelectedView = (PickerSelectedView) ViewBindings.a(view, i10);
                            if (pickerSelectedView != null) {
                                i10 = R.id.select_count;
                                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                                if (textView2 != null) {
                                    return new ItemMediaPickerBinding((FlexLayout) view, tintButton, thumbImageView, frameLayout, viewA, imageView, textView, pickerSelectedView, textView2);
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
    public static ItemMediaPickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_media_picker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemMediaPickerBinding(@NonNull FlexLayout flexLayout, @NonNull TintButton tintButton, @NonNull ThumbImageView thumbImageView, @NonNull FrameLayout frameLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull PickerSelectedView pickerSelectedView, @NonNull TextView textView2) {
        this.rootView = flexLayout;
        this.createScene = tintButton;
        this.imageView = thumbImageView;
        this.layoutAdd = frameLayout;
        this.maskView = view;
        this.mediaPickerLabel = imageView;
        this.mediaPickerVideoTime = textView;
        this.select = pickerSelectedView;
        this.selectCount = textView2;
    }
}
