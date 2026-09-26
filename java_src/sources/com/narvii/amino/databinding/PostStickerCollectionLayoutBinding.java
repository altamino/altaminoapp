package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.item.post.DragSortParentLayout;
import com.narvii.monetization.sticker.post.StickerPostItemList;
import com.narvii.widget.NVScrollView;

/* JADX INFO: loaded from: classes9.dex */
public final class PostStickerCollectionLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout addStickerLayout;

    @NonNull
    public final TextView descCountdown;

    @NonNull
    public final EditText editDescription;

    @NonNull
    public final EditText editName;

    @NonNull
    public final TextView nameCountdown;

    @NonNull
    public final DragSortParentLayout root;

    @NonNull
    private final NVScrollView rootView;

    @NonNull
    public final StickerPostItemList stickerList;

    @NonNull
    public static PostStickerCollectionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVScrollView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostStickerCollectionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_sticker_collection_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostStickerCollectionLayoutBinding(@NonNull NVScrollView nVScrollView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2, @NonNull TextView textView2, @NonNull DragSortParentLayout dragSortParentLayout, @NonNull StickerPostItemList stickerPostItemList) {
        this.rootView = nVScrollView;
        this.addStickerLayout = linearLayout;
        this.descCountdown = textView;
        this.editDescription = editText;
        this.editName = editText2;
        this.nameCountdown = textView2;
        this.root = dragSortParentLayout;
        this.stickerList = stickerPostItemList;
    }

    @NonNull
    public static PostStickerCollectionLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.add_sticker_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.add_sticker_layout);
        if (linearLayout != null) {
            i10 = R.id.desc_countdown;
            TextView textView = (TextView) ViewBindings.a(view, R.id.desc_countdown);
            if (textView != null) {
                i10 = R.id.edit_description;
                EditText editText = (EditText) ViewBindings.a(view, R.id.edit_description);
                if (editText != null) {
                    i10 = R.id.edit_name;
                    EditText editText2 = (EditText) ViewBindings.a(view, R.id.edit_name);
                    if (editText2 != null) {
                        i10 = R.id.name_countdown;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.name_countdown);
                        if (textView2 != null) {
                            i10 = R.id.root;
                            DragSortParentLayout dragSortParentLayout = (DragSortParentLayout) ViewBindings.a(view, R.id.root);
                            if (dragSortParentLayout != null) {
                                i10 = R.id.sticker_list;
                                StickerPostItemList stickerPostItemList = (StickerPostItemList) ViewBindings.a(view, R.id.sticker_list);
                                if (stickerPostItemList != null) {
                                    return new PostStickerCollectionLayoutBinding((NVScrollView) view, linearLayout, textView, editText, editText2, textView2, dragSortParentLayout, stickerPostItemList);
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
