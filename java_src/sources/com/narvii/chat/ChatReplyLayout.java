package com.narvii.chat;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.IdRes;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatMessage;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.util.VoiceMessageUtils;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes3.dex */
public final class ChatReplyLayout extends LinearLayout implements View.OnClickListener {

    @NotNull
    private final w7.m content$delegate;

    @NotNull
    private final w7.m delete$delegate;

    @NotNull
    private final w7.m deleteLayout$delegate;

    @NotNull
    private final w7.m divideLine$delegate;

    @Nullable
    private OnClickListener onChatReplyClickListener;

    @Nullable
    private ChatMessage replayMessage;

    @NotNull
    private final w7.m title$delegate;

    public interface OnClickListener {
        void onCancelClick(@NotNull View view, @Nullable ChatMessage chatMessage);

        void onItemClick(@NotNull View view, @Nullable ChatMessage chatMessage);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.chat.ChatReplyLayout$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        public final View invoke() {
            return ChatReplyLayout.this.findViewById(this.$res);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ChatReplyLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        kotlin.jvm.internal.t.j(context, "context");
    }

    private final boolean isMessageDisable(ChatMessage chatMessage) {
        return !chatMessage.isAccessibleByUser(null);
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @NotNull
    public final TextView getContent() {
        return (TextView) this.content$delegate.getValue();
    }

    @Nullable
    public final OnClickListener getOnChatReplyClickListener() {
        return this.onChatReplyClickListener;
    }

    @Nullable
    public final ChatMessage getReplayMessage() {
        return this.replayMessage;
    }

    public final void setMessage(@Nullable ChatMessage chatMessage) {
        setMessage$default(this, chatMessage, 0, false, 6, null);
    }

    public final void setOnChatReplyClickListener(@Nullable OnClickListener onClickListener) {
        this.onChatReplyClickListener = onClickListener;
    }

    public final void setReplayMessage(@Nullable ChatMessage chatMessage) {
        this.replayMessage = chatMessage;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ChatReplyLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        kotlin.jvm.internal.t.j(context, "context");
    }

    private final <T extends View> w7.m<T> bind(@IdRes int i10) {
        return w7.o.b(w7.q.NONE, new AnonymousClass1(i10));
    }

    private final String getContent(ChatMessage chatMessage) {
        String string;
        if (isMessageDelete(chatMessage)) {
            String string2 = getContext().getString(R.string.chat_not_existed);
            kotlin.jvm.internal.t.i(string2, "getString(...)");
            return string2;
        }
        if (isMessageDisable(chatMessage)) {
            String string3 = getContext().getString(R.string.chat_disabled_message2);
            kotlin.jvm.internal.t.i(string3, "getString(...)");
            return string3;
        }
        if (!TextUtils.isEmpty(chatMessage.content)) {
            String content = chatMessage.content;
            kotlin.jvm.internal.t.i(content, "content");
            return content;
        }
        if (chatMessage.mediaType == 110) {
            String voiceMessageSummary = VoiceMessageUtils.getVoiceMessageSummary(getContext(), chatMessage.getDuration());
            kotlin.jvm.internal.t.i(voiceMessageSummary, "getVoiceMessageSummary(...)");
            return voiceMessageSummary;
        }
        if (chatMessage.isStickerMessage()) {
            Sticker stickerInfo = chatMessage.getStickerInfo();
            if (TextUtils.isEmpty(stickerInfo != null ? stickerInfo.name : null)) {
                string = getResources().getString(R.string.sticker);
            } else {
                kotlin.jvm.internal.t.g(stickerInfo);
                string = stickerInfo.name;
            }
            return "[" + string + "]";
        }
        if (chatMessage.mediaType == 100) {
            return "[" + getContext().getString(R.string.post_entry_new_image) + "]";
        }
        if (chatMessage.media() != null) {
            Media media = chatMessage.media();
            kotlin.jvm.internal.t.g(media);
            if (media.isVideo()) {
                Media media2 = chatMessage.media();
                kotlin.jvm.internal.t.g(media2);
                if (media2.type != 103) {
                    return "[" + getContext().getString(R.string.video) + "]";
                }
            }
        }
        return "[" + getContext().getString(R.string.chat_message) + "]";
    }

    private final boolean isMessageDelete(ChatMessage chatMessage) {
        int i10 = chatMessage.type;
        return i10 == 100 || i10 == 119;
    }

    public static /* synthetic */ void setMessage$default(ChatReplyLayout chatReplyLayout, ChatMessage chatMessage, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z6 = false;
        }
        chatReplyLayout.setMessage(chatMessage, i10, z6);
    }

