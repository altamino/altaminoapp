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

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentEnterBirthdayBinding implements ViewBinding {

    @NonNull
    public final TextView birthday;

    @NonNull
    public final View birthdayBottom;

    @NonNull
    public final TextView description;

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
    public static FragmentEnterBirthdayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentEnterBirthdayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_enter_birthday, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentEnterBirthdayBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull View view, @NonNull TextView textView2, @NonNull View view2, @NonNull ImageView imageView, @NonNull Button button, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull AccountSignupToolbarBinding accountSignupToolbarBinding) {
        this.rootView = linearLayout;
        this.birthday = textView;
        this.birthdayBottom = view;
        this.description = textView2;
        this.divider = view2;
        this.icon = imageView;
        this.save = button;
        this.skip = textView3;
        this.title = textView4;
        this.toolbar = accountSignupToolbarBinding;
    }

    @NonNull
    public static FragmentEnterBirthdayBinding bind(@NonNull View view) {
        int i10 = R.id.birthday;
        TextView textView = (TextView) ViewBindings.a(view, R.id.birthday);
        if (textView != null) {
            i10 = R.id.birthday_bottom;
            View viewA = ViewBindings.a(view, R.id.birthday_bottom);
            if (viewA != null) {
                i10 = R.id.description;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.description);
                if (textView2 != null) {
                    i10 = R.id.divider;
                    View viewA2 = ViewBindings.a(view, R.id.divider);
                    if (viewA2 != null) {
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
                                        View viewA3 = ViewBindings.a(view, R.id.toolbar);
                                        if (viewA3 != null) {
                                            return new FragmentEnterBirthdayBinding((LinearLayout) view, textView, viewA, textView2, viewA2, imageView, button, textView3, textView4, AccountSignupToolbarBinding.bind(viewA3));
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
