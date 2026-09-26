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

/* JADX INFO: loaded from: classes9.dex */
public final class ThreadDetailTopicViewBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final NVFlowLayout topicFlow;

    @NonNull
    public static ThreadDetailTopicViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ThreadDetailTopicViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.thread_detail_topic_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ThreadDetailTopicViewBinding(@NonNull FrameLayout frameLayout, @NonNull NVFlowLayout nVFlowLayout) {
        this.rootView = frameLayout;
        this.topicFlow = nVFlowLayout;
    }

    @NonNull
    public static ThreadDetailTopicViewBinding bind(@NonNull View view) {
        NVFlowLayout nVFlowLayout = (NVFlowLayout) ViewBindings.a(view, R.id.topic_flow);
        if (nVFlowLayout != null) {
            return new ThreadDetailTopicViewBinding((FrameLayout) view, nVFlowLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.topic_flow)));
    }
}
