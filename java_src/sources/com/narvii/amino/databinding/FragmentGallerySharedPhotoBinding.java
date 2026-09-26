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
import com.narvii.widget.NVViewPager;

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentGallerySharedPhotoBinding implements ViewBinding {

    @NonNull
    public final NVViewPager pager;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FragmentGallerySharedPhotoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentGallerySharedPhotoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_gallery_shared_photo, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentGallerySharedPhotoBinding(@NonNull LinearLayout linearLayout, @NonNull NVViewPager nVViewPager) {
        this.rootView = linearLayout;
        this.pager = nVViewPager;
    }

    @NonNull
    public static FragmentGallerySharedPhotoBinding bind(@NonNull View view) {
        NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.pager);
        if (nVViewPager != null) {
            return new FragmentGallerySharedPhotoBinding((LinearLayout) view, nVViewPager);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.pager)));
    }
}
