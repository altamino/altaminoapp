package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.utils.StoreItemNameView;

/* JADX INFO: loaded from: classes7.dex */
public final class StickerPickerUserCreatedInfoBinding implements ViewBinding {

    @NonNull
    public final LinearLayout authorLayout;

    @NonNull
    public final LinearLayout editButton;

    @NonNull
    public final StoreItemNameView nameView;

    @NonNull
    public final TextView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final StoreItemStatusView storeItemStatusView;

    @NonNull
    public final TextView usedTimes;

    @NonNull
    public static StickerPickerUserCreatedInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerPickerUserCreatedInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_picker_user_created_info, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerPickerUserCreatedInfoBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull StoreItemNameView storeItemNameView, @NonNull TextView textView, @NonNull StoreItemStatusView storeItemStatusView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.authorLayout = linearLayout2;
        this.editButton = linearLayout3;
        this.nameView = storeItemNameView;
        this.nickname = textView;
        this.storeItemStatusView = storeItemStatusView;
        this.usedTimes = textView2;
    }

    @NonNull
    public static StickerPickerUserCreatedInfoBinding bind(@NonNull View view) {
        int i10 = R.id.author_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.author_layout);
        if (linearLayout != null) {
            i10 = R.id.edit_button;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.edit_button);
            if (linearLayout2 != null) {
                i10 = R.id.name_view;
                StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.name_view);
                if (storeItemNameView != null) {
                    i10 = R.id.nickname;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.nickname);
                    if (textView != null) {
                        i10 = R.id.store_item_status_view;
                        StoreItemStatusView storeItemStatusView = (StoreItemStatusView) ViewBindings.a(view, R.id.store_item_status_view);
                        if (storeItemStatusView != null) {
                            i10 = R.id.used_times;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.used_times);
                            if (textView2 != null) {
                                return new StickerPickerUserCreatedInfoBinding((LinearLayout) view, linearLayout, linearLayout2, storeItemNameView, textView, storeItemStatusView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
