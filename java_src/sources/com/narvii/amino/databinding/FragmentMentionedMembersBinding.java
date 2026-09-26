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

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentMentionedMembersBinding implements ViewBinding {

    @NonNull
    public final View bgView;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentMentionedMembersBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMentionedMembersBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_mentioned_members, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMentionedMembersBinding(@NonNull FrameLayout frameLayout, @NonNull View view) {
        this.rootView = frameLayout;
        this.bgView = view;
    }

    @NonNull
    public static FragmentMentionedMembersBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.bg_view);
        if (viewA != null) {
            return new FragmentMentionedMembersBinding((FrameLayout) view, viewA);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.bg_view)));
    }
}
