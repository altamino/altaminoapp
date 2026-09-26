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

/* JADX INFO: loaded from: classes8.dex */
public final class DialogSetBubbleHintBinding implements ViewBinding {

    @NonNull
    public final ImageView aminoPlusBadge;

    @NonNull
    public final TextView bubbleName;

    @NonNull
    public final NVImageView bubblePreview;

    @NonNull
    public final TintButton close;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView selectAChat;

    @NonNull
    public final TextView setAllChats;

    @NonNull
    public static DialogSetBubbleHintBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogSetBubbleHintBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_set_bubble_hint, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogSetBubbleHintBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull NVImageView nVImageView, @NonNull TintButton tintButton, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.aminoPlusBadge = imageView;
        this.bubbleName = textView;
        this.bubblePreview = nVImageView;
        this.close = tintButton;
        this.selectAChat = textView2;
        this.setAllChats = textView3;
    }

    @NonNull
    public static DialogSetBubbleHintBinding bind(@NonNull View view) {
        int i10 = R.id.amino_plus_badge;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.amino_plus_badge);
        if (imageView != null) {
            i10 = R.id.bubble_name;
            TextView textView = (TextView) ViewBindings.a(view, R.id.bubble_name);
            if (textView != null) {
                i10 = R.id.bubble_preview;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.bubble_preview);
                if (nVImageView != null) {
                    i10 = R.id.close;
                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.close);
                    if (tintButton != null) {
                        i10 = R.id.select_a_chat;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.select_a_chat);
                        if (textView2 != null) {
                            i10 = R.id.set_all_chats;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.set_all_chats);
                            if (textView3 != null) {
                                return new DialogSetBubbleHintBinding((LinearLayout) view, imageView, textView, nVImageView, tintButton, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
