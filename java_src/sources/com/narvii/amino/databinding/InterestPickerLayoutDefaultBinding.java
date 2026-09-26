package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.lib.databinding.ListLayoutBinding;

/* JADX INFO: loaded from: classes7.dex */
public final class InterestPickerLayoutDefaultBinding implements ViewBinding {

    @NonNull
    public final CheckBox agree;

    @NonNull
    public final LinearLayout agreeLayout;

    @NonNull
    public final TextView agreeText;

    @NonNull
    public final ListLayoutBinding include;

    @NonNull
    public final Button nextButton;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public final TextView skipButton;

    @NonNull
    public final AccountSignupToolbarBinding toolbar;

    @NonNull
    public final ConstraintLayout toolbarLayout;

    @NonNull
    public static InterestPickerLayoutDefaultBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InterestPickerLayoutDefaultBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.interest_picker_layout_default, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InterestPickerLayoutDefaultBinding(@NonNull ConstraintLayout constraintLayout, @NonNull CheckBox checkBox, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ListLayoutBinding listLayoutBinding, @NonNull Button button, @NonNull TextView textView2, @NonNull AccountSignupToolbarBinding accountSignupToolbarBinding, @NonNull ConstraintLayout constraintLayout2) {
        this.rootView = constraintLayout;
        this.agree = checkBox;
        this.agreeLayout = linearLayout;
        this.agreeText = textView;
        this.include = listLayoutBinding;
        this.nextButton = button;
        this.skipButton = textView2;
        this.toolbar = accountSignupToolbarBinding;
        this.toolbarLayout = constraintLayout2;
    }

    @NonNull
    public static InterestPickerLayoutDefaultBinding bind(@NonNull View view) {
        int i10 = R.id.agree;
        CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.agree);
        if (checkBox != null) {
            i10 = R.id.agree_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.agree_layout);
            if (linearLayout != null) {
                i10 = R.id.agree_text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.agree_text);
                if (textView != null) {
                    i10 = R.id.include;
                    View viewA = ViewBindings.a(view, R.id.include);
                    if (viewA != null) {
                        ListLayoutBinding listLayoutBindingBind = ListLayoutBinding.bind(viewA);
                        i10 = R.id.next_button;
                        Button button = (Button) ViewBindings.a(view, R.id.next_button);
                        if (button != null) {
                            i10 = R.id.skip_button;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.skip_button);
                            if (textView2 != null) {
                                i10 = R.id.toolbar;
                                View viewA2 = ViewBindings.a(view, R.id.toolbar);
                                if (viewA2 != null) {
                                    AccountSignupToolbarBinding accountSignupToolbarBindingBind = AccountSignupToolbarBinding.bind(viewA2);
                                    i10 = R.id.toolbar_layout;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.a(view, R.id.toolbar_layout);
                                    if (constraintLayout != null) {
                                        return new InterestPickerLayoutDefaultBinding((ConstraintLayout) view, checkBox, linearLayout, textView, listLayoutBindingBind, button, textView2, accountSignupToolbarBindingBind, constraintLayout);
                                    }
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
