package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVViewPager;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogOnBoardingViewBinding implements ViewBinding {

    @NonNull
    public final TextView action;

    @NonNull
    public final View actionEmoji;

    @NonNull
    public final LinearLayout actionLayout;

    @NonNull
    public final View chevronRight;

    @NonNull
    public final LinearLayout content;

    @NonNull
    public final NVViewPager pager;

    @NonNull
    public final FlexLayout root;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView skip;

    @NonNull
    public static DialogOnBoardingViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogOnBoardingViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_on_boarding_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogOnBoardingViewBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull View view2, @NonNull LinearLayout linearLayout2, @NonNull NVViewPager nVViewPager, @NonNull FlexLayout flexLayout2, @NonNull TextView textView2) {
        this.rootView = flexLayout;
        this.action = textView;
        this.actionEmoji = view;
        this.actionLayout = linearLayout;
        this.chevronRight = view2;
        this.content = linearLayout2;
        this.pager = nVViewPager;
        this.root = flexLayout2;
        this.skip = textView2;
    }

    @NonNull
    public static DialogOnBoardingViewBinding bind(@NonNull View view) {
        int i10 = R.id.action;
        TextView textView = (TextView) ViewBindings.a(view, R.id.action);
        if (textView != null) {
            i10 = R.id.action_emoji;
            View viewA = ViewBindings.a(view, R.id.action_emoji);
            if (viewA != null) {
                i10 = R.id.action_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.action_layout);
                if (linearLayout != null) {
                    i10 = R.id.chevron_right;
                    View viewA2 = ViewBindings.a(view, R.id.chevron_right);
                    if (viewA2 != null) {
                        i10 = R.id.content;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.content);
                        if (linearLayout2 != null) {
                            i10 = R.id.pager;
                            NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.pager);
                            if (nVViewPager != null) {
                                FlexLayout flexLayout = (FlexLayout) view;
                                i10 = R.id.skip;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.skip);
                                if (textView2 != null) {
                                    return new DialogOnBoardingViewBinding(flexLayout, textView, viewA, linearLayout, viewA2, linearLayout2, nVViewPager, flexLayout, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
