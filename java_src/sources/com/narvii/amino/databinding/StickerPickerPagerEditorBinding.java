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
import com.narvii.widget.NVViewPager;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes11.dex */
public final class StickerPickerPagerEditorBinding implements ViewBinding {

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout sharedStickerPackTrial;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static StickerPickerPagerEditorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerPickerPagerEditorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_picker_pager_editor, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerPickerPagerEditorBinding(@NonNull FrameLayout frameLayout, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout2, @NonNull NVViewPager nVViewPager) {
        this.rootView = frameLayout;
        this.progress = spinningView;
        this.sharedStickerPackTrial = frameLayout2;
        this.viewpager = nVViewPager;
    }

    @NonNull
    public static StickerPickerPagerEditorBinding bind(@NonNull View view) {
        int i10 = android.R.id.progress;
        SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
        if (spinningView != null) {
            i10 = R.id.shared_sticker_pack_trial;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.shared_sticker_pack_trial);
            if (frameLayout != null) {
                i10 = R.id.viewpager;
                NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.viewpager);
                if (nVViewPager != null) {
                    return new StickerPickerPagerEditorBinding((FrameLayout) view, spinningView, frameLayout, nVViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
