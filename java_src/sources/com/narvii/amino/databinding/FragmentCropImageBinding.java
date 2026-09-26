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
import com.narvii.crop.CropView;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentCropImageBinding implements ViewBinding {

    @NonNull
    public final TextView cropHintTv;

    @NonNull
    public final CropView cropView;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentCropImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentCropImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_crop_image, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentCropImageBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull CropView cropView) {
        this.rootView = frameLayout;
        this.cropHintTv = textView;
        this.cropView = cropView;
    }

    @NonNull
    public static FragmentCropImageBinding bind(@NonNull View view) {
        int i10 = R.id.crop_hint_tv;
        TextView textView = (TextView) ViewBindings.a(view, R.id.crop_hint_tv);
        if (textView != null) {
            i10 = R.id.crop_view;
            CropView cropView = (CropView) ViewBindings.a(view, R.id.crop_view);
            if (cropView != null) {
                return new FragmentCropImageBinding((FrameLayout) view, textView, cropView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
