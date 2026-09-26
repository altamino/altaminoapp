package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemBubbleTemplateBinding implements ViewBinding {

    @NonNull
    public final View checkedIndicator;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final NVImageView tempPreview;

    @NonNull
    public static ItemBubbleTemplateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemBubbleTemplateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_bubble_template, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemBubbleTemplateBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull NVImageView nVImageView) {
        this.rootView = frameLayout;
        this.checkedIndicator = view;
        this.tempPreview = nVImageView;
    }

    @NonNull
    public static ItemBubbleTemplateBinding bind(@NonNull View view) {
        int i10 = R.id.checked_indicator;
        View viewA = ViewBindings.a(view, R.id.checked_indicator);
        if (viewA != null) {
            i10 = R.id.temp_preview;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.temp_preview);
            if (nVImageView != null) {
                return new ItemBubbleTemplateBinding((FrameLayout) view, viewA, nVImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
