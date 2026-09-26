package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemSnippetChatThreadBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final TextView memberCount;

    @NonNull
    public final LinearLayout memberCountLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemSnippetChatThreadBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSnippetChatThreadBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_snippet_chat_thread, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSnippetChatThreadBinding(@NonNull FrameLayout frameLayout, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.image = thumbImageView;
        this.memberCount = textView;
        this.memberCountLayout = linearLayout;
        this.title = textView2;
    }

    @NonNull
    public static ItemSnippetChatThreadBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
        if (thumbImageView != null) {
            i10 = R.id.member_count;
            TextView textView = (TextView) ViewBindings.a(view, R.id.member_count);
            if (textView != null) {
                i10 = R.id.member_count_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.member_count_layout);
                if (linearLayout != null) {
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView2 != null) {
                        return new ItemSnippetChatThreadBinding((FrameLayout) view, thumbImageView, textView, linearLayout, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
