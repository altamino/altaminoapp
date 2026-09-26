package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemRecentChatHangoutBinding implements ViewBinding {

    @NonNull
    public final View chatThreadUnread;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemRecentChatHangoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemRecentChatHangoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_recent_chat_hangout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemRecentChatHangoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.chatThreadUnread = view;
        this.image = thumbImageView;
        this.title = textView;
    }

    @NonNull
    public static ItemRecentChatHangoutBinding bind(@NonNull View view) {
        int i10 = R.id.chat_thread_unread;
        View viewA = ViewBindings.a(view, R.id.chat_thread_unread);
        if (viewA != null) {
            i10 = R.id.image;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
            if (thumbImageView != null) {
                i10 = R.id.title;
                TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                if (textView != null) {
                    return new ItemRecentChatHangoutBinding((RelativeLayout) view, viewA, thumbImageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
