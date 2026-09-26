package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class SlotEditLayoutBinding implements ViewBinding {

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final FrameLayout slotDelete;

    @NonNull
    public final NVImageView slotImage;

    @NonNull
    public static SlotEditLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SlotEditLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.slot_edit_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SlotEditLayoutBinding(@NonNull FlexLayout flexLayout, @NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView) {
        this.rootView = flexLayout;
        this.slotDelete = frameLayout;
        this.slotImage = nVImageView;
    }

    @NonNull
    public static SlotEditLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.slot_delete;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.slot_delete);
        if (frameLayout != null) {
            i10 = R.id.slot_image;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.slot_image);
            if (nVImageView != null) {
                return new SlotEditLayoutBinding((FlexLayout) view, frameLayout, nVImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
