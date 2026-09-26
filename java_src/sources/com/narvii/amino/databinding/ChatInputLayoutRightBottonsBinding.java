package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.input.ChatInputPanelVoiceButton;
import com.narvii.chat.video.view.CheckableImageView;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.PressedFrameLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatInputLayoutRightBottonsBinding implements ViewBinding {

    @NonNull
    public final LinearLayout chatRightButtonContainer;

    @NonNull
    public final FrameLayout endView;

    @NonNull
    public final LinearLayout joinButton;

    @NonNull
    public final ImageView joinIcon;

    @NonNull
    public final SpinningView joinLoading;

    @NonNull
    public final AutoSizingTextView joinText;

    @NonNull
    public final FrameLayout joinView;

    @NonNull
    public final FrameLayout menuView;

    @NonNull
    public final CheckableImageView muteButton;

    @NonNull
    public final FrameLayout muteView;

    @NonNull
    public final FrameLayout requestView;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final PressedFrameLayout tipView;

    @NonNull
    public final ChatInputPanelVoiceButton voiceButton;

    @NonNull
    public final FrameLayout voiceView;

    @NonNull
    public final AutoSizingTextView waitingMemberCount;

    private ChatInputLayoutRightBottonsBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull SpinningView spinningView, @NonNull AutoSizingTextView autoSizingTextView, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull CheckableImageView checkableImageView, @NonNull FrameLayout frameLayout4, @NonNull FrameLayout frameLayout5, @NonNull PressedFrameLayout pressedFrameLayout, @NonNull ChatInputPanelVoiceButton chatInputPanelVoiceButton, @NonNull FrameLayout frameLayout6, @NonNull AutoSizingTextView autoSizingTextView2) {
        this.rootView = linearLayout;
        this.chatRightButtonContainer = linearLayout2;
        this.endView = frameLayout;
        this.joinButton = linearLayout3;
        this.joinIcon = imageView;
        this.joinLoading = spinningView;
        this.joinText = autoSizingTextView;
        this.joinView = frameLayout2;
        this.menuView = frameLayout3;
        this.muteButton = checkableImageView;
        this.muteView = frameLayout4;
        this.requestView = frameLayout5;
        this.tipView = pressedFrameLayout;
        this.voiceButton = chatInputPanelVoiceButton;
        this.voiceView = frameLayout6;
        this.waitingMemberCount = autoSizingTextView2;
    }

    @NonNull
    public static ChatInputLayoutRightBottonsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatInputLayoutRightBottonsBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.end_view;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.end_view);
        if (frameLayout != null) {
            i10 = R.id.join_button;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.join_button);
            if (linearLayout2 != null) {
                i10 = R.id.join_icon;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.join_icon);
                if (imageView != null) {
                    i10 = R.id.join_loading;
                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.join_loading);
                    if (spinningView != null) {
                        i10 = R.id.join_text;
                        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.join_text);
                        if (autoSizingTextView != null) {
                            i10 = R.id.join_view;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.join_view);
                            if (frameLayout2 != null) {
                                i10 = R.id.menu_view;
                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.menu_view);
                                if (frameLayout3 != null) {
                                    i10 = R.id.mute_button;
                                    CheckableImageView checkableImageView = (CheckableImageView) ViewBindings.a(view, R.id.mute_button);
                                    if (checkableImageView != null) {
                                        i10 = R.id.mute_view;
                                        FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(view, R.id.mute_view);
                                        if (frameLayout4 != null) {
                                            i10 = R.id.request_view;
                                            FrameLayout frameLayout5 = (FrameLayout) ViewBindings.a(view, R.id.request_view);
                                            if (frameLayout5 != null) {
                                                i10 = R.id.tip_view;
                                                PressedFrameLayout pressedFrameLayout = (PressedFrameLayout) ViewBindings.a(view, R.id.tip_view);
                                                if (pressedFrameLayout != null) {
                                                    i10 = R.id.voice_button;
                                                    ChatInputPanelVoiceButton chatInputPanelVoiceButton = (ChatInputPanelVoiceButton) ViewBindings.a(view, R.id.voice_button);
                                                    if (chatInputPanelVoiceButton != null) {
                                                        i10 = R.id.voice_view;
                                                        FrameLayout frameLayout6 = (FrameLayout) ViewBindings.a(view, R.id.voice_view);
                                                        if (frameLayout6 != null) {
                                                            i10 = R.id.waiting_member_count;
                                                            AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.waiting_member_count);
                                                            if (autoSizingTextView2 != null) {
                                                                return new ChatInputLayoutRightBottonsBinding(linearLayout, linearLayout, frameLayout, linearLayout2, imageView, spinningView, autoSizingTextView, frameLayout2, frameLayout3, checkableImageView, frameLayout4, frameLayout5, pressedFrameLayout, chatInputPanelVoiceButton, frameLayout6, autoSizingTextView2);
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
    public static ChatInputLayoutRightBottonsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_input_layout_right_bottons, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
