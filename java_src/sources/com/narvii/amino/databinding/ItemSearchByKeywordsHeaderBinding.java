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
public final class ItemSearchByKeywordsHeaderBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemSearchByKeywordsHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSearchByKeywordsHeaderBinding bind(@NonNull View view) {
        if (view != null) {
            return new ItemSearchByKeywordsHeaderBinding((LinearLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ItemSearchByKeywordsHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_search_by_keywords_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSearchByKeywordsHeaderBinding(@NonNull LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }
}
