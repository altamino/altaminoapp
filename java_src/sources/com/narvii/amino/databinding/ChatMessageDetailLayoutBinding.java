package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatMessageItem;
import com.narvii.monetization.bubble.BubbleViewContainer;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ReversibleLinearLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatMessageDetailLayoutBinding implements ViewBinding {

    @NonNull
    public final BubbleViewContainer chatBubbleContainer;

    @NonNull
    public final ChatMessageItem chatMessageItem;

    @NonNull
    public final FontAwesomeView chatResend;

    @NonNull
    public final Button chatSeeAll;

    @NonNull
    public final View chatSeeAllDivider;

    @NonNull
    public final LinearLayout content;

    @NonNull
    public final LinearLayout errorContainer;

    @NonNull
    public final TextView errorMessage;

    @NonNull
    public final FontAwesomeView errorRetry;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final SpinningView progress;

    @NonNull
    public final SpinningView progress1;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final LinearLayout stub1;

    @NonNull
    public final ReversibleLinearLayout stub2;

    @NonNull
    public static ChatMessageDetailLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatMessageDetailLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.chat_bubble_container;
        BubbleViewContainer bubbleViewContainer = (BubbleViewContainer) ViewBindings.a(view, R.id.chat_bubble_container);
        if (bubbleViewContainer != null) {
            i10 = R.id.chat_message_item;
            ChatMessageItem chatMessageItem = (ChatMessageItem) ViewBindings.a(view, R.id.chat_message_item);
            if (chatMessageItem != null) {
                i10 = R.id.chat_resend;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.chat_resend);
                if (fontAwesomeView != null) {
                    i10 = R.id.chat_see_all;
                    Button button = (Button) ViewBindings.a(view, R.id.chat_see_all);
                    if (button != null) {
                        i10 = R.id.chat_see_all_divider;
                        View viewA = ViewBindings.a(view, R.id.chat_see_all_divider);
                        if (viewA != null) {
                            i10 = R.id.content;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.content);
                            if (linearLayout != null) {
                                i10 = R.id.error_container;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.error_container);
                                if (linearLayout2 != null) {
                                    i10 = R.id.error_message;
                                    TextView textView = (TextView) ViewBindings.a(view, R.id.error_message);
                                    if (textView != null) {
                                        i10 = R.id.error_retry;
                                        FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, R.id.error_retry);
                                        if (fontAwesomeView2 != null) {
                                            i10 = R.id.nickname;
                                            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                                            if (nicknameView != null) {
                                                i10 = R.id.progress;
                                                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
                                                if (spinningView != null) {
                                                    i10 = android.R.id.progress;
                                                    SpinningView spinningView2 = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                                                    if (spinningView2 != null) {
                                                        i10 = R.id.stub1;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.stub1);
                                                        if (linearLayout3 != null) {
                                                            i10 = R.id.stub2;
                                                            ReversibleLinearLayout reversibleLinearLayout = (ReversibleLinearLayout) ViewBindings.a(view, R.id.stub2);
                                                            if (reversibleLinearLayout != null) {
                                                                return new ChatMessageDetailLayoutBinding((FrameLayout) view, bubbleViewContainer, chatMessageItem, fontAwesomeView, button, viewA, linearLayout, linearLayout2, textView, fontAwesomeView2, nicknameView, spinningView, spinningView2, linearLayout3, reversibleLinearLayout);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ChatMessageDetailLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_message_detail_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatMessageDetailLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull BubbleViewContainer bubbleViewContainer, @NonNull ChatMessageItem chatMessageItem, @NonNull FontAwesomeView fontAwesomeView, @NonNull Button button, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull FontAwesomeView fontAwesomeView2, @NonNull NicknameView nicknameView, @NonNull SpinningView spinningView, @NonNull SpinningView spinningView2, @NonNull LinearLayout linearLayout3, @NonNull ReversibleLinearLayout reversibleLinearLayout) {
        this.rootView = frameLayout;
        this.chatBubbleContainer = bubbleViewContainer;
        this.chatMessageItem = chatMessageItem;
        this.chatResend = fontAwesomeView;
        this.chatSeeAll = button;
        this.chatSeeAllDivider = view;
        this.content = linearLayout;
        this.errorContainer = linearLayout2;
        this.errorMessage = textView;
        this.errorRetry = fontAwesomeView2;
        this.nickname = nicknameView;
        this.progress = spinningView;
        this.progress1 = spinningView2;
        this.stub1 = linearLayout3;
        this.stub2 = reversibleLinearLayout;
    }
}
