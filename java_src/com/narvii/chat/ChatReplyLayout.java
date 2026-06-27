package com.narvii.chat;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
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
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: ChatReplyLayout.kt */
/* loaded from: classes2.dex */
public final class ChatReplyLayout extends LinearLayout implements View.OnClickListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatReplyLayout.class), "divideLine", "getDivideLine()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatReplyLayout.class), "title", "getTitle()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatReplyLayout.class), "content", "getContent()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatReplyLayout.class), "delete", "getDelete()Lcom/narvii/widget/TintButton;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatReplyLayout.class), "deleteLayout", "getDeleteLayout()Landroid/view/View;"))};
    private HashMap _$_findViewCache;
    private final Lazy content$delegate;
    private final Lazy delete$delegate;
    private final Lazy deleteLayout$delegate;
    private final Lazy divideLine$delegate;
    private OnClickListener onChatReplyClickListener;
    private ChatMessage replayMessage;
    private final Lazy title$delegate;

    /* compiled from: ChatReplyLayout.kt */
    public interface OnClickListener {
        void onCancelClick(View view, ChatMessage chatMessage);

        void onItemClick(View view, ChatMessage chatMessage);
    }

    public ChatReplyLayout(Context context) {
        this(context, null, 0, 6, null);
    }

    public ChatReplyLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public final TextView getContent() {
        Lazy lazy = this.content$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (TextView) lazy.getValue();
    }

    public final TintButton getDelete() {
        Lazy lazy = this.delete$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (TintButton) lazy.getValue();
    }

    public final View getDeleteLayout() {
        Lazy lazy = this.deleteLayout$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (View) lazy.getValue();
    }

    public final View getDivideLine() {
        Lazy lazy = this.divideLine$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (View) lazy.getValue();
    }

    public final TextView getTitle() {
        Lazy lazy = this.title$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (TextView) lazy.getValue();
    }

    public final void setMessage(ChatMessage chatMessage) {
        setMessage$default(this, chatMessage, 0, false, 6, null);
    }

    public final void setMessage(ChatMessage chatMessage, int i) {
        setMessage$default(this, chatMessage, i, false, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatReplyLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.divideLine$delegate = bind(R.id.divide_line);
        this.title$delegate = bind(R.id.title);
        this.content$delegate = bind(R.id.content);
        this.delete$delegate = bind(R.id.delete);
        this.deleteLayout$delegate = bind(R.id.delete_layout);
        LayoutInflater.from(context).inflate(R.layout.layout_chat_reply, (ViewGroup) this, true);
        getDelete().setOnClickListener(this);
        setOnClickListener(this);
    }

    public /* synthetic */ ChatReplyLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final OnClickListener getOnChatReplyClickListener() {
        return this.onChatReplyClickListener;
    }

    public final void setOnChatReplyClickListener(OnClickListener onClickListener) {
        this.onChatReplyClickListener = onClickListener;
    }

    public final ChatMessage getReplayMessage() {
        return this.replayMessage;
    }

    public final void setReplayMessage(ChatMessage chatMessage) {
        this.replayMessage = chatMessage;
    }

    public static /* synthetic */ void setMessage$default(ChatReplyLayout chatReplyLayout, ChatMessage chatMessage, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        chatReplyLayout.setMessage(chatMessage, i, z);
    }

    public final void setMessage(ChatMessage chatMessage, int i, boolean z) {
        Pair pair;
        String str;
        this.replayMessage = chatMessage;
        if (chatMessage == null) {
            return;
        }
        if (i == 0) {
            pair = new Pair(Integer.valueOf((int) 3427420746L), Integer.valueOf((int) 2583691263L));
        } else {
            pair = new Pair(Integer.valueOf(Utils.getColor(i, 0.8f)), Integer.valueOf(Utils.getColor(i, 0.2f)));
        }
        getTitle().setTextColor(((Number) pair.getFirst()).intValue());
        getDivideLine().setBackgroundColor(((Number) pair.getFirst()).intValue());
        getContent().setTextColor(((Number) pair.getFirst()).intValue());
        setBackground(getShapeDrawable(((Number) pair.getSecond()).intValue(), Utils.dpToPx(getContext(), 4.0f)));
        getDeleteLayout().setVisibility(z ? 0 : 8);
        User user = chatMessage.author;
        String str2 = "";
        if (user == null || (str = user.nickname) == null) {
            str = "";
        }
        getTitle().setVisibility((TextUtils.isEmpty(str) || isMessageDelete(chatMessage) || isMessageDisable(chatMessage)) ? 8 : 0);
        TextView title = getTitle();
        if (!TextUtils.isEmpty(str)) {
            str2 = str + ':';
        }
        title.setText(str2);
        getContent().setText(getContent(chatMessage));
    }

    private final boolean isMessageDelete(ChatMessage chatMessage) {
        int i = chatMessage.type;
        return i == 100 || i == 119;
    }

    private final boolean isMessageDisable(ChatMessage chatMessage) {
        return !chatMessage.isAccessibleByUser(null);
    }

    private final String getContent(ChatMessage chatMessage) throws Resources.NotFoundException {
        String string;
        if (isMessageDelete(chatMessage)) {
            String string2 = getContext().getString(R.string.chat_not_existed);
            Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.string.chat_not_existed)");
            return string2;
        }
        if (isMessageDisable(chatMessage)) {
            String string3 = getContext().getString(R.string.chat_disabled_message2);
            Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.string.chat_disabled_message2)");
            return string3;
        }
        if (!TextUtils.isEmpty(chatMessage.content)) {
            String str = chatMessage.content;
            Intrinsics.checkExpressionValueIsNotNull(str, "m.content");
            return str;
        }
        if (chatMessage.mediaType == 110) {
            String voiceMessageSummary = VoiceMessageUtils.getVoiceMessageSummary(getContext(), chatMessage.getDuration());
            Intrinsics.checkExpressionValueIsNotNull(voiceMessageSummary, "VoiceMessageUtils.getVoi…mary(context, m.duration)");
            return voiceMessageSummary;
        }
        if (chatMessage.isStickerMessage()) {
            Sticker stickerInfo = chatMessage.getStickerInfo();
            if (TextUtils.isEmpty(stickerInfo != null ? stickerInfo.name : null)) {
                string = getResources().getString(R.string.sticker);
            } else {
                if (stickerInfo == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                string = stickerInfo.name;
            }
            return '[' + string + ']';
        }
        if (chatMessage.mediaType == 100) {
            return "[" + getContext().getString(R.string.post_entry_new_image) + "]";
        }
        if (chatMessage.media() != null) {
            Media media = chatMessage.media();
            if (media == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            if (media.isVideo()) {
                Media media2 = chatMessage.media();
                if (media2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (media2.type != 103) {
                    return "[" + getContext().getString(R.string.video) + "]";
                }
            }
        }
        return "[" + getContext().getString(R.string.chat_message) + "]";
    }

    public final GradientDrawable getShapeDrawable(int i, float f) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(f);
        gradientDrawable.setColor(i);
        return gradientDrawable;
    }

    private final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.chat.ChatReplyLayout.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return ChatReplyLayout.this.findViewById(i);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        Intrinsics.checkParameterIsNotNull(v, "v");
        if (v.getId() == R.id.delete) {
            OnClickListener onClickListener = this.onChatReplyClickListener;
            if (onClickListener != null) {
                onClickListener.onCancelClick(v, this.replayMessage);
                return;
            }
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.checkDetail).area("QuoteArea").send();
        OnClickListener onClickListener2 = this.onChatReplyClickListener;
        if (onClickListener2 != null) {
            onClickListener2.onItemClick(v, this.replayMessage);
        }
        ChatMessage chatMessage = this.replayMessage;
        if (chatMessage == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        if (isMessageDelete(chatMessage)) {
            return;
        }
        ChatMessage chatMessage2 = this.replayMessage;
        if (chatMessage2 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        if (isMessageDisable(chatMessage2)) {
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(ChatMessageItemDetailFragment.class);
        ChatMessage chatMessage3 = this.replayMessage;
        if (chatMessage3 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        intent.putExtra(ChatMessageItemDetailFragment.KEY_MESSAGE_ID, chatMessage3.id());
        ChatMessage chatMessage4 = this.replayMessage;
        if (chatMessage4 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        intent.putExtra("threadId", chatMessage4.threadId);
        intent.putExtra("seeAll", false);
        getContext().startActivity(intent);
    }
}
