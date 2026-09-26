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

/* JADX INFO: loaded from: classes11.dex */
public final class DialogSuggetUpdateBinding implements ViewBinding {

    @NonNull
    public final View bg;

    @NonNull
    public final PopButton close;

    @NonNull
    public final TextView hint;

    @NonNull
    public final FlexLayout mainLayout;

    @NonNull
    public final Button openAppStoreButton;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static DialogSuggetUpdateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogSuggetUpdateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_sugget_update, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogSuggetUpdateBinding(@NonNull FlexLayout flexLayout, @NonNull View view, @NonNull PopButton popButton, @NonNull TextView textView, @NonNull FlexLayout flexLayout2, @NonNull Button button) {
        this.rootView = flexLayout;
        this.bg = view;
        this.close = popButton;
        this.hint = textView;
        this.mainLayout = flexLayout2;
        this.openAppStoreButton = button;
    }

    @NonNull
    public static DialogSuggetUpdateBinding bind(@NonNull View view) {
        int i10 = R.id.bg;
        View viewA = ViewBindings.a(view, R.id.bg);
        if (viewA != null) {
            i10 = R.id.close;
            PopButton popButton = (PopButton) ViewBindings.a(view, R.id.close);
            if (popButton != null) {
                i10 = R.id.hint;
                TextView textView = (TextView) ViewBindings.a(view, R.id.hint);
                if (textView != null) {
                    i10 = R.id.main_layout;
                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.main_layout);
                    if (flexLayout != null) {
                        i10 = R.id.open_app_store_button;
                        Button button = (Button) ViewBindings.a(view, R.id.open_app_store_button);
                        if (button != null) {
                            return new DialogSuggetUpdateBinding((FlexLayout) view, viewA, popButton, textView, flexLayout, button);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
