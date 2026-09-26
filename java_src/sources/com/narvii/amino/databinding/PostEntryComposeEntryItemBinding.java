package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.post.entry.ComposeEntryItem;
import com.narvii.widget.PopButton;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class PostEntryComposeEntryItemBinding implements ViewBinding {

    @NonNull
    public final TintButton levelLock;

    @NonNull
    public final TextView levelNo;

    @NonNull
    public final ImageView plusIcon;

    @NonNull
    public final PopButton postIcon;

    @NonNull
    public final TextView postLabel;

    @NonNull
    private final ComposeEntryItem rootView;

    @NonNull
    public static PostEntryComposeEntryItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ComposeEntryItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostEntryComposeEntryItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_entry_compose_entry_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostEntryComposeEntryItemBinding(@NonNull ComposeEntryItem composeEntryItem, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull PopButton popButton, @NonNull TextView textView2) {
        this.rootView = composeEntryItem;
        this.levelLock = tintButton;
        this.levelNo = textView;
        this.plusIcon = imageView;
        this.postIcon = popButton;
        this.postLabel = textView2;
    }

    @NonNull
    public static PostEntryComposeEntryItemBinding bind(@NonNull View view) {
        int i10 = R.id.level_lock;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.level_lock);
        if (tintButton != null) {
            i10 = R.id.level_no;
            TextView textView = (TextView) ViewBindings.a(view, R.id.level_no);
            if (textView != null) {
                i10 = R.id.plus_icon;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.plus_icon);
                if (imageView != null) {
                    i10 = R.id.post_icon;
                    PopButton popButton = (PopButton) ViewBindings.a(view, R.id.post_icon);
                    if (popButton != null) {
                        i10 = R.id.post_label;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.post_label);
                        if (textView2 != null) {
                            return new PostEntryComposeEntryItemBinding((ComposeEntryItem) view, tintButton, textView, imageView, popButton, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
