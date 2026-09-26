package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes10.dex */
public final class IncubatorItemCreateAminoBinding implements ViewBinding {

    @NonNull
    public final LinearLayout createAmino;

    @NonNull
    public final AutoSizingTextView hint;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static IncubatorItemCreateAminoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorItemCreateAminoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_item_create_amino, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorItemCreateAminoBinding(@NonNull FlexLayout flexLayout, @NonNull LinearLayout linearLayout, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = flexLayout;
        this.createAmino = linearLayout;
        this.hint = autoSizingTextView;
    }

    @NonNull
    public static IncubatorItemCreateAminoBinding bind(@NonNull View view) {
        int i10 = R.id.create_amino;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.create_amino);
        if (linearLayout != null) {
            i10 = R.id.hint;
            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.hint);
            if (autoSizingTextView != null) {
                return new IncubatorItemCreateAminoBinding((FlexLayout) view, linearLayout, autoSizingTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
