package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class BubbleEditLayoutBinding implements ViewBinding {

    @NonNull
    public final NVImageView bubbleBg;

    @NonNull
    public final RelativeLayout root;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static BubbleEditLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BubbleEditLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.bubble_edit_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private BubbleEditLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull NVImageView nVImageView, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = relativeLayout;
        this.bubbleBg = nVImageView;
        this.root = relativeLayout2;
    }

    @NonNull
    public static BubbleEditLayoutBinding bind(@NonNull View view) {
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.bubble_bg);
        if (nVImageView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            return new BubbleEditLayoutBinding(relativeLayout, nVImageView, relativeLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.bubble_bg)));
    }
}
