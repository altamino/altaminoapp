package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class ListLayoutWithSectionBinding implements ViewBinding {

    @NonNull
    public final ModerationHistoryEmptyViewBinding empty;

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final ItemSectionLayoutBinding sectionHeaderOverlay;

    @NonNull
    public final FrameLayout topContainer;

    @NonNull
    public final FrameLayout topContainerParent;

    @NonNull
    public static ListLayoutWithSectionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ListLayoutWithSectionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.list_layout_with_section, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ListLayoutWithSectionBinding(@NonNull FrameLayout frameLayout, @NonNull ModerationHistoryEmptyViewBinding moderationHistoryEmptyViewBinding, @NonNull FrameLayout frameLayout2, @NonNull SpinningView spinningView, @NonNull ItemSectionLayoutBinding itemSectionLayoutBinding, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4) {
        this.rootView = frameLayout;
        this.empty = moderationHistoryEmptyViewBinding;
        this.listFrame = frameLayout2;
        this.progress = spinningView;
        this.sectionHeaderOverlay = itemSectionLayoutBinding;
        this.topContainer = frameLayout3;
        this.topContainerParent = frameLayout4;
    }

    @NonNull
    public static ListLayoutWithSectionBinding bind(@NonNull View view) {
        View viewA;
        int i10 = android.R.id.empty;
        View viewA2 = ViewBindings.a(view, android.R.id.empty);
        if (viewA2 != null) {
            ModerationHistoryEmptyViewBinding moderationHistoryEmptyViewBindingBind = ModerationHistoryEmptyViewBinding.bind(viewA2);
            FrameLayout frameLayout = (FrameLayout) view;
            i10 = android.R.id.progress;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
            if (spinningView != null && (viewA = ViewBindings.a(view, (i10 = R.id.section_header_overlay))) != null) {
                ItemSectionLayoutBinding itemSectionLayoutBindingBind = ItemSectionLayoutBinding.bind(viewA);
                i10 = R.id.top_container;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, i10);
                if (frameLayout2 != null) {
                    i10 = R.id.top_container_parent;
                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, i10);
                    if (frameLayout3 != null) {
                        return new ListLayoutWithSectionBinding(frameLayout, moderationHistoryEmptyViewBindingBind, frameLayout, spinningView, itemSectionLayoutBindingBind, frameLayout2, frameLayout3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
