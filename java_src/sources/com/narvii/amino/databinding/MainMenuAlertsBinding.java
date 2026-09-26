package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class MainMenuAlertsBinding implements ViewBinding {

    @NonNull
    public final View badge;

    @NonNull
    public final ImageView icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static MainMenuAlertsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MainMenuAlertsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.main_menu_alerts, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MainMenuAlertsBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.badge = view;
        this.icon = imageView;
    }

    @NonNull
    public static MainMenuAlertsBinding bind(@NonNull View view) {
        int i10 = R.id.badge;
        View viewA = ViewBindings.a(view, R.id.badge);
        if (viewA != null) {
            i10 = R.id.icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
            if (imageView != null) {
                return new MainMenuAlertsBinding((LinearLayout) view, viewA, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
