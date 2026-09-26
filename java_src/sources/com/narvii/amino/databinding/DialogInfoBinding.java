package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.PopButton;

/* JADX INFO: loaded from: classes8.dex */
public final class DialogInfoBinding implements ViewBinding {

    @NonNull
    public final Button action;

    @NonNull
    public final View bg;

    @NonNull
    public final PopButton close;

    @NonNull
    public final TextView description;

    @NonNull
    public final FlexLayout mainLayout;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static DialogInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_info, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogInfoBinding(@NonNull FlexLayout flexLayout, @NonNull Button button, @NonNull View view, @NonNull PopButton popButton, @NonNull TextView textView, @NonNull FlexLayout flexLayout2, @NonNull TextView textView2) {
        this.rootView = flexLayout;
        this.action = button;
        this.bg = view;
        this.close = popButton;
        this.description = textView;
        this.mainLayout = flexLayout2;
        this.title = textView2;
    }

    @NonNull
    public static DialogInfoBinding bind(@NonNull View view) {
        int i10 = R.id.action;
        Button button = (Button) ViewBindings.a(view, R.id.action);
        if (button != null) {
            i10 = R.id.bg;
            View viewA = ViewBindings.a(view, R.id.bg);
            if (viewA != null) {
                i10 = R.id.close;
                PopButton popButton = (PopButton) ViewBindings.a(view, R.id.close);
                if (popButton != null) {
                    i10 = R.id.description;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.description);
                    if (textView != null) {
                        i10 = R.id.main_layout;
                        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.main_layout);
                        if (flexLayout != null) {
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView2 != null) {
                                return new DialogInfoBinding((FlexLayout) view, button, viewA, popButton, textView, flexLayout, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
