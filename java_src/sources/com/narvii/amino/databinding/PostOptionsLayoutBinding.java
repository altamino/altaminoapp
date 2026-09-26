package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.lib.databinding.SimpleListItemCheckBinding;

/* JADX INFO: loaded from: classes9.dex */
public final class PostOptionsLayoutBinding implements ViewBinding {

    @NonNull
    public final SimpleListItemCheckBinding postOptionAnim0;

    @NonNull
    public final SimpleListItemCheckBinding postOptionAnim1;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static PostOptionsLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostOptionsLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_options_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostOptionsLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull SimpleListItemCheckBinding simpleListItemCheckBinding, @NonNull SimpleListItemCheckBinding simpleListItemCheckBinding2) {
        this.rootView = linearLayout;
        this.postOptionAnim0 = simpleListItemCheckBinding;
        this.postOptionAnim1 = simpleListItemCheckBinding2;
    }

    @NonNull
    public static PostOptionsLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.post_option_anim_0;
        View viewA = ViewBindings.a(view, R.id.post_option_anim_0);
        if (viewA != null) {
            SimpleListItemCheckBinding simpleListItemCheckBindingBind = SimpleListItemCheckBinding.bind(viewA);
            View viewA2 = ViewBindings.a(view, R.id.post_option_anim_1);
            if (viewA2 != null) {
                return new PostOptionsLayoutBinding((LinearLayout) view, simpleListItemCheckBindingBind, SimpleListItemCheckBinding.bind(viewA2));
            }
            i10 = R.id.post_option_anim_1;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
