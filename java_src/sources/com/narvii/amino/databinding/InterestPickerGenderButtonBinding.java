package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class InterestPickerGenderButtonBinding implements ViewBinding {

    @NonNull
    public final ImageView genderIcon;

    @NonNull
    public final TextView genderText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static InterestPickerGenderButtonBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InterestPickerGenderButtonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.interest_picker_gender_button, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InterestPickerGenderButtonBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.genderIcon = imageView;
        this.genderText = textView;
    }

    @NonNull
    public static InterestPickerGenderButtonBinding bind(@NonNull View view) {
        int i10 = R.id.gender_icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.gender_icon);
        if (imageView != null) {
            i10 = R.id.gender_text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.gender_text);
            if (textView != null) {
                return new InterestPickerGenderButtonBinding((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
