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
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ReversibleLinearLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes11.dex */
public final class FlagResolveChatLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout attachContainer;

    @NonNull
    public final NVImageView attachScreenshot;

    @NonNull
    public final BubbleViewContainer chatBubbleContainer;

    @NonNull
    public final ChatMessageItem chatMessageItem;

    @NonNull
    public final FontAwesomeView chatResend;

    @NonNull
    public final Button chatSeeAll;

    @NonNull
    public final LinearLayout content;

    @NonNull
    public final LinearLayout errorContainer;

    @NonNull
    public final TextView errorMessage;

    @NonNull
    public final FontAwesomeView errorRetry;

    @NonNull
    public final TextView hostLabel;

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final TextView messageDate;

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

    private FlagResolveChatLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull BubbleViewContainer bubbleViewContainer, @NonNull ChatMessageItem chatMessageItem, @NonNull FontAwesomeView fontAwesomeView, @NonNull Button button, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull FontAwesomeView fontAwesomeView2, @NonNull TextView textView2, @NonNull FrameLayout frameLayout2, @NonNull TextView textView3, @NonNull NicknameView nicknameView, @NonNull SpinningView spinningView, @NonNull SpinningView spinningView2, @NonNull LinearLayout linearLayout4, @NonNull ReversibleLinearLayout reversibleLinearLayout) {
        this.rootView = frameLayout;
        this.attachContainer = linearLayout;
        this.attachScreenshot = nVImageView;
        this.chatBubbleContainer = bubbleViewContainer;
        this.chatMessageItem = chatMessageItem;
        this.chatResend = fontAwesomeView;
        this.chatSeeAll = button;
        this.content = linearLayout2;
        this.errorContainer = linearLayout3;
        this.errorMessage = textView;
        this.errorRetry = fontAwesomeView2;
        this.hostLabel = textView2;
        this.listFrame = frameLayout2;
        this.messageDate = textView3;
        this.nickname = nicknameView;
        this.progress = spinningView;
        this.progress1 = spinningView2;
        this.stub1 = linearLayout4;
        this.stub2 = reversibleLinearLayout;
    }

    @NonNull
    public static FlagResolveChatLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagResolveChatLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.attach_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.attach_container);
        if (linearLayout != null) {
            i10 = R.id.attach_screenshot;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.attach_screenshot);
            if (nVImageView != null) {
                i10 = R.id.chat_bubble_container;
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
                                i10 = R.id.content;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.content);
                                if (linearLayout2 != null) {
                                    i10 = R.id.error_container;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.error_container);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.error_message;
                                        TextView textView = (TextView) ViewBindings.a(view, R.id.error_message);
                                        if (textView != null) {
                                            i10 = R.id.error_retry;
                                            FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, R.id.error_retry);
                                            if (fontAwesomeView2 != null) {
                                                i10 = R.id.host_label;
                                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.host_label);
                                                if (textView2 != null) {
                                                    FrameLayout frameLayout = (FrameLayout) view;
                                                    i10 = R.id.message_date;
                                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.message_date);
                                                    if (textView3 != null) {
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
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.stub1);
                                                                    if (linearLayout4 != null) {
                                                                        i10 = R.id.stub2;
                                                                        ReversibleLinearLayout reversibleLinearLayout = (ReversibleLinearLayout) ViewBindings.a(view, R.id.stub2);
                                                                        if (reversibleLinearLayout != null) {
                                                                            return new FlagResolveChatLayoutBinding(frameLayout, linearLayout, nVImageView, bubbleViewContainer, chatMessageItem, fontAwesomeView, button, linearLayout2, linearLayout3, textView, fontAwesomeView2, textView2, frameLayout, textView3, nicknameView, spinningView, spinningView2, linearLayout4, reversibleLinearLayout);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FlagResolveChatLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_resolve_chat_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
