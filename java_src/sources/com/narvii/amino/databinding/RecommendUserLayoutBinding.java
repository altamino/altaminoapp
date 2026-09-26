package com.narvii.amino.databinding;

import android.R;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.widget.NVListView;

/* JADX INFO: loaded from: classes5.dex */
public final class RecommendUserLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout content;

    @NonNull
    public final NVListView list;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static RecommendUserLayoutBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.list;
        NVListView nVListView = (NVListView) ViewBindings.a(view, R.id.list);
        if (nVListView != null) {
            i10 = com.narvii.amino.master.R.id.title;
            TextView textView = (TextView) ViewBindings.a(view, com.narvii.amino.master.R.id.title);
            if (textView != null) {
                return new RecommendUserLayoutBinding(linearLayout, linearLayout, nVListView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static RecommendUserLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RecommendUserLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(com.narvii.amino.master.R.layout.recommend_user_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RecommendUserLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull NVListView nVListView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.content = linearLayout2;
        this.list = nVListView;
        this.title = textView;
    }
}
