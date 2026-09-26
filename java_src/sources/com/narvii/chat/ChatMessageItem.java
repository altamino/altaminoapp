package com.narvii.chat;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.GravityCompat;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.chat.util.ChatHelper;
import com.narvii.config.ConfigService;
import com.narvii.media.MediaPlayerManager;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatMessage;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.modulization.Module;
import com.narvii.monetization.bubble.BubbleHelper;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.monetization.bubble.BubbleViewContainer;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.ranking.RankingService;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.text.NVText;
import com.narvii.util.text.TouchableSpan;
import com.narvii.widget.ChatStickerView;
import com.narvii.widget.EmojioneView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ReversibleLinearLayout;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class ChatMessageItem extends ReversibleLinearLayout {
    AccountService accountService;
    NVImageView avatar;
    ImageView avatarBadge;
    int avatarMargin;
    BubbleViewContainer bubbleContainer;
    BubbleService bubbleService;
    ChatStickerView chatStickerView;
    ConfigService configService;
    ChatHelper helper;
    boolean hideNickname;
    boolean isExpandable;
    LinearLayout l1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    ReversibleLinearLayout f1852l2;
    onMentionedUserClickedListener mentionedUserClickedListener;
    EmojioneView moodSticker;
    NicknameView nickname;
    ReversibleLinearLayout nicknameContainer;
    View progress;
    RankingService ranking;
    View resend;
    OnSeeAllClickedListener seeAllClickedListener;
    TextView tvHostLabel;
    View unread;
    UserAvatarLayout userAvatarLayout;

    public static class MentionClickableSpan extends TouchableSpan {
        private onMentionedUserClickedListener listener;
        private int mentionedColor;
        private String uid;

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            onMentionedUserClickedListener onmentioneduserclickedlistener = this.listener;
            if (onmentioneduserclickedlistener != null) {
                onmentioneduserclickedlistener.onMentionedUserClicked(this.uid);
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            textPaint.setColor(this.mentionedColor);
        }

        public MentionClickableSpan(String str, int i10, onMentionedUserClickedListener onmentioneduserclickedlistener) {
            this.uid = str;
            this.mentionedColor = i10;
            this.listener = onmentioneduserclickedlistener;
        }
    }

    public interface OnSeeAllClickedListener {
        void onSeeAllClicked(ChatMessage chatMessage);
    }

    public interface onMentionedUserClickedListener {
        void onMentionedUserClicked(String str);
    }

    private void appendSeeAll(SpannableStringBuilder spannableStringBuilder, int i10, final ChatMessage chatMessage) {
        String str = "..." + getContext().getResources().getString(R.string.see_all);
        spannableStringBuilder.append((CharSequence) str);
        spannableStringBuilder.setSpan(new TouchableSpan() { // from class: com.narvii.chat.ChatMessageItem.1
            @Override // android.text.style.ClickableSpan
            public void onClick(@NonNull View view) {
                OnSeeAllClickedListener onSeeAllClickedListener = ChatMessageItem.this.seeAllClickedListener;
                if (onSeeAllClickedListener != null) {
                    onSeeAllClickedListener.onSeeAllClicked(chatMessage);
                }
            }
        }, spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(i10), spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new UnderlineSpan(), spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new StyleSpan(1), spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
    }

    public boolean isExpandable() {
        return this.isExpandable;
    }

    public void setMentionedUserClickedListener(onMentionedUserClickedListener onmentioneduserclickedlistener) {
        this.mentionedUserClickedListener = onmentioneduserclickedlistener;
    }

    public void setMessage(ChatMessage chatMessage, boolean z6, boolean z10, String str) {
        setMessage(chatMessage, z6, z10, false, str);
    }

    public void setOnSeeAllClickedListener(OnSeeAllClickedListener onSeeAllClickedListener) {
        this.seeAllClickedListener = onSeeAllClickedListener;
    }

    public static String safeMessage(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length < 40) {
            return str;
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < length && i10 < 800) {
            char cCharAt = str.charAt(i10);
            if ((cCharAt == '\n' || cCharAt == '\r') && (i11 = i11 + 1) >= 40) {
                break;
            }
            i10++;
        }
        return i10 < str.length() ? str.substring(0, i10) : str;
    }

    public void setMessage(ChatMessage chatMessage, boolean z6, boolean z10, boolean z11, String str) {
        setMessage(chatMessage, z6, z10, z11, null, str);
    }

    public void setShowNickname(boolean z6) {
        if (z6 != (!this.hideNickname)) {
            this.hideNickname = !z6;
            ReversibleLinearLayout reversibleLinearLayout = this.nicknameContainer;
            if (reversibleLinearLayout != null) {
                reversibleLinearLayout.setVisibility(z6 ? 0 : 8);
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.userAvatarLayout.getLayoutParams();
            int i10 = marginLayoutParams.topMargin;
            if (i10 != 0) {
                this.avatarMargin = i10;
            }
            marginLayoutParams.topMargin = z6 ? this.avatarMargin : 0;
            requestLayout();
        }
    }

    public void setbubbleColor(int i10) {
        ChatBubbleView chatBubbleView = this.bubbleContainer.getChatBubbleView();
        if (chatBubbleView != null) {
            Drawable bubbleDrawable = chatBubbleView.getBubbleDrawable();
            if (bubbleDrawable instanceof BubbleBitmapDrawable) {
                ((BubbleBitmapDrawable) bubbleDrawable).setColor(i10);
            }
        }
    }

    public ChatMessageItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.seeAllClickedListener = null;
        this.helper = new ChatHelper(context);
        this.ranking = (RankingService) Utils.getNVContext(context).getService(Module.MODULE_RANKING);
        this.configService = (ConfigService) Utils.getNVContext(context).getService("config");
        NVContext nVContext = Utils.getNVContext(context);
        this.bubbleService = (BubbleService) nVContext.getService("bubble");
        this.accountService = (AccountService) nVContext.getService("account");
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.avatar = (NVImageView) findViewById(R.id.avatar);
        this.avatarBadge = (ImageView) findViewById(R.id.avatar_badge);
        this.nickname = (NicknameView) findViewById(R.id.nickname);
        this.bubbleContainer = (BubbleViewContainer) findViewById(R.id.chat_bubble_container);
        this.chatStickerView = (ChatStickerView) findViewById(R.id.chat_sticker);
        this.unread = findViewById(R.id.chat_unread);
        this.progress = findViewById(R.id.progress);
        this.resend = findViewById(R.id.chat_resend);
        this.tvHostLabel = (TextView) findViewById(R.id.host_label);
        this.nicknameContainer = (ReversibleLinearLayout) findViewById(R.id.nickname_container);
        this.moodSticker = (EmojioneView) findViewById(R.id.mood_sticker);
        this.l1 = (LinearLayout) findViewById(R.id.stub1);
        this.f1852l2 = (ReversibleLinearLayout) findViewById(R.id.stub2);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0066  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void setMessage(ChatMessage chatMessage, boolean z6, boolean z10, boolean z11, ChatBubble chatBubble, String str) {
        int color;
        CharSequence charSequence;
        User user;
        boolean z12 = !chatMessage.isAccessibleByUser(null);
        this.userAvatarLayout.setUser(z12 ? null : chatMessage.author);
        ImageView imageView = this.avatarBadge;
        if (imageView != null) {
            imageView.setImageDrawable((z12 || (user = chatMessage.author) == null) ? null : this.ranking.getInfluencerOrRankingBadge(user));
        }
        int i10 = 0;
        if (z12) {
            color = 0;
        } else if (z10) {
            color = getResources().getColor(R.color.chat_bubble_unknown);
        } else if (chatMessage.needSubTransparentPlaceholder()) {
            color = getResources().getColor(R.color.chat_bubble_image_placeholder_bg);
        } else if (chatMessage.needVideoPlaceholder()) {
            color = getResources().getColor(R.color.chat_bubble_video_placeholder_bg);
        } else {
            color = 0;
        }
        this.bubbleContainer.setBubbleStyle(z6, color);
        this.bubbleContainer.setThreadBubble(chatBubble);
        this.bubbleContainer.setCommunityId(this.configService.getCommunityId());
        setReverse(z6);
        if (z6) {
            this.nickname.setUser(chatMessage.author);
            this.nickname.setText(R.string.chat_me);
            this.nickname.setRole1(null, 0);
        } else {
            this.nickname.setUser(chatMessage.author);
        }
        TextView textView = this.tvHostLabel;
        if (textView != null) {
            textView.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
            this.tvHostLabel.setText(str);
        }
        if (!z11 && z12) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getResources().getString(R.string.chat_disabled_message));
            spannableStringBuilder.setSpan(new ForegroundColorSpan(-6579301), 0, spannableStringBuilder.length(), 0);
            if (chatMessage.isAccessibleByUser(this.accountService.getUserProfile())) {
                String string = getResources().getString(R.string.chat_disabled_show);
                spannableStringBuilder.append((CharSequence) "  ");
                spannableStringBuilder.append((CharSequence) string);
                spannableStringBuilder.setSpan(new ForegroundColorSpan(-14640933), spannableStringBuilder.length() - string.length(), spannableStringBuilder.length(), 33);
                spannableStringBuilder.setSpan(new StyleSpan(1), spannableStringBuilder.length() - string.length(), spannableStringBuilder.length(), 33);
            }
            this.bubbleContainer.setContentText(spannableStringBuilder, chatMessage);
        } else if (z10) {
            String string2 = getResources().getString(R.string.chat_unknown_type);
            SpannableString spannableString = new SpannableString(string2);
            spannableString.setSpan(new ForegroundColorSpan(-855310), 0, string2.length(), 0);
            this.bubbleContainer.setContentText(spannableString, chatMessage);
        } else if (chatMessage.type == 3) {
            if (chatMessage.mediaValue.startsWith("ndcsticker://e/")) {
                this.moodSticker.setVisibility(0);
                this.bubbleContainer.setVisibility(8);
                this.moodSticker.setEmoji(new String(StringUtils.hex2bytes(chatMessage.mediaValue.substring(15))));
            } else {
                this.chatStickerView.setVisibility(0);
                this.bubbleContainer.setVisibility(8);
                Sticker stickerInfo = chatMessage.getStickerInfo();
                this.chatStickerView.setStickerImage(chatMessage.mediaValue, stickerInfo != null ? stickerInfo.stickerCollectionId : null, chatMessage.getClientRefIdTmp());
            }
        } else if (chatMessage.isMediaMessage()) {
            boolean z13 = chatMessage.type == 1;
            if (chatMessage.media() != null && chatMessage.media().isVideo()) {
                this.bubbleContainer.setContentVideo(chatMessage);
            } else {
                this.bubbleContainer.setContentImage(chatMessage.media(), chatMessage.getClientRefIdTmp(), chatMessage.extensions, z13);
            }
        } else if (chatMessage.type == 2) {
            if (this.unread != null && chatMessage.mediaType == 110 && chatMessage.mediaValue != null) {
                this.unread.setVisibility(((MessageReadManager) Utils.getNVContext(getContext()).getService("messageRead")).isMessageRead(chatMessage) ? 8 : 0);
            }
            this.bubbleContainer.setVoiceNote(chatMessage, ((MediaPlayerManager) Utils.getNVContext(getContext()).getService("mediaPlayer")).getMediaStatus(chatMessage.mediaValue));
        } else if (chatMessage.content != null) {
            ArrayList<MentionedEditText.Range> mentionedTextRange = this.helper.getMentionedTextRange(chatMessage);
            String message = this.helper.getMessage(chatMessage);
            if (message != null) {
                message = message.replaceAll(MentionedEditText.MENTION_BLOCK_START, "").replaceAll(MentionedEditText.MENTION_BLOCK_END, "");
            }
            String strSafeMessage = safeMessage(message);
            this.isExpandable = strSafeMessage != message;
            int bubbleLinkColor = this.bubbleService.getBubbleLinkColor(BubbleHelper.getChatMessageBubbleId(z6, chatMessage, chatBubble), z6 ? -1275068417 : -12233086);
            NVText nVText = new NVText(strSafeMessage, bubbleLinkColor);
            nVText.addPaddingForBoldMode = false;
            boolean z14 = (mentionedTextRange == null || mentionedTextRange.isEmpty()) ? false : true;
            if (z14) {
                for (MentionedEditText.Range range : mentionedTextRange) {
                    int iMax = Math.max(i10, range.from);
                    int iMin = Math.min(nVText.length(), range.to);
                    if (iMax < iMin) {
                        nVText.setSpan(new MentionClickableSpan(range.id, bubbleLinkColor, this.mentionedUserClickedListener), iMax, iMin, 33);
                        i10 = 0;
                    }
                }
            }
            if (nVText.markSimpleEntries(DefaultTagClickListener.instance) <= 0 && !z14) {
                if (this.isExpandable) {
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(strSafeMessage);
                    appendSeeAll(spannableStringBuilder2, bubbleLinkColor, chatMessage);
                    charSequence = spannableStringBuilder2;
                } else {
                    charSequence = strSafeMessage;
                }
                this.bubbleContainer.setContentText(charSequence, this.isExpandable, chatMessage.extensions, chatMessage.type == 1, chatMessage);
            } else {
                if (this.isExpandable) {
                    appendSeeAll(nVText, bubbleLinkColor, chatMessage);
                }
                this.bubbleContainer.setContentText(nVText, true, chatMessage.extensions, chatMessage.type == 1, chatMessage);
            }
        } else {
            String message2 = this.helper.getMessage(chatMessage);
            int callMessageType = chatMessage.getCallMessageType();
            if (chatMessage.isCancelMessage()) {
                this.bubbleContainer.setCallInfo(chatMessage, callMessageType, getContext().getString(R.string.call_cancelled));
            } else if (chatMessage.isDeclineMessage()) {
                this.bubbleContainer.setCallInfo(chatMessage, callMessageType, getContext().getString(R.string.call_declined));
            } else if (chatMessage.isTimeOutMessage()) {
                this.bubbleContainer.setCallInfo(chatMessage, callMessageType, getContext().getString(z6 ? R.string.call_not_answered : R.string.missed_call));
            } else {
                this.bubbleContainer.setContentText(message2, false, chatMessage.extensions, chatMessage.type == 1, chatMessage);
            }
        }
        this.progress.setVisibility(chatMessage._status == 1 ? 0 : 8);
        this.resend.setVisibility(chatMessage._status == 2 ? 0 : 8);
    }

    @Override // com.narvii.widget.ReversibleLinearLayout
    public void setReverse(boolean z6) {
        int i10;
        super.setReverse(z6);
        LinearLayout linearLayout = this.l1;
        int i11 = GravityCompat.START;
        if (z6) {
            i10 = 8388613;
        } else {
            i10 = 8388611;
        }
        linearLayout.setHorizontalGravity(i10);
        this.f1852l2.setReverse(z6);
        ReversibleLinearLayout reversibleLinearLayout = this.nicknameContainer;
        if (reversibleLinearLayout != null) {
            if (z6) {
                i11 = 8388613;
            }
            reversibleLinearLayout.setHorizontalGravity(i11);
            this.nicknameContainer.setReverse(z6);
        }
        NicknameView nicknameView = this.nickname;
        if (nicknameView != null) {
            nicknameView.setReverse(z6);
        }
    }

    public static void appendSeeAll(Context context, SpannableStringBuilder spannableStringBuilder, int i10) {
        String str = "..." + context.getResources().getString(R.string.see_all);
        spannableStringBuilder.append((CharSequence) str);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(i10), spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new UnderlineSpan(), spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new StyleSpan(1), spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
    }
}
