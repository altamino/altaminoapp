package com.narvii.chat;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.view.GravityCompat;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.util.ChatHelper;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatMessage;
import com.narvii.modulization.Module;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.monetization.bubble.BubbleViewContainer;
import com.narvii.util.Utils;
import com.narvii.util.ranking.RankingService;
import com.narvii.util.text.TouchableSpan;
import com.narvii.widget.ChatStickerView;
import com.narvii.widget.EmojioneView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ReversibleLinearLayout;
import com.narvii.widget.UserAvatarLayout;

/* loaded from: classes2.dex */
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
    ReversibleLinearLayout l2;
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

    public interface OnSeeAllClickedListener {
        void onSeeAllClicked(ChatMessage chatMessage);
    }

    public interface onMentionedUserClickedListener {
        void onMentionedUserClicked(String str);
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
        this.l2 = (ReversibleLinearLayout) findViewById(R.id.stub2);
    }

    @Override // com.narvii.widget.ReversibleLinearLayout
    public void setReverse(boolean z) {
        super.setReverse(z);
        LinearLayout linearLayout = this.l1;
        int i = GravityCompat.END;
        linearLayout.setHorizontalGravity(z ? GravityCompat.END : GravityCompat.START);
        this.l2.setReverse(z);
        ReversibleLinearLayout reversibleLinearLayout = this.nicknameContainer;
        if (reversibleLinearLayout != null) {
            if (!z) {
                i = GravityCompat.START;
            }
            reversibleLinearLayout.setHorizontalGravity(i);
            this.nicknameContainer.setReverse(z);
        }
        NicknameView nicknameView = this.nickname;
        if (nicknameView != null) {
            nicknameView.setReverse(z);
        }
    }

    public void setbubbleColor(int i) {
        ChatBubbleView chatBubbleView = this.bubbleContainer.getChatBubbleView();
        if (chatBubbleView != null) {
            Drawable bubbleDrawable = chatBubbleView.getBubbleDrawable();
            if (bubbleDrawable instanceof BubbleBitmapDrawable) {
                ((BubbleBitmapDrawable) bubbleDrawable).setColor(i);
            }
        }
    }

    public void setMentionedUserClickedListener(onMentionedUserClickedListener onmentioneduserclickedlistener) {
        this.mentionedUserClickedListener = onmentioneduserclickedlistener;
    }

    public void setOnSeeAllClickedListener(OnSeeAllClickedListener onSeeAllClickedListener) {
        this.seeAllClickedListener = onSeeAllClickedListener;
    }

    public void setMessage(ChatMessage chatMessage, boolean z, boolean z2, String str) {
        setMessage(chatMessage, z, z2, false, str);
    }

    public void setMessage(ChatMessage chatMessage, boolean z, boolean z2, boolean z3, String str) {
        setMessage(chatMessage, z, z2, z3, null, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setMessage(com.narvii.model.ChatMessage r17, boolean r18, boolean r19, boolean r20, com.narvii.model.ChatBubble r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 841
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.ChatMessageItem.setMessage(com.narvii.model.ChatMessage, boolean, boolean, boolean, com.narvii.model.ChatBubble, java.lang.String):void");
    }

    public boolean isExpandable() {
        return this.isExpandable;
    }

    public void setShowNickname(boolean z) {
        if (z != (!this.hideNickname)) {
            this.hideNickname = !z;
            ReversibleLinearLayout reversibleLinearLayout = this.nicknameContainer;
            if (reversibleLinearLayout != null) {
                reversibleLinearLayout.setVisibility(z ? 0 : 8);
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.userAvatarLayout.getLayoutParams();
            int i = marginLayoutParams.topMargin;
            if (i != 0) {
                this.avatarMargin = i;
            }
            marginLayoutParams.topMargin = z ? this.avatarMargin : 0;
            requestLayout();
        }
    }

    public static String safeMessage(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length < 40) {
            return str;
        }
        int i = 0;
        int i2 = 0;
        while (i < length && i < 800) {
            char cCharAt = str.charAt(i);
            if ((cCharAt == '\n' || cCharAt == '\r') && (i2 = i2 + 1) >= 40) {
                break;
            }
            i++;
        }
        return i < str.length() ? str.substring(0, i) : str;
    }

    private void appendSeeAll(SpannableStringBuilder spannableStringBuilder, int i, final ChatMessage chatMessage) {
        String str = "..." + getContext().getResources().getString(R.string.see_all);
        spannableStringBuilder.append((CharSequence) str);
        spannableStringBuilder.setSpan(new TouchableSpan() { // from class: com.narvii.chat.ChatMessageItem.1
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                OnSeeAllClickedListener onSeeAllClickedListener = ChatMessageItem.this.seeAllClickedListener;
                if (onSeeAllClickedListener != null) {
                    onSeeAllClickedListener.onSeeAllClicked(chatMessage);
                }
            }
        }, spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(i), spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new UnderlineSpan(), spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new StyleSpan(1), spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
    }

    public static void appendSeeAll(Context context, SpannableStringBuilder spannableStringBuilder, int i) {
        String str = "..." + context.getResources().getString(R.string.see_all);
        spannableStringBuilder.append((CharSequence) str);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(i), spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new UnderlineSpan(), spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new StyleSpan(1), spannableStringBuilder.length() - str.length(), spannableStringBuilder.length(), 33);
    }

    public static class MentionClickableSpan extends TouchableSpan {
        private onMentionedUserClickedListener listener;
        private int mentionedColor;
        private String uid;

        public MentionClickableSpan(String str, int i, onMentionedUserClickedListener onmentioneduserclickedlistener) {
            this.uid = str;
            this.mentionedColor = i;
            this.listener = onmentioneduserclickedlistener;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            onMentionedUserClickedListener onmentioneduserclickedlistener = this.listener;
            if (onmentioneduserclickedlistener != null) {
                onmentioneduserclickedlistener.onMentionedUserClicked(this.uid);
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setColor(this.mentionedColor);
        }
    }
}