    @NotNull
    public final TintButton getDelete() {
        return (TintButton) this.delete$delegate.getValue();
    }

    @NotNull
    public final View getDeleteLayout() {
        return (View) this.deleteLayout$delegate.getValue();
    }

    @NotNull
    public final View getDivideLine() {
        return (View) this.divideLine$delegate.getValue();
    }

    @NotNull
    public final GradientDrawable getShapeDrawable(int i10, float f) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(f);
        gradientDrawable.setColor(i10);
        return gradientDrawable;
    }

    @NotNull
    public final TextView getTitle() {
        return (TextView) this.title$delegate.getValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@NotNull View v5) {
        kotlin.jvm.internal.t.j(v5, "v");
        if (v5.getId() == R.id.delete) {
            OnClickListener onClickListener = this.onChatReplyClickListener;
            if (onClickListener != null) {
                onClickListener.onCancelClick(v5, this.replayMessage);
                return;
            }
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.checkDetail).area("QuoteArea").send();
        OnClickListener onClickListener2 = this.onChatReplyClickListener;
        if (onClickListener2 != null) {
            onClickListener2.onItemClick(v5, this.replayMessage);
        }
        ChatMessage chatMessage = this.replayMessage;
        kotlin.jvm.internal.t.g(chatMessage);
        if (isMessageDelete(chatMessage)) {
            return;
        }
        ChatMessage chatMessage2 = this.replayMessage;
        kotlin.jvm.internal.t.g(chatMessage2);
        if (isMessageDisable(chatMessage2)) {
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(ChatMessageItemDetailFragment.class);
        ChatMessage chatMessage3 = this.replayMessage;
        kotlin.jvm.internal.t.g(chatMessage3);
        intent.putExtra(ChatMessageItemDetailFragment.KEY_MESSAGE_ID, chatMessage3.id());
        ChatMessage chatMessage4 = this.replayMessage;
        kotlin.jvm.internal.t.g(chatMessage4);
        intent.putExtra("threadId", chatMessage4.threadId);
        intent.putExtra("seeAll", false);
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
    }

    public final void setMessage(@Nullable ChatMessage chatMessage, int i10) {
        setMessage$default(this, chatMessage, i10, false, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatReplyLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        kotlin.jvm.internal.t.j(context, "context");
        this.divideLine$delegate = bind(R.id.divide_line);
        this.title$delegate = bind(R.id.title);
        this.content$delegate = bind(R.id.content);
        this.delete$delegate = bind(R.id.delete);
        this.deleteLayout$delegate = bind(R.id.delete_layout);
        LayoutInflater.from(context).inflate(R.layout.layout_chat_reply, (ViewGroup) this, true);
        getDelete().setOnClickListener(this);
        setOnClickListener(this);
    }

    public final void setMessage(@Nullable ChatMessage chatMessage, int i10, boolean z6) {
        u uVar;
        this.replayMessage = chatMessage;
        if (chatMessage == null) {
            return;
        }
        if (i10 == 0) {
            uVar = new u(-867546550, -1711276033);
        } else {
            uVar = new u(Integer.valueOf(Utils.getColor(i10, 0.8f)), Integer.valueOf(Utils.getColor(i10, 0.2f)));
        }
        getTitle().setTextColor(((Number) uVar.c()).intValue());
        getDivideLine().setBackgroundColor(((Number) uVar.c()).intValue());
        getContent().setTextColor(((Number) uVar.c()).intValue());
        setBackground(getShapeDrawable(((Number) uVar.d()).intValue(), Utils.dpToPx(getContext(), 4.0f)));
        int i11 = 8;
        getDeleteLayout().setVisibility(z6 ? 0 : 8);
        User user = chatMessage.author;
        String str = user != null ? user.nickname : null;
        String str2 = "";
        if (str == null) {
            str = "";
        }
        TextView title = getTitle();
        if (!TextUtils.isEmpty(str) && !isMessageDelete(chatMessage) && !isMessageDisable(chatMessage)) {
            i11 = 0;
        }
        title.setVisibility(i11);
        TextView title2 = getTitle();
        if (!TextUtils.isEmpty(str)) {
            str2 = str + ":";
        }
        title2.setText(str2);
        getContent().setText(getContent(chatMessage));
    }

    public /* synthetic */ ChatReplyLayout(Context context, AttributeSet attributeSet, int i10, int i11, kotlin.jvm.internal.k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
