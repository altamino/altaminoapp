package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.monetization.sticker.picker.StickerPickerItem;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes.dex */
public final class StickerPickItemBinding implements ViewBinding {

    @NonNull
    public final View disabled;

    @NonNull
    public final ImageView error;

    @NonNull
    public final ImageView membershipLock;

    @NonNull
    private final StickerPickerItem rootView;

    @NonNull
    public final View selected;

    @NonNull
    public final StickerPickerItem stickerPickerItem;

    @NonNull
    public final FlexLayout stickerPickerMain;

    @NonNull
    public final View stub1;

    @NonNull
    public final NVImageView thumbnail;

    @NonNull
    public static StickerPickItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public StickerPickerItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerPickItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_pick_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerPickItemBinding(@NonNull StickerPickerItem stickerPickerItem, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view2, @NonNull StickerPickerItem stickerPickerItem2, @NonNull FlexLayout flexLayout, @NonNull View view3, @NonNull NVImageView nVImageView) {
        this.rootView = stickerPickerItem;
        this.disabled = view;
        this.error = imageView;
        this.membershipLock = imageView2;
        this.selected = view2;
        this.stickerPickerItem = stickerPickerItem2;
        this.stickerPickerMain = flexLayout;
        this.stub1 = view3;
        this.thumbnail = nVImageView;
    }

    @NonNull
    public static StickerPickItemBinding bind(@NonNull View view) {
        int i10 = R.id.disabled;
        View viewA = ViewBindings.a(view, R.id.disabled);
        if (viewA != null) {
            i10 = R.id.error;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.error);
            if (imageView != null) {
                i10 = R.id.membership_lock;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.membership_lock);
                if (imageView2 != null) {
                    i10 = R.id.selected;
                    View viewA2 = ViewBindings.a(view, R.id.selected);
                    if (viewA2 != null) {
                        StickerPickerItem stickerPickerItem = (StickerPickerItem) view;
                        i10 = R.id.sticker_picker_main;
                        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.sticker_picker_main);
                        if (flexLayout != null) {
                            i10 = R.id.stub1;
                            View viewA3 = ViewBindings.a(view, R.id.stub1);
                            if (viewA3 != null) {
                                i10 = R.id.thumbnail;
                                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.thumbnail);
                                if (nVImageView != null) {
                                    return new StickerPickItemBinding(stickerPickerItem, viewA, imageView, imageView2, viewA2, stickerPickerItem, flexLayout, viewA3, nVImageView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
