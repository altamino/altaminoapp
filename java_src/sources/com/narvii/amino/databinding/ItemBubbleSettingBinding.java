package com.narvii.amino.databinding;

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
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemBubbleSettingBinding implements ViewBinding {

    @NonNull
    public final FrameLayout bubbleEditContainer;

    @NonNull
    public final FlexLayout bubbleItemContainer;

    @NonNull
    public final NVImageView bubblePreview;

    @NonNull
    public final FlexLayout checkedIndicator;

    @NonNull
    public final TextView customContainer;

    @NonNull
    public final FlexLayout itemRoot;

    @NonNull
    public final ImageView membershipLock;

    @NonNull
    public final View membershipLockBg;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemBubbleSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemBubbleSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_bubble_setting, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemBubbleSettingBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FlexLayout flexLayout, @NonNull NVImageView nVImageView, @NonNull FlexLayout flexLayout2, @NonNull TextView textView, @NonNull FlexLayout flexLayout3, @NonNull ImageView imageView, @NonNull View view) {
        this.rootView = frameLayout;
        this.bubbleEditContainer = frameLayout2;
        this.bubbleItemContainer = flexLayout;
        this.bubblePreview = nVImageView;
        this.checkedIndicator = flexLayout2;
        this.customContainer = textView;
        this.itemRoot = flexLayout3;
        this.membershipLock = imageView;
        this.membershipLockBg = view;
    }

    @NonNull
    public static ItemBubbleSettingBinding bind(@NonNull View view) {
        int i10 = R.id.bubble_edit_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.bubble_edit_container);
        if (frameLayout != null) {
            i10 = R.id.bubble_item_container;
            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.bubble_item_container);
            if (flexLayout != null) {
                i10 = R.id.bubble_preview;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.bubble_preview);
                if (nVImageView != null) {
                    i10 = R.id.checked_indicator;
                    FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, R.id.checked_indicator);
                    if (flexLayout2 != null) {
                        i10 = R.id.custom_container;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.custom_container);
                        if (textView != null) {
                            i10 = R.id.item_root;
                            FlexLayout flexLayout3 = (FlexLayout) ViewBindings.a(view, R.id.item_root);
                            if (flexLayout3 != null) {
                                i10 = R.id.membership_lock;
                                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.membership_lock);
                                if (imageView != null) {
                                    i10 = R.id.membership_lock_bg;
                                    View viewA = ViewBindings.a(view, R.id.membership_lock_bg);
                                    if (viewA != null) {
                                        return new ItemBubbleSettingBinding((FrameLayout) view, frameLayout, flexLayout, nVImageView, flexLayout2, textView, flexLayout3, imageView, viewA);
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
}
