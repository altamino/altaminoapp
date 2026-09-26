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

/* JADX INFO: loaded from: classes8.dex */
public final class ItemHeadlinePollOptionListBinding implements ViewBinding {

    @NonNull
    public final PollOptionItemHeadlineBinding pollOptionItem1;

    @NonNull
    public final PollOptionItemHeadlineBinding pollOptionItem2;

    @NonNull
    public final PollOptionItemHeadlineBinding pollOptionItem3;

    @NonNull
    public final PollOptionItemHeadlineBinding pollOptionItem4;

    @NonNull
    public final PollOptionItemHeadlineBinding pollOptionItem5;

    @NonNull
    public final TextView pollText;

    @NonNull
    private final PollOptionListLayout rootView;

    @NonNull
    public static ItemHeadlinePollOptionListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public PollOptionListLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemHeadlinePollOptionListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_headline_poll_option_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemHeadlinePollOptionListBinding(@NonNull PollOptionListLayout pollOptionListLayout, @NonNull PollOptionItemHeadlineBinding pollOptionItemHeadlineBinding, @NonNull PollOptionItemHeadlineBinding pollOptionItemHeadlineBinding2, @NonNull PollOptionItemHeadlineBinding pollOptionItemHeadlineBinding3, @NonNull PollOptionItemHeadlineBinding pollOptionItemHeadlineBinding4, @NonNull PollOptionItemHeadlineBinding pollOptionItemHeadlineBinding5, @NonNull TextView textView) {
        this.rootView = pollOptionListLayout;
        this.pollOptionItem1 = pollOptionItemHeadlineBinding;
        this.pollOptionItem2 = pollOptionItemHeadlineBinding2;
        this.pollOptionItem3 = pollOptionItemHeadlineBinding3;
        this.pollOptionItem4 = pollOptionItemHeadlineBinding4;
        this.pollOptionItem5 = pollOptionItemHeadlineBinding5;
        this.pollText = textView;
    }

    @NonNull
    public static ItemHeadlinePollOptionListBinding bind(@NonNull View view) {
        int i10 = R.id.poll_option_item_1;
        View viewA = ViewBindings.a(view, R.id.poll_option_item_1);
        if (viewA != null) {
            PollOptionItemHeadlineBinding pollOptionItemHeadlineBindingBind = PollOptionItemHeadlineBinding.bind(viewA);
            i10 = R.id.poll_option_item_2;
            View viewA2 = ViewBindings.a(view, R.id.poll_option_item_2);
            if (viewA2 != null) {
                PollOptionItemHeadlineBinding pollOptionItemHeadlineBindingBind2 = PollOptionItemHeadlineBinding.bind(viewA2);
                i10 = R.id.poll_option_item_3;
                View viewA3 = ViewBindings.a(view, R.id.poll_option_item_3);
                if (viewA3 != null) {
                    PollOptionItemHeadlineBinding pollOptionItemHeadlineBindingBind3 = PollOptionItemHeadlineBinding.bind(viewA3);
                    i10 = R.id.poll_option_item_4;
                    View viewA4 = ViewBindings.a(view, R.id.poll_option_item_4);
                    if (viewA4 != null) {
                        PollOptionItemHeadlineBinding pollOptionItemHeadlineBindingBind4 = PollOptionItemHeadlineBinding.bind(viewA4);
                        i10 = R.id.poll_option_item_5;
                        View viewA5 = ViewBindings.a(view, R.id.poll_option_item_5);
                        if (viewA5 != null) {
                            PollOptionItemHeadlineBinding pollOptionItemHeadlineBindingBind5 = PollOptionItemHeadlineBinding.bind(viewA5);
                            i10 = R.id.poll_text;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.poll_text);
                            if (textView != null) {
                                return new ItemHeadlinePollOptionListBinding((PollOptionListLayout) view, pollOptionItemHeadlineBindingBind, pollOptionItemHeadlineBindingBind2, pollOptionItemHeadlineBindingBind3, pollOptionItemHeadlineBindingBind4, pollOptionItemHeadlineBindingBind5, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
