package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.master.widget.MasterTabPlaceHolder;
import com.narvii.widget.NVListView;

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentAggrefationChatBinding implements ViewBinding {

    @NonNull
    public final View bottomPlaceHolder;

    @NonNull
    public final FrameLayout chatContentFrame;

    @NonNull
    public final NVListView communityList;

    @NonNull
    public final ItemGlobalAggregationBinding globalLayout;

    @NonNull
    public final MasterTabPlaceHolder masterTopPlaceholder;

    @NonNull
    public final FrameLayout recentLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ImageView selectedIndicator;

    @NonNull
    public static FragmentAggrefationChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentAggrefationChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_aggrefation_chat, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentAggrefationChatBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull FrameLayout frameLayout, @NonNull NVListView nVListView, @NonNull ItemGlobalAggregationBinding itemGlobalAggregationBinding, @NonNull MasterTabPlaceHolder masterTabPlaceHolder, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.bottomPlaceHolder = view;
        this.chatContentFrame = frameLayout;
        this.communityList = nVListView;
        this.globalLayout = itemGlobalAggregationBinding;
        this.masterTopPlaceholder = masterTabPlaceHolder;
        this.recentLayout = frameLayout2;
        this.selectedIndicator = imageView;
    }

    @NonNull
    public static FragmentAggrefationChatBinding bind(@NonNull View view) {
        int i10 = R.id.bottom_place_holder;
        View viewA = ViewBindings.a(view, R.id.bottom_place_holder);
        if (viewA != null) {
            i10 = R.id.chat_content_frame;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.chat_content_frame);
            if (frameLayout != null) {
                i10 = R.id.community_list;
                NVListView nVListView = (NVListView) ViewBindings.a(view, R.id.community_list);
                if (nVListView != null) {
                    i10 = R.id.global_layout;
                    View viewA2 = ViewBindings.a(view, R.id.global_layout);
                    if (viewA2 != null) {
                        ItemGlobalAggregationBinding itemGlobalAggregationBindingBind = ItemGlobalAggregationBinding.bind(viewA2);
                        i10 = R.id.master_top_placeholder;
                        MasterTabPlaceHolder masterTabPlaceHolder = (MasterTabPlaceHolder) ViewBindings.a(view, R.id.master_top_placeholder);
                        if (masterTabPlaceHolder != null) {
                            i10 = R.id.recent_layout;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.recent_layout);
                            if (frameLayout2 != null) {
                                i10 = R.id.selected_indicator;
                                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.selected_indicator);
                                if (imageView != null) {
                                    return new FragmentAggrefationChatBinding((LinearLayout) view, viewA, frameLayout, nVListView, itemGlobalAggregationBindingBind, masterTabPlaceHolder, frameLayout2, imageView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
