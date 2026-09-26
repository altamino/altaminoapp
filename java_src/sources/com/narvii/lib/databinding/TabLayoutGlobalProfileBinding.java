package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.ScaleView;

/* JADX INFO: loaded from: classes11.dex */
public final class TabLayoutGlobalProfileBinding implements ViewBinding {

    @NonNull
    private final ScaleView rootView;

    @NonNull
    public final TextView tabTitle;

    @NonNull
    public static TabLayoutGlobalProfileBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ScaleView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TabLayoutGlobalProfileBinding bind(@NonNull View view) {
        int i10 = R.id.tab_title;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            return new TabLayoutGlobalProfileBinding((ScaleView) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static TabLayoutGlobalProfileBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.tab_layout_global_profile, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private TabLayoutGlobalProfileBinding(@NonNull ScaleView scaleView, @NonNull TextView textView) {
        this.rootView = scaleView;
        this.tabTitle = textView;
    }
}
