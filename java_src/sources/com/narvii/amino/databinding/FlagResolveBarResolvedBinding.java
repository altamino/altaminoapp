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

/* JADX INFO: loaded from: classes11.dex */
public final class FlagResolveBarResolvedBinding implements ViewBinding {

    @NonNull
    public final TextView resolvedTime;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FlagResolveBarResolvedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagResolveBarResolvedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_resolve_bar_resolved, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlagResolveBarResolvedBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.resolvedTime = textView;
    }

    @NonNull
    public static FlagResolveBarResolvedBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.resolved_time);
        if (textView != null) {
            return new FlagResolveBarResolvedBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.resolved_time)));
    }
}
