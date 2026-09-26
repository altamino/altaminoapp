package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.util.layouts.NVFlowLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class TopicSearchItemBinding implements ViewBinding {

    @NonNull
    private final NVFlowLayout rootView;

    @NonNull
    public final NVFlowLayout topicFlow;

    @NonNull
    public final InterestPickerSubInterestTopicItemBinding topicView;

    @NonNull
    public static TopicSearchItemBinding bind(@NonNull View view) {
        NVFlowLayout nVFlowLayout = (NVFlowLayout) view;
        View viewA = ViewBindings.a(view, R.id.topic_view);
        if (viewA != null) {
            return new TopicSearchItemBinding(nVFlowLayout, nVFlowLayout, InterestPickerSubInterestTopicItemBinding.bind(viewA));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.topic_view)));
    }

    @NonNull
    public static TopicSearchItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVFlowLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TopicSearchItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.topic_search_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private TopicSearchItemBinding(@NonNull NVFlowLayout nVFlowLayout, @NonNull NVFlowLayout nVFlowLayout2, @NonNull InterestPickerSubInterestTopicItemBinding interestPickerSubInterestTopicItemBinding) {
        this.rootView = nVFlowLayout;
        this.topicFlow = nVFlowLayout2;
        this.topicView = interestPickerSubInterestTopicItemBinding;
    }
}
