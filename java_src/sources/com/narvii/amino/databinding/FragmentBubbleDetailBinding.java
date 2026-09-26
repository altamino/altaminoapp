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
import com.narvii.chat.ChatBubbleView;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentBubbleDetailBinding implements ViewBinding {

    @NonNull
    public final LinearLayout bubbleLayout;

    @NonNull
    public final NVImageView bubblePreview;

    @NonNull
    public final ChatBubbleView chatBubble;

    @NonNull
    public final LinearLayout customContainer;

    @NonNull
    public final StoreItemStatusView getBubble;

    @NonNull
    public final StoreItemNameView itemName;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FragmentBubbleDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentBubbleDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_bubble_detail, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentBubbleDetailBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull NVImageView nVImageView, @NonNull ChatBubbleView chatBubbleView, @NonNull LinearLayout linearLayout3, @NonNull StoreItemStatusView storeItemStatusView, @NonNull StoreItemNameView storeItemNameView) {
        this.rootView = linearLayout;
        this.bubbleLayout = linearLayout2;
        this.bubblePreview = nVImageView;
        this.chatBubble = chatBubbleView;
        this.customContainer = linearLayout3;
        this.getBubble = storeItemStatusView;
        this.itemName = storeItemNameView;
    }

    @NonNull
    public static FragmentBubbleDetailBinding bind(@NonNull View view) {
        int i10 = R.id.bubble_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.bubble_layout);
        if (linearLayout != null) {
            i10 = R.id.bubble_preview;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.bubble_preview);
            if (nVImageView != null) {
                i10 = R.id.chat_bubble;
                ChatBubbleView chatBubbleView = (ChatBubbleView) ViewBindings.a(view, R.id.chat_bubble);
                if (chatBubbleView != null) {
                    i10 = R.id.custom_container;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.custom_container);
                    if (linearLayout2 != null) {
                        i10 = R.id.get_bubble;
                        StoreItemStatusView storeItemStatusView = (StoreItemStatusView) ViewBindings.a(view, R.id.get_bubble);
                        if (storeItemStatusView != null) {
                            i10 = R.id.item_name;
                            StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.item_name);
                            if (storeItemNameView != null) {
                                return new FragmentBubbleDetailBinding((LinearLayout) view, linearLayout, nVImageView, chatBubbleView, linearLayout2, storeItemStatusView, storeItemNameView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
