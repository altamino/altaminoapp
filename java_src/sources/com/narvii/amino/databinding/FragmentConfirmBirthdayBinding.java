package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentConfirmBirthdayBinding implements ViewBinding {

    @NonNull
    public final TextView ageConfirmTV;

    @NonNull
    public final TextView ageDescTV;

    @NonNull
    public final TextView ageTV;

    @NonNull
    public final TextView birthday;

    @NonNull
    public final Button changeDate;

    @NonNull
    public final Button confirm;

    @NonNull
    public final TextView description;

    @NonNull
    public final View divider;

    @NonNull
    public final ImageView icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView skip;

    @NonNull
    public final TextView title;

    @NonNull
    public final AccountSignupToolbarBinding toolbar;

    @NonNull
    public static FragmentConfirmBirthdayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentConfirmBirthdayBinding bind(@NonNull View view) {
        int i10 = R.id.ageConfirmTV;
        TextView textView = (TextView) ViewBindings.a(view, R.id.ageConfirmTV);
        if (textView != null) {
            i10 = R.id.ageDescTV;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.ageDescTV);
            if (textView2 != null) {
                i10 = R.id.ageTV;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.ageTV);
                if (textView3 != null) {
                    i10 = R.id.birthday;
                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.birthday);
                    if (textView4 != null) {
                        i10 = R.id.change_date;
                        Button button = (Button) ViewBindings.a(view, R.id.change_date);
                        if (button != null) {
                            i10 = R.id.confirm;
                            Button button2 = (Button) ViewBindings.a(view, R.id.confirm);
                            if (button2 != null) {
                                i10 = R.id.description;
                                TextView textView5 = (TextView) ViewBindings.a(view, R.id.description);
                                if (textView5 != null) {
                                    i10 = R.id.divider;
                                    View viewA = ViewBindings.a(view, R.id.divider);
                                    if (viewA != null) {
                                        i10 = R.id.icon;
                                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
                                        if (imageView != null) {
                                            i10 = R.id.skip;
                                            TextView textView6 = (TextView) ViewBindings.a(view, R.id.skip);
                                            if (textView6 != null) {
                                                i10 = R.id.title;
                                                TextView textView7 = (TextView) ViewBindings.a(view, R.id.title);
                                                if (textView7 != null) {
                                                    i10 = R.id.toolbar;
                                                    View viewA2 = ViewBindings.a(view, R.id.toolbar);
                                                    if (viewA2 != null) {
                                                        return new FragmentConfirmBirthdayBinding((LinearLayout) view, textView, textView2, textView3, textView4, button, button2, textView5, viewA, imageView, textView6, textView7, AccountSignupToolbarBinding.bind(viewA2));
                                                    }
                                                }
                                            }
                                        }
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

    @NonNull
    public static FragmentConfirmBirthdayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_confirm_birthday, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentConfirmBirthdayBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView5, @NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull AccountSignupToolbarBinding accountSignupToolbarBinding) {
        this.rootView = linearLayout;
        this.ageConfirmTV = textView;
        this.ageDescTV = textView2;
        this.ageTV = textView3;
        this.birthday = textView4;
        this.changeDate = button;
        this.confirm = button2;
        this.description = textView5;
        this.divider = view;
        this.icon = imageView;
        this.skip = textView6;
        this.title = textView7;
        this.toolbar = accountSignupToolbarBinding;
    }
}
