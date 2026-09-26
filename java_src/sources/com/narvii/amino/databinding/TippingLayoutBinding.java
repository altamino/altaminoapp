package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.tipping.TippingBoxView;

/* JADX INFO: loaded from: classes2.dex */
public final class TippingLayoutBinding implements ViewBinding {

    @NonNull
    public final LiveLayerOnlineBar memberList;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView tippedCount;

    @NonNull
    public final TippingBoxView tippingBox;

    @NonNull
    public static TippingLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TippingLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.tipping_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private TippingLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull LiveLayerOnlineBar liveLayerOnlineBar, @NonNull TextView textView, @NonNull TippingBoxView tippingBoxView) {
        this.rootView = linearLayout;
        this.memberList = liveLayerOnlineBar;
        this.tippedCount = textView;
        this.tippingBox = tippingBoxView;
    }

    @NonNull
    public static TippingLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.member_list;
        LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) ViewBindings.a(view, R.id.member_list);
        if (liveLayerOnlineBar != null) {
            i10 = R.id.tipped_count;
            TextView textView = (TextView) ViewBindings.a(view, R.id.tipped_count);
            if (textView != null) {
                i10 = R.id.tipping_box;
                TippingBoxView tippingBoxView = (TippingBoxView) ViewBindings.a(view, R.id.tipping_box);
                if (tippingBoxView != null) {
                    return new TippingLayoutBinding((LinearLayout) view, liveLayerOnlineBar, textView, tippingBoxView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
