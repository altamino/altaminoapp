package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemMoreAimnoMyAminosBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView moreAminos;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemMoreAimnoMyAminosBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemMoreAimnoMyAminosBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_more_aimno_my_aminos, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemMoreAimnoMyAminosBinding(@NonNull FlexLayout flexLayout, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = flexLayout;
        this.moreAminos = autoSizingTextView;
    }

    @NonNull
    public static ItemMoreAimnoMyAminosBinding bind(@NonNull View view) {
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.more_aminos);
        if (autoSizingTextView != null) {
            return new ItemMoreAimnoMyAminosBinding((FlexLayout) view, autoSizingTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.more_aminos)));
    }
}
