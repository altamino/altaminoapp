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

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentInterestPickerWelcomeBinding implements ViewBinding {

    @NonNull
    public final TextView description;

    @NonNull
    public final ImageView image;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public final Button skipButton;

    @NonNull
    public final Button start;

    @NonNull
    public final TextView title;

    @NonNull
    public static FragmentInterestPickerWelcomeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentInterestPickerWelcomeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_interest_picker_welcome, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentInterestPickerWelcomeBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView2) {
        this.rootView = constraintLayout;
        this.description = textView;
        this.image = imageView;
        this.skipButton = button;
        this.start = button2;
        this.title = textView2;
    }

    @NonNull
    public static FragmentInterestPickerWelcomeBinding bind(@NonNull View view) {
        int i10 = R.id.description;
        TextView textView = (TextView) ViewBindings.a(view, R.id.description);
        if (textView != null) {
            i10 = R.id.image;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.image);
            if (imageView != null) {
                i10 = R.id.skip_button;
                Button button = (Button) ViewBindings.a(view, R.id.skip_button);
                if (button != null) {
                    i10 = R.id.start;
                    Button button2 = (Button) ViewBindings.a(view, R.id.start);
                    if (button2 != null) {
                        i10 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                        if (textView2 != null) {
                            return new FragmentInterestPickerWelcomeBinding((ConstraintLayout) view, textView, imageView, button, button2, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
