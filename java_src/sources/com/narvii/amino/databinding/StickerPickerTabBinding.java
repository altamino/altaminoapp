package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes7.dex */
public final class StickerPickerTabBinding implements ViewBinding {

    @NonNull
    public final CommunityIconView communityStickers;

    @NonNull
    public final View communityStickersDivider;

    @NonNull
    public final FrameLayout communityStickersLayout;

    @NonNull
    public final LinearLayout pickerTabLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TintButton stickerAdd;

    @NonNull
    public final View stickerAddDivider;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public static StickerPickerTabBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerPickerTabBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_picker_tab, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerPickerTabBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityIconView communityIconView, @NonNull View view, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull TintButton tintButton, @NonNull View view2, @NonNull NVPagerTabLayout nVPagerTabLayout) {
        this.rootView = linearLayout;
        this.communityStickers = communityIconView;
        this.communityStickersDivider = view;
        this.communityStickersLayout = frameLayout;
        this.pickerTabLayout = linearLayout2;
        this.stickerAdd = tintButton;
        this.stickerAddDivider = view2;
        this.tabs = nVPagerTabLayout;
    }

    @NonNull
    public static StickerPickerTabBinding bind(@NonNull View view) {
        int i10 = R.id.community_stickers;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_stickers);
        if (communityIconView != null) {
            i10 = R.id.community_stickers_divider;
            View viewA = ViewBindings.a(view, R.id.community_stickers_divider);
            if (viewA != null) {
                i10 = R.id.community_stickers_layout;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.community_stickers_layout);
                if (frameLayout != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i10 = R.id.sticker_add;
                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.sticker_add);
                    if (tintButton != null) {
                        i10 = R.id.sticker_add_divider;
                        View viewA2 = ViewBindings.a(view, R.id.sticker_add_divider);
                        if (viewA2 != null) {
                            i10 = R.id.tabs;
                            NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, R.id.tabs);
                            if (nVPagerTabLayout != null) {
                                return new StickerPickerTabBinding(linearLayout, communityIconView, viewA, frameLayout, linearLayout, tintButton, viewA2, nVPagerTabLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
