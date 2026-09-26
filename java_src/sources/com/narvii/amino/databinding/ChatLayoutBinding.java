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
import com.narvii.chat.ChatContentContainer;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.PressedFrameLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatLayoutBinding implements ViewBinding {

    @NonNull
    public final View chatActionbarOverlay;

    @NonNull
    public final FrameLayout chatBeautyChooser;

    @NonNull
    public final FrameLayout chatBgFrame;

    @NonNull
    public final FrameLayout chatBottomContainer;

    @NonNull
    public final View chatInputDismissMask;

    @NonNull
    public final FrameLayout chatInputFrame;

    @NonNull
    public final ChatInputOptionMenuBinding chatInputOptionMenuView;

    @NonNull
    public final FrameLayout chatInvitationFrame;

    @NonNull
    public final FrameLayout chatListFrame;

    @NonNull
    public final FrameLayout chatListFrameBg;

    @NonNull
    public final FrameLayout chatOrganizerTransFrame;

    @NonNull
    public final FrameLayout chatPropPicker;

    @NonNull
    public final AutoSizingTextView disabledBar;

    @NonNull
    public final LinearLayout disabledLayout;

    @NonNull
    public final FrameLayout fansOnlyMask;

    @NonNull
    public final TextView leaveConversation;

    @NonNull
    public final FrameLayout mentionedUserList;

    @NonNull
    public final FrameLayout organizerLeft;

    @NonNull
    public final ChatContentContainer root;

    @NonNull
    private final ChatContentContainer rootView;

    @NonNull
    public final FrameLayout screenRoomPlaylist;

    @NonNull
    public final FrameLayout tipBroadcastLayout;

    @NonNull
    public final PressedFrameLayout tipLayout;

    @NonNull
    public final AutoSizingTextView tippingCount;

    @NonNull
    public final FrameLayout vvChatFrame;

    @NonNull
    public final LinearLayout vvChatFrameContainer;

    @NonNull
    public final OverlayListPlaceholder vvChatOverlayListPlaceholder;

    private ChatLayoutBinding(@NonNull ChatContentContainer chatContentContainer, @NonNull View view, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull View view2, @NonNull FrameLayout frameLayout4, @NonNull ChatInputOptionMenuBinding chatInputOptionMenuBinding, @NonNull FrameLayout frameLayout5, @NonNull FrameLayout frameLayout6, @NonNull FrameLayout frameLayout7, @NonNull FrameLayout frameLayout8, @NonNull FrameLayout frameLayout9, @NonNull AutoSizingTextView autoSizingTextView, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout10, @NonNull TextView textView, @NonNull FrameLayout frameLayout11, @NonNull FrameLayout frameLayout12, @NonNull ChatContentContainer chatContentContainer2, @NonNull FrameLayout frameLayout13, @NonNull FrameLayout frameLayout14, @NonNull PressedFrameLayout pressedFrameLayout, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull FrameLayout frameLayout15, @NonNull LinearLayout linearLayout2, @NonNull OverlayListPlaceholder overlayListPlaceholder) {
        this.rootView = chatContentContainer;
        this.chatActionbarOverlay = view;
        this.chatBeautyChooser = frameLayout;
        this.chatBgFrame = frameLayout2;
        this.chatBottomContainer = frameLayout3;
        this.chatInputDismissMask = view2;
        this.chatInputFrame = frameLayout4;
        this.chatInputOptionMenuView = chatInputOptionMenuBinding;
        this.chatInvitationFrame = frameLayout5;
        this.chatListFrame = frameLayout6;
        this.chatListFrameBg = frameLayout7;
        this.chatOrganizerTransFrame = frameLayout8;
        this.chatPropPicker = frameLayout9;
        this.disabledBar = autoSizingTextView;
        this.disabledLayout = linearLayout;
        this.fansOnlyMask = frameLayout10;
        this.leaveConversation = textView;
        this.mentionedUserList = frameLayout11;
        this.organizerLeft = frameLayout12;
        this.root = chatContentContainer2;
        this.screenRoomPlaylist = frameLayout13;
        this.tipBroadcastLayout = frameLayout14;
        this.tipLayout = pressedFrameLayout;
        this.tippingCount = autoSizingTextView2;
        this.vvChatFrame = frameLayout15;
        this.vvChatFrameContainer = linearLayout2;
        this.vvChatOverlayListPlaceholder = overlayListPlaceholder;
    }

    @NonNull
    public static ChatLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ChatContentContainer getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.chat_actionbar_overlay;
        View viewA = ViewBindings.a(view, R.id.chat_actionbar_overlay);
        if (viewA != null) {
            i10 = R.id.chat_beauty_chooser;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.chat_beauty_chooser);
            if (frameLayout != null) {
                i10 = R.id.chat_bg_frame;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.chat_bg_frame);
                if (frameLayout2 != null) {
                    i10 = R.id.chat_bottom_container;
                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.chat_bottom_container);
                    if (frameLayout3 != null) {
                        i10 = R.id.chat_input_dismiss_mask;
                        View viewA2 = ViewBindings.a(view, R.id.chat_input_dismiss_mask);
                        if (viewA2 != null) {
                            i10 = R.id.chat_input_frame;
                            FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(view, R.id.chat_input_frame);
                            if (frameLayout4 != null) {
                                i10 = R.id.chat_input_option_menu_view;
                                View viewA3 = ViewBindings.a(view, R.id.chat_input_option_menu_view);
                                if (viewA3 != null) {
                                    ChatInputOptionMenuBinding chatInputOptionMenuBindingBind = ChatInputOptionMenuBinding.bind(viewA3);
                                    i10 = R.id.chat_invitation_frame;
                                    FrameLayout frameLayout5 = (FrameLayout) ViewBindings.a(view, R.id.chat_invitation_frame);
                                    if (frameLayout5 != null) {
                                        i10 = R.id.chat_list_frame;
                                        FrameLayout frameLayout6 = (FrameLayout) ViewBindings.a(view, R.id.chat_list_frame);
                                        if (frameLayout6 != null) {
                                            i10 = R.id.chat_list_frame_bg;
                                            FrameLayout frameLayout7 = (FrameLayout) ViewBindings.a(view, R.id.chat_list_frame_bg);
                                            if (frameLayout7 != null) {
                                                i10 = R.id.chat_organizer_trans_frame;
                                                FrameLayout frameLayout8 = (FrameLayout) ViewBindings.a(view, R.id.chat_organizer_trans_frame);
                                                if (frameLayout8 != null) {
                                                    i10 = R.id.chat_prop_picker;
                                                    FrameLayout frameLayout9 = (FrameLayout) ViewBindings.a(view, R.id.chat_prop_picker);
                                                    if (frameLayout9 != null) {
                                                        i10 = R.id.disabled_bar;
                                                        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.disabled_bar);
                                                        if (autoSizingTextView != null) {
                                                            i10 = R.id.disabled_layout;
                                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.disabled_layout);
                                                            if (linearLayout != null) {
                                                                i10 = R.id.fans_only_mask;
                                                                FrameLayout frameLayout10 = (FrameLayout) ViewBindings.a(view, R.id.fans_only_mask);
                                                                if (frameLayout10 != null) {
                                                                    i10 = R.id.leave_conversation;
                                                                    TextView textView = (TextView) ViewBindings.a(view, R.id.leave_conversation);
                                                                    if (textView != null) {
                                                                        i10 = R.id.mentioned_user_list;
                                                                        FrameLayout frameLayout11 = (FrameLayout) ViewBindings.a(view, R.id.mentioned_user_list);
                                                                        if (frameLayout11 != null) {
                                                                            i10 = R.id.organizer_left;
                                                                            FrameLayout frameLayout12 = (FrameLayout) ViewBindings.a(view, R.id.organizer_left);
                                                                            if (frameLayout12 != null) {
                                                                                ChatContentContainer chatContentContainer = (ChatContentContainer) view;
                                                                                i10 = R.id.screen_room_playlist;
                                                                                FrameLayout frameLayout13 = (FrameLayout) ViewBindings.a(view, R.id.screen_room_playlist);
                                                                                if (frameLayout13 != null) {
                                                                                    i10 = R.id.tip_broadcast_layout;
                                                                                    FrameLayout frameLayout14 = (FrameLayout) ViewBindings.a(view, R.id.tip_broadcast_layout);
                                                                                    if (frameLayout14 != null) {
                                                                                        i10 = R.id.tip_layout;
                                                                                        PressedFrameLayout pressedFrameLayout = (PressedFrameLayout) ViewBindings.a(view, R.id.tip_layout);
                                                                                        if (pressedFrameLayout != null) {
                                                                                            i10 = R.id.tipping_count;
                                                                                            AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.tipping_count);
                                                                                            if (autoSizingTextView2 != null) {
                                                                                                i10 = R.id.vv_chat_frame;
                                                                                                FrameLayout frameLayout15 = (FrameLayout) ViewBindings.a(view, R.id.vv_chat_frame);
                                                                                                if (frameLayout15 != null) {
                                                                                                    i10 = R.id.vv_chat_frame_container;
                                                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.vv_chat_frame_container);
                                                                                                    if (linearLayout2 != null) {
                                                                                                        i10 = R.id.vv_chat_overlay_list_placeholder;
                                                                                                        OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.vv_chat_overlay_list_placeholder);
                                                                                                        if (overlayListPlaceholder != null) {
                                                                                                            return new ChatLayoutBinding(chatContentContainer, viewA, frameLayout, frameLayout2, frameLayout3, viewA2, frameLayout4, chatInputOptionMenuBindingBind, frameLayout5, frameLayout6, frameLayout7, frameLayout8, frameLayout9, autoSizingTextView, linearLayout, frameLayout10, textView, frameLayout11, frameLayout12, chatContentContainer, frameLayout13, frameLayout14, pressedFrameLayout, autoSizingTextView2, frameLayout15, linearLayout2, overlayListPlaceholder);
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
    public static ChatLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
