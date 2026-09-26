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
public final class PollOptionListBinding implements ViewBinding {

    @NonNull
    public final PollOptionItemBinding pollOptionItem1;

    @NonNull
    public final PollOptionItemBinding pollOptionItem2;

    @NonNull
    public final PollOptionItemBinding pollOptionItem3;

    @NonNull
    public final PollOptionItemBinding pollOptionItem4;

    @NonNull
    public final PollOptionItemBinding pollOptionItem5;

    @NonNull
    public final TextView pollText;

    @NonNull
    private final PollOptionListLayout rootView;

    @NonNull
    public static PollOptionListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public PollOptionListLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PollOptionListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.poll_option_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PollOptionListBinding(@NonNull PollOptionListLayout pollOptionListLayout, @NonNull PollOptionItemBinding pollOptionItemBinding, @NonNull PollOptionItemBinding pollOptionItemBinding2, @NonNull PollOptionItemBinding pollOptionItemBinding3, @NonNull PollOptionItemBinding pollOptionItemBinding4, @NonNull PollOptionItemBinding pollOptionItemBinding5, @NonNull TextView textView) {
        this.rootView = pollOptionListLayout;
        this.pollOptionItem1 = pollOptionItemBinding;
        this.pollOptionItem2 = pollOptionItemBinding2;
        this.pollOptionItem3 = pollOptionItemBinding3;
        this.pollOptionItem4 = pollOptionItemBinding4;
        this.pollOptionItem5 = pollOptionItemBinding5;
        this.pollText = textView;
    }

    @NonNull
    public static PollOptionListBinding bind(@NonNull View view) {
        int i10 = R.id.poll_option_item_1;
        View viewA = ViewBindings.a(view, R.id.poll_option_item_1);
        if (viewA != null) {
            PollOptionItemBinding pollOptionItemBindingBind = PollOptionItemBinding.bind(viewA);
            i10 = R.id.poll_option_item_2;
            View viewA2 = ViewBindings.a(view, R.id.poll_option_item_2);
            if (viewA2 != null) {
                PollOptionItemBinding pollOptionItemBindingBind2 = PollOptionItemBinding.bind(viewA2);
                i10 = R.id.poll_option_item_3;
                View viewA3 = ViewBindings.a(view, R.id.poll_option_item_3);
                if (viewA3 != null) {
                    PollOptionItemBinding pollOptionItemBindingBind3 = PollOptionItemBinding.bind(viewA3);
                    i10 = R.id.poll_option_item_4;
                    View viewA4 = ViewBindings.a(view, R.id.poll_option_item_4);
                    if (viewA4 != null) {
                        PollOptionItemBinding pollOptionItemBindingBind4 = PollOptionItemBinding.bind(viewA4);
                        i10 = R.id.poll_option_item_5;
                        View viewA5 = ViewBindings.a(view, R.id.poll_option_item_5);
                        if (viewA5 != null) {
                            PollOptionItemBinding pollOptionItemBindingBind5 = PollOptionItemBinding.bind(viewA5);
                            i10 = R.id.poll_text;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.poll_text);
                            if (textView != null) {
                                return new PollOptionListBinding((PollOptionListLayout) view, pollOptionItemBindingBind, pollOptionItemBindingBind2, pollOptionItemBindingBind3, pollOptionItemBindingBind4, pollOptionItemBindingBind5, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
