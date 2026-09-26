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
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes.dex */
public final class PendingStickerPackItemBinding implements ViewBinding {

    @NonNull
    public final NVImageView collectionIcon;

    @NonNull
    public final TextView collectionName;

    @NonNull
    public final TextView datetime;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView stickerCount;

    @NonNull
    public static PendingStickerPackItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PendingStickerPackItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.pending_sticker_pack_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PendingStickerPackItemBinding(@NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull NicknameView nicknameView, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.collectionIcon = nVImageView;
        this.collectionName = textView;
        this.datetime = textView2;
        this.nickname = nicknameView;
        this.stickerCount = textView3;
    }

    @NonNull
    public static PendingStickerPackItemBinding bind(@NonNull View view) {
        int i10 = R.id.collection_icon;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.collection_icon);
        if (nVImageView != null) {
            i10 = R.id.collection_name;
            TextView textView = (TextView) ViewBindings.a(view, R.id.collection_name);
            if (textView != null) {
                i10 = R.id.datetime;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.datetime);
                if (textView2 != null) {
                    i10 = R.id.nickname;
                    NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                    if (nicknameView != null) {
                        i10 = R.id.sticker_count;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.sticker_count);
                        if (textView3 != null) {
                            return new PendingStickerPackItemBinding((LinearLayout) view, nVImageView, textView, textView2, nicknameView, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
