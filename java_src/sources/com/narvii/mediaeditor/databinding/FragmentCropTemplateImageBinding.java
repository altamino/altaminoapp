package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.crop.CropView;
import com.narvii.mediaeditor.R;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentCropTemplateImageBinding implements ViewBinding {

    @NonNull
    public final CropView cropView;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FragmentCropTemplateImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentCropTemplateImageBinding bind(@NonNull View view) {
        int i10 = R.id.crop_view;
        CropView cropView = (CropView) ViewBindings.a(view, i10);
        if (cropView != null) {
            return new FragmentCropTemplateImageBinding((LinearLayout) view, cropView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentCropTemplateImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_crop_template_image, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentCropTemplateImageBinding(@NonNull LinearLayout linearLayout, @NonNull CropView cropView) {
        this.rootView = linearLayout;
        this.cropView = cropView;
    }
}
