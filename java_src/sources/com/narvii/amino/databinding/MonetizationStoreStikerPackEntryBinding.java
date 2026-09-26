package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class MonetizationStoreStikerPackEntryBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout stickerPackEntryRoot;

    @NonNull
    public static MonetizationStoreStikerPackEntryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MonetizationStoreStikerPackEntryBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        LinearLayout linearLayout = (LinearLayout) view;
        return new MonetizationStoreStikerPackEntryBinding(linearLayout, linearLayout);
    }

    @NonNull
    public static MonetizationStoreStikerPackEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.monetization_store_stiker_pack_entry, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MonetizationStoreStikerPackEntryBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.stickerPackEntryRoot = linearLayout2;
    }
}
