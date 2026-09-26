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
import com.narvii.chat.ChatMessageItem;
import com.narvii.monetization.bubble.BubbleViewContainer;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.ReversibleLinearLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatStrikeItemBinding implements ViewBinding {

    @NonNull
    public final BubbleViewContainer chatBubbleContainer;

    @NonNull
    public final FontAwesomeView chatResend;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final ChatMessageItem rootView;

    @NonNull
    public final LinearLayout stub1;

    @NonNull
    public final ReversibleLinearLayout stub2;

    @NonNull
    public static ChatStrikeItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ChatMessageItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatStrikeItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_strike_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatStrikeItemBinding(@NonNull ChatMessageItem chatMessageItem, @NonNull BubbleViewContainer bubbleViewContainer, @NonNull FontAwesomeView fontAwesomeView, @NonNull SpinningView spinningView, @NonNull LinearLayout linearLayout, @NonNull ReversibleLinearLayout reversibleLinearLayout) {
        this.rootView = chatMessageItem;
        this.chatBubbleContainer = bubbleViewContainer;
        this.chatResend = fontAwesomeView;
        this.progress = spinningView;
        this.stub1 = linearLayout;
        this.stub2 = reversibleLinearLayout;
    }

    @NonNull
    public static ChatStrikeItemBinding bind(@NonNull View view) {
        int i10 = R.id.chat_bubble_container;
        BubbleViewContainer bubbleViewContainer = (BubbleViewContainer) ViewBindings.a(view, R.id.chat_bubble_container);
        if (bubbleViewContainer != null) {
            i10 = R.id.chat_resend;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.chat_resend);
            if (fontAwesomeView != null) {
                i10 = R.id.progress;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
                if (spinningView != null) {
                    i10 = R.id.stub1;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.stub1);
                    if (linearLayout != null) {
                        i10 = R.id.stub2;
                        ReversibleLinearLayout reversibleLinearLayout = (ReversibleLinearLayout) ViewBindings.a(view, R.id.stub2);
                        if (reversibleLinearLayout != null) {
                            return new ChatStrikeItemBinding((ChatMessageItem) view, bubbleViewContainer, fontAwesomeView, spinningView, linearLayout, reversibleLinearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
