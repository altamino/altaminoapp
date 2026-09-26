package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SharedPhotoFlagLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout flagContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static SharedPhotoFlagLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SharedPhotoFlagLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.shared_photo_flag_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SharedPhotoFlagLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.flagContainer = frameLayout;
    }

    @NonNull
    public static SharedPhotoFlagLayoutBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.flag_container);
        if (frameLayout != null) {
            return new SharedPhotoFlagLayoutBinding((LinearLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.flag_container)));
    }
}
