package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class RecentActivityDateSectionHeaderBinding implements ViewBinding {

    @NonNull
    private final TextView rootView;

    @NonNull
    public static RecentActivityDateSectionHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RecentActivityDateSectionHeaderBinding bind(@NonNull View view) {
        if (view != null) {
            return new RecentActivityDateSectionHeaderBinding((TextView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static RecentActivityDateSectionHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.recent_activity_date_section_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RecentActivityDateSectionHeaderBinding(@NonNull TextView textView) {
        this.rootView = textView;
    }
}
