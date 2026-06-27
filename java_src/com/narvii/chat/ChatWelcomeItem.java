package com.narvii.chat;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.util.ChatHelper;
import com.narvii.model.ChatMessage;
import com.narvii.model.User;
import com.narvii.util.CenterAlignImageSpan;
import com.narvii.util.Utils;
import com.narvii.util.text.TouchableSpan;

/* loaded from: classes2.dex */
public class ChatWelcomeItem extends LinearLayout {
    private static final int CHARACTER_BEGIN_INDEX = 250;
    private static final int CHARACTER_INCREASE_STEP = 12;
    private static final int WELCOME_MESSAGE_LINE_LIMIT = 10;
    private ChatMessage chatMessage;
    private boolean isExpanded;
    ExpandedClickListener listener;
    public TextView text;

    public interface ExpandedClickListener {
        void onExpandedClicked();
    }

    public void setExpandedClickListener(ExpandedClickListener expandedClickListener) {
        this.listener = expandedClickListener;
    }

    public ChatWelcomeItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.text = (TextView) findViewById(R.id.text);
    }

    public void setChatMessage(ChatMessage chatMessage) {
        if (chatMessage == null) {
            return;
        }
        this.chatMessage = chatMessage;
        String str = chatMessage.content;
        User user = chatMessage.author;
        String strNickname = user != null ? user.nickname() : null;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) " ");
        spannableStringBuilder.setSpan(new CenterAlignImageSpan(getContext(), R.drawable.ic_chat_welcome_message_indicator), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
        spannableStringBuilder.append((CharSequence) " ");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) str);
        if (strNickname != null) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(getContext(), ChatHelper.Companion.getNicknameColor(strNickname))), length, strNickname.length() + length + 1, 33);
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.text.getLayoutParams();
        int paddingLeft = marginLayoutParams.leftMargin + this.text.getPaddingLeft() + this.text.getPaddingRight() + getPaddingRight() + getPaddingLeft() + marginLayoutParams.rightMargin;
        if (new StaticLayout(spannableStringBuilder, this.text.getPaint(), Utils.getScreenWidth(getContext()) - paddingLeft, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true).getLineCount() <= 10 || this.isExpanded) {
            this.text.setText(spannableStringBuilder);
            return;
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
        String str2 = "..." + getResources().getString(R.string.see_all);
        int length2 = spannableStringBuilder.length();
        int i = 250;
        while (true) {
            if (i >= spannableStringBuilder.length()) {
                i = length2;
                break;
            }
            spannableStringBuilder2.clear();
            spannableStringBuilder2.append((CharSequence) String.valueOf(spannableStringBuilder.subSequence(0, i)));
            ChatMessageItem.appendSeeAll(getContext(), spannableStringBuilder2, -11890462);
            if (new StaticLayout(spannableStringBuilder2, this.text.getPaint(), Utils.getScreenWidth(getContext()) - paddingLeft, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true).getLineCount() >= 10) {
                break;
            }
            length2 = i;
            i += 12;
        }
        spannableStringBuilder2.clear();
        spannableStringBuilder2.append(spannableStringBuilder.subSequence(0, (i - 12) + str2.length()));
        ChatMessageItem.appendSeeAll(getContext(), spannableStringBuilder2, -11890462);
        spannableStringBuilder2.setSpan(new TouchableSpan() { // from class: com.narvii.chat.ChatWelcomeItem.1
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                ChatWelcomeItem.this.listener.onExpandedClicked();
            }
        }, spannableStringBuilder2.length() - str2.length(), spannableStringBuilder2.length(), 33);
        this.text.setMovementMethod(LinkMovementMethod.getInstance());
        this.text.setText(spannableStringBuilder2);
    }
}
