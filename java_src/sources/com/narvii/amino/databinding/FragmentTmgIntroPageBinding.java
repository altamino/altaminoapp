package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentTmgIntroPageBinding implements ViewBinding {

    @NonNull
    public final Button action;

    @NonNull
    public final TextView description;

    @NonNull
    public final ImageView icon;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static FragmentTmgIntroPageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentTmgIntroPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_tmg_intro_page, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentTmgIntroPageBinding(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.rootView = constraintLayout;
        this.action = button;
        this.description = textView;
        this.icon = imageView;
        this.title = textView2;
    }

    @NonNull
    public static FragmentTmgIntroPageBinding bind(@NonNull View view) {
        int i10 = R.id.action;
        Button button = (Button) ViewBindings.a(view, R.id.action);
        if (button != null) {
            i10 = R.id.description;
            TextView textView = (TextView) ViewBindings.a(view, R.id.description);
            if (textView != null) {
                i10 = R.id.icon;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
                if (imageView != null) {
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView2 != null) {
                        return new FragmentTmgIntroPageBinding((ConstraintLayout) view, button, textView, imageView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
