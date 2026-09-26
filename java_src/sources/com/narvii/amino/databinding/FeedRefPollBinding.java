package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedListItem;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class FeedRefPollBinding implements ViewBinding {

    @NonNull
    public final TextView content;

    @NonNull
    public final TintButton icon;

    @NonNull
    public final PollOptionListBinding pollOptionList;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static FeedRefPollBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedRefPollBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_ref_poll, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedRefPollBinding(@NonNull FeedListItem feedListItem, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull PollOptionListBinding pollOptionListBinding, @NonNull TextView textView2) {
        this.rootView = feedListItem;
        this.content = textView;
        this.icon = tintButton;
        this.pollOptionList = pollOptionListBinding;
        this.title = textView2;
    }

    @NonNull
    public static FeedRefPollBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.content);
        if (textView != null) {
            i10 = R.id.icon;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.icon);
            if (tintButton != null) {
                i10 = R.id.poll_option_list;
                View viewA = ViewBindings.a(view, R.id.poll_option_list);
                if (viewA != null) {
                    PollOptionListBinding pollOptionListBindingBind = PollOptionListBinding.bind(viewA);
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView2 != null) {
                        return new FeedRefPollBinding((FeedListItem) view, textView, tintButton, pollOptionListBindingBind, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
