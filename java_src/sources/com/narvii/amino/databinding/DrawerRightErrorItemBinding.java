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
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes7.dex */
public final class DrawerRightErrorItemBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView retry;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static DrawerRightErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerRightErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_right_error_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerRightErrorItemBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.retry = fontAwesomeView;
        this.text = textView;
    }

    @NonNull
    public static DrawerRightErrorItemBinding bind(@NonNull View view) {
        int i10 = R.id.retry;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.retry);
        if (fontAwesomeView != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.text);
            if (textView != null) {
                return new DrawerRightErrorItemBinding((LinearLayout) view, fontAwesomeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
