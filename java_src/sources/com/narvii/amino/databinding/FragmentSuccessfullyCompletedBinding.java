package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentSuccessfullyCompletedBinding implements ViewBinding {

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public final TextView subtitle;

    @NonNull
    public final ImageView successIcon;

    @NonNull
    public final TextView title;

    @NonNull
    public final RelativeLayout titleBar;

    @NonNull
    public static FragmentSuccessfullyCompletedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSuccessfullyCompletedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_successfully_completed, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSuccessfullyCompletedBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout) {
        this.rootView = constraintLayout;
        this.subtitle = textView;
        this.successIcon = imageView;
        this.title = textView2;
        this.titleBar = relativeLayout;
    }

    @NonNull
    public static FragmentSuccessfullyCompletedBinding bind(@NonNull View view) {
        int i10 = R.id.subtitle;
        TextView textView = (TextView) ViewBindings.a(view, R.id.subtitle);
        if (textView != null) {
            i10 = R.id.success_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.success_icon);
            if (imageView != null) {
                i10 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                if (textView2 != null) {
                    i10 = R.id.title_bar;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.title_bar);
                    if (relativeLayout != null) {
                        return new FragmentSuccessfullyCompletedBinding((ConstraintLayout) view, textView, imageView, textView2, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
