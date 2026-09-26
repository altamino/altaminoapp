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
import com.narvii.util.layouts.NVFlowLayout;

/* JADX INFO: loaded from: classes11.dex */
public final class CommunityDetailTopicListBinding implements ViewBinding {

    @NonNull
    public final NVFlowLayout flowLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static CommunityDetailTopicListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommunityDetailTopicListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.community_detail_topic_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CommunityDetailTopicListBinding(@NonNull FrameLayout frameLayout, @NonNull NVFlowLayout nVFlowLayout) {
        this.rootView = frameLayout;
        this.flowLayout = nVFlowLayout;
    }

    @NonNull
    public static CommunityDetailTopicListBinding bind(@NonNull View view) {
        NVFlowLayout nVFlowLayout = (NVFlowLayout) ViewBindings.a(view, R.id.flow_layout);
        if (nVFlowLayout != null) {
            return new CommunityDetailTopicListBinding((FrameLayout) view, nVFlowLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.flow_layout)));
    }
}
