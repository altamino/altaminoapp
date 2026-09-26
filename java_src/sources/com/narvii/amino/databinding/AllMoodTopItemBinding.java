package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class AllMoodTopItemBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final GridLayout topGrid;

    @NonNull
    public static AllMoodTopItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AllMoodTopItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.all_mood_top_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AllMoodTopItemBinding(@NonNull FrameLayout frameLayout, @NonNull GridLayout gridLayout) {
        this.rootView = frameLayout;
        this.topGrid = gridLayout;
    }

    @NonNull
    public static AllMoodTopItemBinding bind(@NonNull View view) {
        GridLayout gridLayout = (GridLayout) ViewBindings.a(view, R.id.top_grid);
        if (gridLayout != null) {
            return new AllMoodTopItemBinding((FrameLayout) view, gridLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.top_grid)));
    }
}
