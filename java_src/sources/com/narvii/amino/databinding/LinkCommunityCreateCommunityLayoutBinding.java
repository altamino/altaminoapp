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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes5.dex */
public final class LinkCommunityCreateCommunityLayoutBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TintButton tintAdd;

    @NonNull
    public static LinkCommunityCreateCommunityLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LinkCommunityCreateCommunityLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.link_community_create_community_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LinkCommunityCreateCommunityLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull TintButton tintButton) {
        this.rootView = frameLayout;
        this.tintAdd = tintButton;
    }

    @NonNull
    public static LinkCommunityCreateCommunityLayoutBinding bind(@NonNull View view) {
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.tint_add);
        if (tintButton != null) {
            return new LinkCommunityCreateCommunityLayoutBinding((FrameLayout) view, tintButton);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tint_add)));
    }
}
