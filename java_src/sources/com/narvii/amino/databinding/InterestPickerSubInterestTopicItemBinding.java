package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.suggest.interest.InterestTopicView;

/* JADX INFO: loaded from: classes11.dex */
public final class InterestPickerSubInterestTopicItemBinding implements ViewBinding {

    @NonNull
    public final InterestTopicView interestItemView;

    @NonNull
    public final ImageView more;

    @NonNull
    private final InterestTopicView rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static InterestPickerSubInterestTopicItemBinding bind(@NonNull View view) {
        InterestTopicView interestTopicView = (InterestTopicView) view;
        int i10 = R.id.more;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.more);
        if (imageView != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.text);
            if (textView != null) {
                return new InterestPickerSubInterestTopicItemBinding(interestTopicView, interestTopicView, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static InterestPickerSubInterestTopicItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public InterestTopicView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InterestPickerSubInterestTopicItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.interest_picker_sub_interest_topic_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InterestPickerSubInterestTopicItemBinding(@NonNull InterestTopicView interestTopicView, @NonNull InterestTopicView interestTopicView2, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = interestTopicView;
        this.interestItemView = interestTopicView2;
        this.more = imageView;
        this.text = textView;
    }
}
