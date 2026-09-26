package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemAvatarFrameSettingBinding implements ViewBinding {

    @NonNull
    public final NVImageView avatarFramePreview;

    @NonNull
    public final FlexLayout checkedIndicator;

    @NonNull
    public final FlexLayout itemContainer;

    @NonNull
    public final FlexLayout itemRoot;

    @NonNull
    public final ImageView membershipLock;

    @NonNull
    public final View membershipLockBg;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemAvatarFrameSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemAvatarFrameSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_avatar_frame_setting, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemAvatarFrameSettingBinding(@NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView, @NonNull FlexLayout flexLayout, @NonNull FlexLayout flexLayout2, @NonNull FlexLayout flexLayout3, @NonNull ImageView imageView, @NonNull View view) {
        this.rootView = frameLayout;
        this.avatarFramePreview = nVImageView;
        this.checkedIndicator = flexLayout;
        this.itemContainer = flexLayout2;
        this.itemRoot = flexLayout3;
        this.membershipLock = imageView;
        this.membershipLockBg = view;
    }

    @NonNull
    public static ItemAvatarFrameSettingBinding bind(@NonNull View view) {
        int i10 = R.id.avatar_frame_preview;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.avatar_frame_preview);
        if (nVImageView != null) {
            i10 = R.id.checked_indicator;
            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.checked_indicator);
            if (flexLayout != null) {
                i10 = R.id.item_container;
                FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, R.id.item_container);
                if (flexLayout2 != null) {
                    i10 = R.id.item_root;
                    FlexLayout flexLayout3 = (FlexLayout) ViewBindings.a(view, R.id.item_root);
                    if (flexLayout3 != null) {
                        i10 = R.id.membership_lock;
                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.membership_lock);
                        if (imageView != null) {
                            i10 = R.id.membership_lock_bg;
                            View viewA = ViewBindings.a(view, R.id.membership_lock_bg);
                            if (viewA != null) {
                                return new ItemAvatarFrameSettingBinding((FrameLayout) view, nVImageView, flexLayout, flexLayout2, flexLayout3, imageView, viewA);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
