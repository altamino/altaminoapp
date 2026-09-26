package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatInputRootLayout;
import com.narvii.chat.ChatReplyLayout;
import com.narvii.chat.audio.AudioBoardLayout;
import com.narvii.chat.audio.AudioRecordLayout;
import com.narvii.chat.audio.AudioVolumeRippleView;
import com.narvii.chat.input.ChatInputPanelSwitcherButton;
import com.narvii.chat.input.ChatInputRightViewContainer;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.chat.video.view.CheckableImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class ChatInputLayoutNewBinding implements ViewBinding {

    @NonNull
    public final FrameLayout audioRecord;

    @NonNull
    public final AudioRecordLayout audioRecordLayout;

    @NonNull
    public final TintButton chatAdd;

    @NonNull
    public final FrameLayout chatAddButton;

    @NonNull
    public final Button chatButton;

    @NonNull
    public final LinearLayout chatButtons;

    @NonNull
    public final MentionedEditText chatEdit;

    @NonNull
    public final RealtimeBlurView chatInputBlur;

    @NonNull
    public final RelativeLayout chatInputMain;

    @NonNull
    public final ChatInputRightViewContainer chatRightButtonContainer;

    @NonNull
    public final TintButton chatSend;

    @NonNull
    public final FrameLayout chatSendContainer;

    @NonNull
    public final FrameLayout chatStickerButton;

    @NonNull
    public final TextView holdToTalk;

    @NonNull
    public final CheckableImageView muteButton;

    @NonNull
    public final FrameLayout panelLayout;

    @NonNull
    public final View recordBg;

    @NonNull
    public final ImageView recordIcon;

    @NonNull
    public final View recordIndicator;

    @NonNull
    public final TextView recordTime;

    @NonNull
    public final LinearLayout recordTimeLayout;

    @NonNull
    public final TextView releaseToDelete;

    @NonNull
    public final TextView releaseToSend;

    @NonNull
    public final FlexLayout removeBin;

    @NonNull
    public final ChatReplyLayout replyLayout;

    @NonNull
    public final FrameLayout replyMain;

    @NonNull
    private final ChatInputRootLayout rootView;

    @NonNull
    public final TextView slideDownToDelete;

    @NonNull
    public final ImageView srInput;

    @NonNull
    public final FrameLayout srInputContainer;

    @NonNull
    public final LinearLayout srLandscapeButtons;

    @NonNull
    public final FrameLayout srMuteView;

    @NonNull
    public final ChatInputPanelSwitcherButton stickerButton;

    @NonNull
    public final FrameLayout stickerPanel;

    @NonNull
    public final TextView typingUser;

    @NonNull
    public final FrameLayout typingUserContainer;

    @NonNull
    public final Button viewOnlyButton;

    @NonNull
    public final AudioBoardLayout voiceBoardLayout;

    @NonNull
    public final TextView voiceBoardToast;

    @NonNull
    public final AudioVolumeRippleView volumeRipple;

    private ChatInputLayoutNewBinding(@NonNull ChatInputRootLayout chatInputRootLayout, @NonNull FrameLayout frameLayout, @NonNull AudioRecordLayout audioRecordLayout, @NonNull TintButton tintButton, @NonNull FrameLayout frameLayout2, @NonNull Button button, @NonNull LinearLayout linearLayout, @NonNull MentionedEditText mentionedEditText, @NonNull RealtimeBlurView realtimeBlurView, @NonNull RelativeLayout relativeLayout, @NonNull ChatInputRightViewContainer chatInputRightViewContainer, @NonNull TintButton tintButton2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull TextView textView, @NonNull CheckableImageView checkableImageView, @NonNull FrameLayout frameLayout5, @NonNull View view, @NonNull ImageView imageView, @NonNull View view2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull FlexLayout flexLayout, @NonNull ChatReplyLayout chatReplyLayout, @NonNull FrameLayout frameLayout6, @NonNull TextView textView5, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout7, @NonNull LinearLayout linearLayout3, @NonNull FrameLayout frameLayout8, @NonNull ChatInputPanelSwitcherButton chatInputPanelSwitcherButton, @NonNull FrameLayout frameLayout9, @NonNull TextView textView6, @NonNull FrameLayout frameLayout10, @NonNull Button button2, @NonNull AudioBoardLayout audioBoardLayout, @NonNull TextView textView7, @NonNull AudioVolumeRippleView audioVolumeRippleView) {
        this.rootView = chatInputRootLayout;
        this.audioRecord = frameLayout;
        this.audioRecordLayout = audioRecordLayout;
        this.chatAdd = tintButton;
        this.chatAddButton = frameLayout2;
        this.chatButton = button;
        this.chatButtons = linearLayout;
        this.chatEdit = mentionedEditText;
        this.chatInputBlur = realtimeBlurView;
        this.chatInputMain = relativeLayout;
        this.chatRightButtonContainer = chatInputRightViewContainer;
        this.chatSend = tintButton2;
        this.chatSendContainer = frameLayout3;
        this.chatStickerButton = frameLayout4;
        this.holdToTalk = textView;
        this.muteButton = checkableImageView;
        this.panelLayout = frameLayout5;
        this.recordBg = view;
        this.recordIcon = imageView;
        this.recordIndicator = view2;
        this.recordTime = textView2;
        this.recordTimeLayout = linearLayout2;
        this.releaseToDelete = textView3;
        this.releaseToSend = textView4;
        this.removeBin = flexLayout;
        this.replyLayout = chatReplyLayout;
        this.replyMain = frameLayout6;
        this.slideDownToDelete = textView5;
        this.srInput = imageView2;
        this.srInputContainer = frameLayout7;
        this.srLandscapeButtons = linearLayout3;
        this.srMuteView = frameLayout8;
        this.stickerButton = chatInputPanelSwitcherButton;
        this.stickerPanel = frameLayout9;
        this.typingUser = textView6;
        this.typingUserContainer = frameLayout10;
        this.viewOnlyButton = button2;
        this.voiceBoardLayout = audioBoardLayout;
        this.voiceBoardToast = textView7;
        this.volumeRipple = audioVolumeRippleView;
    }

    @NonNull
    public static ChatInputLayoutNewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ChatInputRootLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatInputLayoutNewBinding bind(@NonNull View view) {
        int i10 = R.id.audio_record;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.audio_record);
        if (frameLayout != null) {
            i10 = R.id.audio_record_layout;
            AudioRecordLayout audioRecordLayout = (AudioRecordLayout) ViewBindings.a(view, R.id.audio_record_layout);
            if (audioRecordLayout != null) {
                i10 = R.id.chat_add;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.chat_add);
                if (tintButton != null) {
                    i10 = R.id.chat_add_button;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.chat_add_button);
                    if (frameLayout2 != null) {
                        i10 = R.id.chat_button;
                        Button button = (Button) ViewBindings.a(view, R.id.chat_button);
                        if (button != null) {
                            i10 = R.id.chat_buttons;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.chat_buttons);
                            if (linearLayout != null) {
                                i10 = R.id.chat_edit;
                                MentionedEditText mentionedEditText = (MentionedEditText) ViewBindings.a(view, R.id.chat_edit);
                                if (mentionedEditText != null) {
                                    i10 = R.id.chat_input_blur;
                                    RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.chat_input_blur);
                                    if (realtimeBlurView != null) {
                                        i10 = R.id.chat_input_main;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.chat_input_main);
                                        if (relativeLayout != null) {
                                            i10 = R.id.chat_right_button_container;
                                            ChatInputRightViewContainer chatInputRightViewContainer = (ChatInputRightViewContainer) ViewBindings.a(view, R.id.chat_right_button_container);
                                            if (chatInputRightViewContainer != null) {
                                                i10 = R.id.chat_send;
                                                TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.chat_send);
                                                if (tintButton2 != null) {
                                                    i10 = R.id.chat_send_container;
                                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.chat_send_container);
                                                    if (frameLayout3 != null) {
                                                        i10 = R.id.chat_sticker_button;
                                                        FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(view, R.id.chat_sticker_button);
                                                        if (frameLayout4 != null) {
                                                            i10 = R.id.hold_to_talk;
                                                            TextView textView = (TextView) ViewBindings.a(view, R.id.hold_to_talk);
                                                            if (textView != null) {
                                                                i10 = R.id.mute_button;
                                                                CheckableImageView checkableImageView = (CheckableImageView) ViewBindings.a(view, R.id.mute_button);
                                                                if (checkableImageView != null) {
                                                                    i10 = R.id.panel_layout;
                                                                    FrameLayout frameLayout5 = (FrameLayout) ViewBindings.a(view, R.id.panel_layout);
                                                                    if (frameLayout5 != null) {
                                                                        i10 = R.id.record_bg;
                                                                        View viewA = ViewBindings.a(view, R.id.record_bg);
                                                                        if (viewA != null) {
                                                                            i10 = R.id.record_icon;
                                                                            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.record_icon);
                                                                            if (imageView != null) {
                                                                                i10 = R.id.record_indicator;
                                                                                View viewA2 = ViewBindings.a(view, R.id.record_indicator);
                                                                                if (viewA2 != null) {
                                                                                    i10 = R.id.record_time;
                                                                                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.record_time);
                                                                                    if (textView2 != null) {
                                                                                        i10 = R.id.record_time_layout;
                                                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.record_time_layout);
                                                                                        if (linearLayout2 != null) {
                                                                                            i10 = R.id.release_to_delete;
                                                                                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.release_to_delete);
                                                                                            if (textView3 != null) {
                                                                                                i10 = R.id.release_to_send;
                                                                                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.release_to_send);
                                                                                                if (textView4 != null) {
                                                                                                    i10 = R.id.remove_bin;
                                                                                                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.remove_bin);
                                                                                                    if (flexLayout != null) {
                                                                                                        i10 = R.id.reply_layout;
                                                                                                        ChatReplyLayout chatReplyLayout = (ChatReplyLayout) ViewBindings.a(view, R.id.reply_layout);
                                                                                                        if (chatReplyLayout != null) {
                                                                                                            i10 = R.id.reply_main;
                                                                                                            FrameLayout frameLayout6 = (FrameLayout) ViewBindings.a(view, R.id.reply_main);
                                                                                                            if (frameLayout6 != null) {
                                                                                                                i10 = R.id.slide_down_to_delete;
                                                                                                                TextView textView5 = (TextView) ViewBindings.a(view, R.id.slide_down_to_delete);
                                                                                                                if (textView5 != null) {
                                                                                                                    i10 = R.id.sr_input;
                                                                                                                    ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.sr_input);
                                                                                                                    if (imageView2 != null) {
                                                                                                                        i10 = R.id.sr_input_container;
                                                                                                                        FrameLayout frameLayout7 = (FrameLayout) ViewBindings.a(view, R.id.sr_input_container);
                                                                                                                        if (frameLayout7 != null) {
                                                                                                                            i10 = R.id.sr_landscape_buttons;
                                                                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.sr_landscape_buttons);
                                                                                                                            if (linearLayout3 != null) {
                                                                                                                                i10 = R.id.sr_mute_view;
                                                                                                                                FrameLayout frameLayout8 = (FrameLayout) ViewBindings.a(view, R.id.sr_mute_view);
                                                                                                                                if (frameLayout8 != null) {
                                                                                                                                    i10 = R.id.sticker_button;
                                                                                                                                    ChatInputPanelSwitcherButton chatInputPanelSwitcherButton = (ChatInputPanelSwitcherButton) ViewBindings.a(view, R.id.sticker_button);
                                                                                                                                    if (chatInputPanelSwitcherButton != null) {
                                                                                                                                        i10 = R.id.sticker_panel;
                                                                                                                                        FrameLayout frameLayout9 = (FrameLayout) ViewBindings.a(view, R.id.sticker_panel);
                                                                                                                                        if (frameLayout9 != null) {
                                                                                                                                            i10 = R.id.typing_user;
                                                                                                                                            TextView textView6 = (TextView) ViewBindings.a(view, R.id.typing_user);
                                                                                                                                            if (textView6 != null) {
                                                                                                                                                i10 = R.id.typing_user_container;
                                                                                                                                                FrameLayout frameLayout10 = (FrameLayout) ViewBindings.a(view, R.id.typing_user_container);
                                                                                                                                                if (frameLayout10 != null) {
                                                                                                                                                    i10 = R.id.view_only_button;
                                                                                                                                                    Button button2 = (Button) ViewBindings.a(view, R.id.view_only_button);
                                                                                                                                                    if (button2 != null) {
                                                                                                                                                        i10 = R.id.voice_board_layout;
                                                                                                                                                        AudioBoardLayout audioBoardLayout = (AudioBoardLayout) ViewBindings.a(view, R.id.voice_board_layout);
                                                                                                                                                        if (audioBoardLayout != null) {
                                                                                                                                                            i10 = R.id.voice_board_toast;
                                                                                                                                                            TextView textView7 = (TextView) ViewBindings.a(view, R.id.voice_board_toast);
                                                                                                                                                            if (textView7 != null) {
                                                                                                                                                                i10 = R.id.volume_ripple;
                                                                                                                                                                AudioVolumeRippleView audioVolumeRippleView = (AudioVolumeRippleView) ViewBindings.a(view, R.id.volume_ripple);
                                                                                                                                                                if (audioVolumeRippleView != null) {
                                                                                                                                                                    return new ChatInputLayoutNewBinding((ChatInputRootLayout) view, frameLayout, audioRecordLayout, tintButton, frameLayout2, button, linearLayout, mentionedEditText, realtimeBlurView, relativeLayout, chatInputRightViewContainer, tintButton2, frameLayout3, frameLayout4, textView, checkableImageView, frameLayout5, viewA, imageView, viewA2, textView2, linearLayout2, textView3, textView4, flexLayout, chatReplyLayout, frameLayout6, textView5, imageView2, frameLayout7, linearLayout3, frameLayout8, chatInputPanelSwitcherButton, frameLayout9, textView6, frameLayout10, button2, audioBoardLayout, textView7, audioVolumeRippleView);
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
    public static ChatInputLayoutNewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_input_layout_new, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
