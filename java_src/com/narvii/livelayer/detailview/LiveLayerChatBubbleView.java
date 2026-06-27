package com.narvii.livelayer.detailview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.TranslateAnimation;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.ChatBubbleView;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class LiveLayerChatBubbleView extends ChatBubbleView {
    public TranslateAnimation animation;

    @Override // com.narvii.chat.ChatBubbleView, android.view.View
    public boolean performLongClick() {
        return true;
    }

    public LiveLayerChatBubbleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.animation = null;
        setBubbleStyle(false, 0);
        setBubbleArrowMiddle(true);
        setPadding((int) Utils.dpToPx(context, Utils.isRtl() ? 6.0f : 12.0f), (int) Utils.dpToPx(context, 4.0f), (int) Utils.dpToPx(context, Utils.isRtl() ? 12.0f : 6.0f), (int) Utils.dpToPx(context, 4.0f));
        this.bubble.setArrowSize((int) Utils.dpToPx(context, 5.0f));
        this.bubble.setRadius((int) Utils.dpToPx(context, 6.0f));
    }

    @Override // com.narvii.chat.ChatBubbleView
    public void setText(CharSequence charSequence) {
        super.setText(charSequence);
        ((TextView) findViewById(R.id.text)).setTextSize(1, 10.0f);
    }
}
