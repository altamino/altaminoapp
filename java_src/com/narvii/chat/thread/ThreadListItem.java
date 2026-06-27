package com.narvii.chat.thread;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.chat.MultiAvatarView;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.OrganizerTransferRequest;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.Utils;
import com.narvii.util.VoiceMessageUtils;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.List;

/* loaded from: classes2.dex */
public class ThreadListItem extends RelativeLayout {
    AccountService accountService;
    NVImageView avatar;
    MultiAvatarView avatars;
    ChatHelper chatHelper;
    ColorStateList color1;
    ColorStateList color2;
    TextView content;
    TextView datetime;
    private View disableIndicator;
    private View fansOnlyIndicator;
    DateTimeFormatter formatter;
    ChatHelper helper;
    NVImageView image;
    public boolean isDarkTheme;
    FontAwesomeView mute;
    View organizerTransHintIcon;
    TextView publicChat;
    NVImageView rctIndicatorIcon;
    TextView title;
    Typeface typeface;
    View unread;
    UserAvatarLayout userAvatarLayout;

    public ThreadListItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.formatter = DateTimeFormatter.getInstance(context);
        this.helper = new ChatHelper(context);
        this.accountService = (AccountService) Utils.getNVContext(context).getService("account");
        this.chatHelper = new ChatHelper(getContext());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.image = (NVImageView) findViewById(R.id.image);
        this.avatar = (NVImageView) findViewById(R.id.avatar);
        this.userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.avatars = (MultiAvatarView) findViewById(R.id.chat_avatars);
        this.publicChat = (TextView) findViewById(R.id.chat_thread_public_chat);
        this.unread = findViewById(R.id.chat_thread_unread);
        this.datetime = (TextView) findViewById(R.id.datetime);
        this.title = (TextView) findViewById(R.id.title);
        this.content = (TextView) findViewById(R.id.content);
        this.typeface = this.content.getTypeface();
        this.color1 = this.content.getTextColors();
        this.color2 = this.title.getTextColors();
        this.mute = (FontAwesomeView) findViewById(R.id.chat_mute_icon);
        this.rctIndicatorIcon = (NVImageView) findViewById(R.id.rtc_indicator);
        this.organizerTransHintIcon = findViewById(R.id.organizer_trans_hint_icon);
        this.fansOnlyIndicator = findViewById(R.id.fans_only_content_indicator);
        this.disableIndicator = findViewById(R.id.disable_indicator);
    }

    public static int getViewType(ChatHelper chatHelper, ChatThread chatThread) {
        if (chatThread.icon != null) {
            return 2;
        }
        return chatHelper.getAvatarList(chatThread).size() > 1 ? 1 : 0;
    }

    public static int getViewType(GlobalChatThread globalChatThread) {
        if (globalChatThread.icon != null) {
            return 2;
        }
        List<String> list = globalChatThread.avatarList;
        return (list != null && list.size() > 1) ? 1 : 0;
    }

    public void setChatThread(ChatThread chatThread) {
        setChatThread(chatThread, null, null);
    }

    public void setChatThread(ChatThread chatThread, String str) {
        setChatThread(chatThread, str, null);
    }

    public void setChatThread(ChatThread chatThread, String str, User user) {
        String voiceMessageSummary;
        String message;
        int i;
        boolean zIsThreadUnread = this.helper.isThreadUnread(chatThread);
        this.unread.setVisibility(zIsThreadUnread ? 0 : 8);
        this.datetime.setText(this.formatter.format(chatThread.latestActivityTime));
        this.datetime.setTextColor(this.isDarkTheme ? -1862270977 : -6250336);
        if (this.rctIndicatorIcon != null) {
            if (chatThread.hasLiveEvents()) {
                this.rctIndicatorIcon.setImageUrl("assets://video_green.webp");
                this.rctIndicatorIcon.setVisibility(0);
            } else {
                this.rctIndicatorIcon.setVisibility(8);
            }
        }
        FontAwesomeView fontAwesomeView = this.mute;
        if (fontAwesomeView != null) {
            fontAwesomeView.setVisibility(chatThread.alertOption == 2 ? 0 : 8);
            this.mute.setTextColor(this.isDarkTheme ? -3355444 : -8355712);
        }
        String str2 = chatThread.icon;
        if (str2 != null) {
            NVImageView nVImageView = this.image;
            if (nVImageView != null) {
                nVImageView.setImageUrl(str2);
            }
        } else {
            List<String> avatarList = this.helper.getAvatarList(chatThread);
            if (avatarList.size() > 1) {
                this.avatars.setAvatars(avatarList);
            } else {
                UserAvatarLayout userAvatarLayout = this.userAvatarLayout;
                if (userAvatarLayout != null) {
                    userAvatarLayout.setUser(this.helper.getPrivateChatTargetUer(chatThread));
                } else {
                    NVImageView nVImageView2 = this.avatar;
                    if (nVImageView2 != null) {
                        nVImageView2.setImageUrl(avatarList.size() == 0 ? null : avatarList.get(0));
                    }
                }
            }
        }
        if (this.organizerTransHintIcon != null) {
            OrganizerTransferRequest organizerTransferRequest = chatThread.getOrganizerTransferRequest();
            if (organizerTransferRequest == null || TextUtils.isEmpty(organizerTransferRequest.requestId)) {
                this.organizerTransHintIcon.setVisibility(8);
            } else {
                this.organizerTransHintIcon.setVisibility(0);
            }
        }
        TextView textView = this.publicChat;
        if (textView != null) {
            int i2 = chatThread.type;
            if (i2 == 2) {
                textView.setVisibility(0);
                this.publicChat.setText(R.string.chat_public_chat);
            } else if (i2 == 1) {
                textView.setVisibility(0);
                this.publicChat.setText(R.string.chat_group_chat);
            } else {
                textView.setVisibility(4);
            }
            this.publicChat.setTextColor(this.isDarkTheme ? -3355444 : -6250336);
        }
        this.title.setText(this.helper.getThreadTitle(chatThread));
        this.title.setTextColor(this.isDarkTheme ? -1 : -14671840);
        ChatMessage chatMessage = chatThread.lastMessageSummary;
        if (chatMessage != null && ((i = chatMessage.type) == 100 || i == 119)) {
            voiceMessageSummary = "-";
        } else if (chatMessage != null && chatMessage.mediaType == 110) {
            voiceMessageSummary = VoiceMessageUtils.getVoiceMessageSummary(getContext(), chatThread.lastMessageSummary.getDuration());
        } else if (chatMessage != null && chatMessage.isStickerMessage()) {
            Sticker stickerInfo = chatThread.lastMessageSummary.getStickerInfo();
            voiceMessageSummary = "[" + ((stickerInfo == null || TextUtils.isEmpty(stickerInfo.name)) ? getResources().getString(R.string.sticker) : stickerInfo.name) + "]";
        } else if (chatMessage != null && chatMessage.mediaType == 100) {
            voiceMessageSummary = "[" + getContext().getString(R.string.post_entry_new_image) + "]";
        } else if (chatMessage != null && chatMessage.media() != null && chatMessage.media().isVideo() && chatMessage.media().type != 103) {
            voiceMessageSummary = "[" + getContext().getString(R.string.video) + "]";
        } else if (chatThread.lastMessageSummary == null) {
            voiceMessageSummary = null;
        } else if (chatMessage.isCancelMessage()) {
            voiceMessageSummary = "[" + getContext().getString(R.string.call_cancelled) + "]";
        } else if (chatMessage.isDeclineMessage()) {
            voiceMessageSummary = "[" + getContext().getString(R.string.call_declined) + "]";
        } else {
            if (chatMessage.isTimeOutMessage()) {
                StringBuilder sb = new StringBuilder();
                sb.append("[");
                sb.append(getContext().getString(Utils.isEqualsNotNull(this.accountService.getUserId(), chatMessage.uid()) ? R.string.call_not_answered : R.string.missed_call));
                sb.append("]");
                message = sb.toString();
            } else {
                message = this.helper.getMessage(chatThread, chatThread.lastMessageSummary);
            }
            voiceMessageSummary = message;
        }
        if (TextUtils.isEmpty(voiceMessageSummary)) {
            voiceMessageSummary = getContext().getString(R.string.chat_new_message);
        }
        boolean z = chatThread.type == 0;
        boolean z2 = chatMessage != null && chatMessage.isUserContentMessage();
        User user2 = chatMessage != null ? chatMessage.author : null;
        String str3 = user2 == null ? null : user2.nickname;
        if (str3 == null && chatMessage != null) {
            User user3 = this.chatHelper.getUser(chatThread, chatMessage.uid());
            str3 = user3 != null ? user3.nickname : null;
        }
        if (!TextUtils.isEmpty(str3) && !z && z2) {
            voiceMessageSummary = str3 + ": " + voiceMessageSummary;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(voiceMessageSummary);
        boolean z3 = chatThread.mentionMe && ChatHelperKt.hasUnreadMessage(chatThread);
        boolean z4 = chatThread.replyMe && ChatHelperKt.hasUnreadMessage(chatThread);
        if (z3) {
            spannableStringBuilder = new SpannableStringBuilder();
            String string = getResources().getString(R.string.mentioned_in_thread);
            spannableStringBuilder.append((CharSequence) string).append((CharSequence) " ").append((CharSequence) voiceMessageSummary);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(-3853775), 0, string.length(), 33);
        } else if (z4) {
            spannableStringBuilder = new SpannableStringBuilder();
            String str4 = "[" + getContext().getString(R.string.reply) + "] ";
            spannableStringBuilder.append((CharSequence) str4).append((CharSequence) " ").append((CharSequence) voiceMessageSummary);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(-3853775), 0, str4.length(), 33);
        } else if (!TextUtils.isEmpty(str)) {
            spannableStringBuilder = new SpannableStringBuilder();
            String str5 = "[" + getContext().getString(R.string.compose_draft) + "] ";
            spannableStringBuilder.append((CharSequence) str5).append((CharSequence) str);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(-3853775), 0, str5.length(), 33);
        }
        this.content.setText(spannableStringBuilder);
        this.content.setTypeface(this.typeface, 0);
        if (this.isDarkTheme) {
            this.content.setTextColor(zIsThreadUnread ? -1 : -1862270977);
        } else {
            this.content.setTextColor(zIsThreadUnread ? this.color2 : this.color1);
        }
        View view = this.fansOnlyIndicator;
        if (view != null) {
            view.setVisibility(chatThread.isFansOnly() ? 0 : 4);
        }
        boolean z5 = chatThread.status() == 9;
        this.content.setVisibility(z5 ? 8 : 0);
        View view2 = this.disableIndicator;
        if (view2 != null) {
            view2.setVisibility(z5 ? 0 : 8);
        }
    }

    public void setDarkTheme(boolean z) {
        this.isDarkTheme = z;
    }
}
