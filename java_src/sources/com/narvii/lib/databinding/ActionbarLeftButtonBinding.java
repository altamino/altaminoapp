package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes11.dex */
public final class ActionbarLeftButtonBinding implements ViewBinding {

    @NonNull
    public final FrameLayout actionbarBack;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static ActionbarLeftButtonBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.text;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            return new ActionbarLeftButtonBinding(frameLayout, frameLayout, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ActionbarLeftButtonBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ActionbarLeftButtonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.actionbar_left_button, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ActionbarLeftButtonBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.actionbarBack = frameLayout2;
        this.text = textView;
    }
}
