package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.topic.widgets.TopicCardCoverView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemCellTopicCardBinding implements ViewBinding {

    @NonNull
    public final ImageView bookmarkIndicator;

    @NonNull
    public final TextView detailInfo;

    @NonNull
    public final TopicCardCoverView imgContainer;

    @NonNull
    public final TintButton indicator2;

    @NonNull
    public final TintButton rightChevron;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView topicTitle;

    @NonNull
    public static ItemCellTopicCardBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCellTopicCardBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cell_topic_card, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCellTopicCardBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TopicCardCoverView topicCardCoverView, @NonNull TintButton tintButton, @NonNull TintButton tintButton2, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.bookmarkIndicator = imageView;
        this.detailInfo = textView;
        this.imgContainer = topicCardCoverView;
        this.indicator2 = tintButton;
        this.rightChevron = tintButton2;
        this.topicTitle = textView2;
    }

    @NonNull
    public static ItemCellTopicCardBinding bind(@NonNull View view) {
        int i10 = R.id.bookmark_indicator;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.bookmark_indicator);
        if (imageView != null) {
            i10 = R.id.detail_info;
            TextView textView = (TextView) ViewBindings.a(view, R.id.detail_info);
            if (textView != null) {
                i10 = R.id.img_container;
                TopicCardCoverView topicCardCoverView = (TopicCardCoverView) ViewBindings.a(view, R.id.img_container);
                if (topicCardCoverView != null) {
                    i10 = R.id.indicator_2;
                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.indicator_2);
                    if (tintButton != null) {
                        i10 = R.id.right_chevron;
                        TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.right_chevron);
                        if (tintButton2 != null) {
                            i10 = R.id.topic_title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.topic_title);
                            if (textView2 != null) {
                                return new ItemCellTopicCardBinding((LinearLayout) view, imageView, textView, topicCardCoverView, tintButton, tintButton2, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
