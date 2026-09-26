package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class DialogSetAvatarFrameHintBinding implements ViewBinding {

    @NonNull
    public final ImageView aminoPlusBadge;

    @NonNull
    public final TintButton close;

    @NonNull
    public final TextView itemName;

    @NonNull
    public final NVImageView itemPreview;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView setForAllAmino;

    @NonNull
    public final TextView setForThisAmino;

    @NonNull
    public static DialogSetAvatarFrameHintBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogSetAvatarFrameHintBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_set_avatar_frame_hint, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogSetAvatarFrameHintBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull NVImageView nVImageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.aminoPlusBadge = imageView;
        this.close = tintButton;
        this.itemName = textView;
        this.itemPreview = nVImageView;
        this.setForAllAmino = textView2;
        this.setForThisAmino = textView3;
    }

    @NonNull
    public static DialogSetAvatarFrameHintBinding bind(@NonNull View view) {
        int i10 = R.id.amino_plus_badge;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.amino_plus_badge);
        if (imageView != null) {
            i10 = R.id.close;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.close);
            if (tintButton != null) {
                i10 = R.id.item_name;
                TextView textView = (TextView) ViewBindings.a(view, R.id.item_name);
                if (textView != null) {
                    i10 = R.id.item_preview;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.item_preview);
                    if (nVImageView != null) {
                        i10 = R.id.set_for_all_amino;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.set_for_all_amino);
                        if (textView2 != null) {
                            i10 = R.id.set_for_this_amino;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.set_for_this_amino);
                            if (textView3 != null) {
                                return new DialogSetAvatarFrameHintBinding((LinearLayout) view, imageView, tintButton, textView, nVImageView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
