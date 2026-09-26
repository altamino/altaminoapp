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
import com.narvii.poll.PollOptionListLayout;

/* JADX INFO: loaded from: classes11.dex */
public final class SnippetPollOptionListBinding implements ViewBinding {

    @NonNull
    public final PollOptionItemSnippetBinding pollOptionItem1;

    @NonNull
    public final PollOptionItemSnippetBinding pollOptionItem2;

    @NonNull
    public final PollOptionItemSnippetBinding pollOptionItem3;

    @NonNull
    public final PollOptionItemSnippetBinding pollOptionItem4;

    @NonNull
    public final PollOptionItemSnippetBinding pollOptionItem5;

    @NonNull
    public final TextView pollText;

    @NonNull
    private final PollOptionListLayout rootView;

    @NonNull
    public static SnippetPollOptionListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public PollOptionListLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SnippetPollOptionListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.snippet_poll_option_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SnippetPollOptionListBinding(@NonNull PollOptionListLayout pollOptionListLayout, @NonNull PollOptionItemSnippetBinding pollOptionItemSnippetBinding, @NonNull PollOptionItemSnippetBinding pollOptionItemSnippetBinding2, @NonNull PollOptionItemSnippetBinding pollOptionItemSnippetBinding3, @NonNull PollOptionItemSnippetBinding pollOptionItemSnippetBinding4, @NonNull PollOptionItemSnippetBinding pollOptionItemSnippetBinding5, @NonNull TextView textView) {
        this.rootView = pollOptionListLayout;
        this.pollOptionItem1 = pollOptionItemSnippetBinding;
        this.pollOptionItem2 = pollOptionItemSnippetBinding2;
        this.pollOptionItem3 = pollOptionItemSnippetBinding3;
        this.pollOptionItem4 = pollOptionItemSnippetBinding4;
        this.pollOptionItem5 = pollOptionItemSnippetBinding5;
        this.pollText = textView;
    }

    @NonNull
    public static SnippetPollOptionListBinding bind(@NonNull View view) {
        int i10 = R.id.poll_option_item_1;
        View viewA = ViewBindings.a(view, R.id.poll_option_item_1);
        if (viewA != null) {
            PollOptionItemSnippetBinding pollOptionItemSnippetBindingBind = PollOptionItemSnippetBinding.bind(viewA);
            i10 = R.id.poll_option_item_2;
            View viewA2 = ViewBindings.a(view, R.id.poll_option_item_2);
            if (viewA2 != null) {
                PollOptionItemSnippetBinding pollOptionItemSnippetBindingBind2 = PollOptionItemSnippetBinding.bind(viewA2);
                i10 = R.id.poll_option_item_3;
                View viewA3 = ViewBindings.a(view, R.id.poll_option_item_3);
                if (viewA3 != null) {
                    PollOptionItemSnippetBinding pollOptionItemSnippetBindingBind3 = PollOptionItemSnippetBinding.bind(viewA3);
                    i10 = R.id.poll_option_item_4;
                    View viewA4 = ViewBindings.a(view, R.id.poll_option_item_4);
                    if (viewA4 != null) {
                        PollOptionItemSnippetBinding pollOptionItemSnippetBindingBind4 = PollOptionItemSnippetBinding.bind(viewA4);
                        i10 = R.id.poll_option_item_5;
                        View viewA5 = ViewBindings.a(view, R.id.poll_option_item_5);
                        if (viewA5 != null) {
                            PollOptionItemSnippetBinding pollOptionItemSnippetBindingBind5 = PollOptionItemSnippetBinding.bind(viewA5);
                            i10 = R.id.poll_text;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.poll_text);
                            if (textView != null) {
                                return new SnippetPollOptionListBinding((PollOptionListLayout) view, pollOptionItemSnippetBindingBind, pollOptionItemSnippetBindingBind2, pollOptionItemSnippetBindingBind3, pollOptionItemSnippetBindingBind4, pollOptionItemSnippetBindingBind5, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
