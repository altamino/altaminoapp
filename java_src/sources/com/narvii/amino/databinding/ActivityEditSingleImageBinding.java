package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ActivityEditSingleImageBinding implements ViewBinding {

    @NonNull
    public final NVImageView image;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ActivityEditSingleImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ActivityEditSingleImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_edit_single_image, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ActivityEditSingleImageBinding(@NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView) {
        this.rootView = linearLayout;
        this.image = nVImageView;
    }

    @NonNull
    public static ActivityEditSingleImageBinding bind(@NonNull View view) {
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.image);
        if (nVImageView != null) {
            return new ActivityEditSingleImageBinding((LinearLayout) view, nVImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.image)));
    }
}
