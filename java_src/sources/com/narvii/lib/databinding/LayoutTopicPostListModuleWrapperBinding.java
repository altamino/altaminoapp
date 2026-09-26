package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class LayoutTopicPostListModuleWrapperBinding implements ViewBinding {

    @NonNull
    public final View headlineDivider;

    @NonNull
    public final FrameLayout itemContent;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static LayoutTopicPostListModuleWrapperBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutTopicPostListModuleWrapperBinding bind(@NonNull View view) {
        int i10 = R.id.headline_divider;
        View viewA = ViewBindings.a(view, i10);
        if (viewA != null) {
            i10 = R.id.item_content;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
            if (frameLayout != null) {
                return new LayoutTopicPostListModuleWrapperBinding((LinearLayout) view, viewA, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static LayoutTopicPostListModuleWrapperBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_topic_post_list_module_wrapper, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutTopicPostListModuleWrapperBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.headlineDivider = view;
        this.itemContent = frameLayout;
    }
}
