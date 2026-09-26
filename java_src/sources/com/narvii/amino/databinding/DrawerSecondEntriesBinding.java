package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.amino.page.PageSecondLevelLayout;

/* JADX INFO: loaded from: classes9.dex */
public final class DrawerSecondEntriesBinding implements ViewBinding {

    @NonNull
    public final GridLayout grid;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final PageSecondLevelLayout secondEntries;

    @NonNull
    public final View secondEntriesOffset;

    @NonNull
    public static DrawerSecondEntriesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerSecondEntriesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_second_entries, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerSecondEntriesBinding(@NonNull LinearLayout linearLayout, @NonNull GridLayout gridLayout, @NonNull PageSecondLevelLayout pageSecondLevelLayout, @NonNull View view) {
        this.rootView = linearLayout;
        this.grid = gridLayout;
        this.secondEntries = pageSecondLevelLayout;
        this.secondEntriesOffset = view;
    }

    @NonNull
    public static DrawerSecondEntriesBinding bind(@NonNull View view) {
        int i10 = R.id.grid;
        GridLayout gridLayout = (GridLayout) ViewBindings.a(view, R.id.grid);
        if (gridLayout != null) {
            i10 = R.id.second_entries;
            PageSecondLevelLayout pageSecondLevelLayout = (PageSecondLevelLayout) ViewBindings.a(view, R.id.second_entries);
            if (pageSecondLevelLayout != null) {
                i10 = R.id.second_entries_offset;
                View viewA = ViewBindings.a(view, R.id.second_entries_offset);
                if (viewA != null) {
                    return new DrawerSecondEntriesBinding((LinearLayout) view, gridLayout, pageSecondLevelLayout, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
