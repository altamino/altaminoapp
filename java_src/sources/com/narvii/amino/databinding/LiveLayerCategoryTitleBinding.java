package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class LiveLayerCategoryTitleBinding implements ViewBinding {

    @NonNull
    public final ImageView icon;

    @NonNull
    public final TextView listTitle;

    @NonNull
    public final RelativeLayout mainLayout;

    @NonNull
    public final TextView moreUser;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LiveLayerCategoryTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerCategoryTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_category_title, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerCategoryTitleBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.icon = imageView;
        this.listTitle = textView;
        this.mainLayout = relativeLayout;
        this.moreUser = textView2;
    }

    @NonNull
    public static LiveLayerCategoryTitleBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
        if (imageView != null) {
            i10 = R.id.list_title;
            TextView textView = (TextView) ViewBindings.a(view, R.id.list_title);
            if (textView != null) {
                i10 = R.id.main_layout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.main_layout);
                if (relativeLayout != null) {
                    i10 = R.id.more_user;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.more_user);
                    if (textView2 != null) {
                        return new LiveLayerCategoryTitleBinding((FrameLayout) view, imageView, textView, relativeLayout, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
