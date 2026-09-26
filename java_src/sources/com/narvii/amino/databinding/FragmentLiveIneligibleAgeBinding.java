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

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentLiveIneligibleAgeBinding implements ViewBinding {

    @NonNull
    public final TextView description;

    @NonNull
    public final View divider;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final Button ok;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static FragmentLiveIneligibleAgeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentLiveIneligibleAgeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_live_ineligible_age, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentLiveIneligibleAgeBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull View view, @NonNull ImageView imageView, @NonNull Button button, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.description = textView;
        this.divider = view;
        this.icon = imageView;
        this.ok = button;
        this.title = textView2;
    }

    @NonNull
    public static FragmentLiveIneligibleAgeBinding bind(@NonNull View view) {
        int i10 = R.id.description;
        TextView textView = (TextView) ViewBindings.a(view, R.id.description);
        if (textView != null) {
            i10 = R.id.divider;
            View viewA = ViewBindings.a(view, R.id.divider);
            if (viewA != null) {
                i10 = R.id.icon;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
                if (imageView != null) {
                    i10 = R.id.ok;
                    Button button = (Button) ViewBindings.a(view, R.id.ok);
                    if (button != null) {
                        i10 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                        if (textView2 != null) {
                            return new FragmentLiveIneligibleAgeBinding((LinearLayout) view, textView, viewA, imageView, button, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
