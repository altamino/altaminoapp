package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.sticker.post.StickerPostItem;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class PostStickerItemBinding implements ViewBinding {

    @NonNull
    public final TextView countdown;

    @NonNull
    public final FontAwesomeView dragHandle;

    @NonNull
    public final EditText editName;

    @NonNull
    public final NVImageView icon;

    @NonNull
    public final FrameLayout iconLayout;

    @NonNull
    private final StickerPostItem rootView;

    @NonNull
    public final ImageView thumbnail;

    @NonNull
    public static PostStickerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public StickerPostItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostStickerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_sticker_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostStickerItemBinding(@NonNull StickerPostItem stickerPostItem, @NonNull TextView textView, @NonNull FontAwesomeView fontAwesomeView, @NonNull EditText editText, @NonNull NVImageView nVImageView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView) {
        this.rootView = stickerPostItem;
        this.countdown = textView;
        this.dragHandle = fontAwesomeView;
        this.editName = editText;
        this.icon = nVImageView;
        this.iconLayout = frameLayout;
        this.thumbnail = imageView;
    }

    @NonNull
    public static PostStickerItemBinding bind(@NonNull View view) {
        int i10 = R.id.countdown;
        TextView textView = (TextView) ViewBindings.a(view, R.id.countdown);
        if (textView != null) {
            i10 = R.id.drag_handle;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.drag_handle);
            if (fontAwesomeView != null) {
                i10 = R.id.edit_name;
                EditText editText = (EditText) ViewBindings.a(view, R.id.edit_name);
                if (editText != null) {
                    i10 = R.id.icon;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.icon);
                    if (nVImageView != null) {
                        i10 = R.id.icon_layout;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.icon_layout);
                        if (frameLayout != null) {
                            i10 = R.id.thumbnail;
                            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.thumbnail);
                            if (imageView != null) {
                                return new PostStickerItemBinding((StickerPostItem) view, textView, fontAwesomeView, editText, nVImageView, frameLayout, imageView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
