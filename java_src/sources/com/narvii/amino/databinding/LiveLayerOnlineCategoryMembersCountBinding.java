package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes10.dex */
public final class LiveLayerOnlineCategoryMembersCountBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView onlineMemberCount;

    @NonNull
    private final AutoSizingTextView rootView;

    @NonNull
    public static LiveLayerOnlineCategoryMembersCountBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public AutoSizingTextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerOnlineCategoryMembersCountBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) view;
        return new LiveLayerOnlineCategoryMembersCountBinding(autoSizingTextView, autoSizingTextView);
    }

    @NonNull
    public static LiveLayerOnlineCategoryMembersCountBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_online_category_members_count, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerOnlineCategoryMembersCountBinding(@NonNull AutoSizingTextView autoSizingTextView, @NonNull AutoSizingTextView autoSizingTextView2) {
        this.rootView = autoSizingTextView;
        this.onlineMemberCount = autoSizingTextView2;
    }
}
