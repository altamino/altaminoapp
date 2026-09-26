package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class SharedStickerPackPickerItemBinding implements ViewBinding {

    @NonNull
    public final FrameLayout cellMainLayout;

    @NonNull
    public final StickerImageView collectionIcon;

    @NonNull
    public final TextView collectionName;

    @NonNull
    public final ThumbImageView iconBg;

    @NonNull
    public final FrameLayout iconLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static SharedStickerPackPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SharedStickerPackPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.shared_sticker_pack_picker_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SharedStickerPackPickerItemBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull StickerImageView stickerImageView, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.cellMainLayout = frameLayout2;
        this.collectionIcon = stickerImageView;
        this.collectionName = textView;
        this.iconBg = thumbImageView;
        this.iconLayout = frameLayout3;
    }

    @NonNull
    public static SharedStickerPackPickerItemBinding bind(@NonNull View view) {
        int i10 = R.id.cell_main_layout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.cell_main_layout);
        if (frameLayout != null) {
            i10 = R.id.collection_icon;
            StickerImageView stickerImageView = (StickerImageView) ViewBindings.a(view, R.id.collection_icon);
            if (stickerImageView != null) {
                i10 = R.id.collection_name;
                TextView textView = (TextView) ViewBindings.a(view, R.id.collection_name);
                if (textView != null) {
                    i10 = R.id.icon_bg;
                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.icon_bg);
                    if (thumbImageView != null) {
                        i10 = R.id.icon_layout;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.icon_layout);
                        if (frameLayout2 != null) {
                            return new SharedStickerPackPickerItemBinding((FrameLayout) view, frameLayout, stickerImageView, textView, thumbImageView, frameLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
