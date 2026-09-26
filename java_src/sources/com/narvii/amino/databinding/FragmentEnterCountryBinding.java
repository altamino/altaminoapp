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

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentEnterCountryBinding implements ViewBinding {

    @NonNull
    public final TextView country;

    @NonNull
    public final TextView descriptionCountry;

    @NonNull
    public final View divider;

    @NonNull
    public final ImageView icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final Button save;

    @NonNull
    public final TextView skip;

    @NonNull
    public final TextView title;

    @NonNull
    public final AccountSignupToolbarBinding toolbar;

    @NonNull
    public final View viewCountry;

    @NonNull
    public static FragmentEnterCountryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentEnterCountryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_enter_country, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentEnterCountryBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view, @NonNull ImageView imageView, @NonNull Button button, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull AccountSignupToolbarBinding accountSignupToolbarBinding, @NonNull View view2) {
        this.rootView = linearLayout;
        this.country = textView;
        this.descriptionCountry = textView2;
        this.divider = view;
        this.icon = imageView;
        this.save = button;
        this.skip = textView3;
        this.title = textView4;
        this.toolbar = accountSignupToolbarBinding;
        this.viewCountry = view2;
    }

    @NonNull
    public static FragmentEnterCountryBinding bind(@NonNull View view) {
        int i10 = R.id.country;
        TextView textView = (TextView) ViewBindings.a(view, R.id.country);
        if (textView != null) {
            i10 = R.id.description_country;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.description_country);
            if (textView2 != null) {
                i10 = R.id.divider;
                View viewA = ViewBindings.a(view, R.id.divider);
                if (viewA != null) {
                    i10 = R.id.icon;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
                    if (imageView != null) {
                        i10 = R.id.save;
                        Button button = (Button) ViewBindings.a(view, R.id.save);
                        if (button != null) {
                            i10 = R.id.skip;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.skip);
                            if (textView3 != null) {
                                i10 = R.id.title;
                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView4 != null) {
                                    i10 = R.id.toolbar;
                                    View viewA2 = ViewBindings.a(view, R.id.toolbar);
                                    if (viewA2 != null) {
                                        AccountSignupToolbarBinding accountSignupToolbarBindingBind = AccountSignupToolbarBinding.bind(viewA2);
                                        i10 = R.id.view_country;
                                        View viewA3 = ViewBindings.a(view, R.id.view_country);
                                        if (viewA3 != null) {
                                            return new FragmentEnterCountryBinding((LinearLayout) view, textView, textView2, viewA, imageView, button, textView3, textView4, accountSignupToolbarBindingBind, viewA3);
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
}
