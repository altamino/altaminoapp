package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ExpandTextView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemSharedPhotoCommentBinding implements ViewBinding {

    @NonNull
    public final ExpandTextView comment;

    @NonNull
    public final FrameLayout expand;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemSharedPhotoCommentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSharedPhotoCommentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_shared_photo_comment, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSharedPhotoCommentBinding(@NonNull FrameLayout frameLayout, @NonNull ExpandTextView expandTextView, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.comment = expandTextView;
        this.expand = frameLayout2;
    }

    @NonNull
    public static ItemSharedPhotoCommentBinding bind(@NonNull View view) {
        int i10 = R.id.comment;
        ExpandTextView expandTextView = (ExpandTextView) ViewBindings.a(view, R.id.comment);
        if (expandTextView != null) {
            i10 = R.id.expand;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.expand);
            if (frameLayout != null) {
                return new ItemSharedPhotoCommentBinding((FrameLayout) view, expandTextView, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
