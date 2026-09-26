package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class StoryRecyclerSceneAddMoreItemBinding implements ViewBinding {

    @NonNull
    public final TintButton ivAdd;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final View splitView;

    @NonNull
    public static StoryRecyclerSceneAddMoreItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StoryRecyclerSceneAddMoreItemBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.iv_add;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton == null || (viewA = ViewBindings.a(view, (i10 = R.id.split_view))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        return new StoryRecyclerSceneAddMoreItemBinding((LinearLayout) view, tintButton, viewA);
    }

    @NonNull
    public static StoryRecyclerSceneAddMoreItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.story_recycler_scene_add_more_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StoryRecyclerSceneAddMoreItemBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull View view) {
        this.rootView = linearLayout;
        this.ivAdd = tintButton;
        this.splitView = view;
    }
}
