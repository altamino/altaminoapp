package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.PushButton;

/* JADX INFO: loaded from: classes9.dex */
public final class IncubatorEmptyViewBinding implements ViewBinding {

    @NonNull
    public final PushButton createAmino;

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    public final PushButton explorerAmino;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public final FrameLayout stub2;

    @NonNull
    public static IncubatorEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_empty_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorEmptyViewBinding(@NonNull FlexLayout flexLayout, @NonNull PushButton pushButton, @NonNull FontAwesomeView fontAwesomeView, @NonNull PushButton pushButton2, @NonNull View view, @NonNull FrameLayout frameLayout) {
        this.rootView = flexLayout;
        this.createAmino = pushButton;
        this.emptyRetry = fontAwesomeView;
        this.explorerAmino = pushButton2;
        this.stub1 = view;
        this.stub2 = frameLayout;
    }

    @NonNull
    public static IncubatorEmptyViewBinding bind(@NonNull View view) {
        int i10 = R.id.create_amino;
        PushButton pushButton = (PushButton) ViewBindings.a(view, R.id.create_amino);
        if (pushButton != null) {
            i10 = R.id.empty_retry;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
            if (fontAwesomeView != null) {
                i10 = R.id.explorer_amino;
                PushButton pushButton2 = (PushButton) ViewBindings.a(view, R.id.explorer_amino);
                if (pushButton2 != null) {
                    i10 = R.id.stub1;
                    View viewA = ViewBindings.a(view, R.id.stub1);
                    if (viewA != null) {
                        i10 = R.id.stub2;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.stub2);
                        if (frameLayout != null) {
                            return new IncubatorEmptyViewBinding((FlexLayout) view, pushButton, fontAwesomeView, pushButton2, viewA, frameLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
