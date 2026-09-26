package com.narvii.livelayer.detailview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.TranslateAnimation;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatBubbleView;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes.dex */
public class LiveLayerChatBubbleView extends ChatBubbleView {
    public TranslateAnimation animation;

    @Override // com.narvii.chat.ChatBubbleView, android.view.View
    public boolean performLongClick() {
        return true;
    }

    public LiveLayerChatBubbleView(Context context, AttributeSet attributeSet) {
        float f;
        super(context, attributeSet);
        this.animation = null;
        setBubbleStyle(false, 0);
        setBubbleArrowMiddle(true);
        if (Utils.isRtl()) {
            f = 6.0f;
        } else {
            f = 12.0f;
        }
        setPadding((int) Utils.dpToPx(context, f), (int) Utils.dpToPx(context, 4.0f), (int) Utils.dpToPx(context, Utils.isRtl() ? 12.0f : 6.0f), (int) Utils.dpToPx(context, 4.0f));
        this.bubble.setArrowSize((int) Utils.dpToPx(context, 5.0f));
        this.bubble.setRadius((int) Utils.dpToPx(context, 6.0f));
    }

    @Override // com.narvii.chat.ChatBubbleView
    public void setText(CharSequence charSequence) {
        super.setText(charSequence);
        ((TextView) findViewById(R.id.text)).setTextSize(1, 10.0f);
    }
}
