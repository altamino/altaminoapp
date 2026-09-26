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
import com.narvii.amino.speeddial.VVActiveUserLayout;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class ItemLiveVvBinding implements ViewBinding {

    @NonNull
    public final NVImageView imageOverlay;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final VVActiveUserLayout userContainer;

    @NonNull
    public final NVImageView vvBg;

    @NonNull
    public static ItemLiveVvBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemLiveVvBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_live_vv, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemLiveVvBinding(@NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull VVActiveUserLayout vVActiveUserLayout, @NonNull NVImageView nVImageView2) {
        this.rootView = linearLayout;
        this.imageOverlay = nVImageView;
        this.title = textView;
        this.userContainer = vVActiveUserLayout;
        this.vvBg = nVImageView2;
    }

    @NonNull
    public static ItemLiveVvBinding bind(@NonNull View view) {
        int i10 = R.id.image_overlay;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.image_overlay);
        if (nVImageView != null) {
            i10 = R.id.title;
            TextView textView = (TextView) ViewBindings.a(view, R.id.title);
            if (textView != null) {
                i10 = R.id.user_container;
                VVActiveUserLayout vVActiveUserLayout = (VVActiveUserLayout) ViewBindings.a(view, R.id.user_container);
                if (vVActiveUserLayout != null) {
                    i10 = R.id.vv_bg;
                    NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.vv_bg);
                    if (nVImageView2 != null) {
                        return new ItemLiveVvBinding((LinearLayout) view, nVImageView, textView, vVActiveUserLayout, nVImageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
