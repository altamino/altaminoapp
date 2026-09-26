package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.master.search.widgets.TopicCardView;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemCellTopicSortBinding implements ViewBinding {

    @NonNull
    public final ImageView delete;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TopicCardView topicLayout;

    @NonNull
    public static ItemCellTopicSortBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCellTopicSortBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cell_topic_sort, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCellTopicSortBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TopicCardView topicCardView) {
        this.rootView = linearLayout;
        this.delete = imageView;
        this.topicLayout = topicCardView;
    }

    @NonNull
    public static ItemCellTopicSortBinding bind(@NonNull View view) {
        int i10 = R.id.delete;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.delete);
        if (imageView != null) {
            i10 = R.id.topic_layout;
            TopicCardView topicCardView = (TopicCardView) ViewBindings.a(view, R.id.topic_layout);
            if (topicCardView != null) {
                return new ItemCellTopicSortBinding((LinearLayout) view, imageView, topicCardView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
