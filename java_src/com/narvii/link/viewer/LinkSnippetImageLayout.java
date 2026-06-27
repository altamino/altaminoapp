package com.narvii.link.viewer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.chat.ChatBubbleView;
import com.narvii.model.ChatMessage;
import com.narvii.model.Media;
import com.narvii.widget.NVImageView;

/* loaded from: classes.dex */
public class LinkSnippetImageLayout extends FrameLayout implements NVImageView.OnImageChangedListener {
    ChatBubbleView chatBubbleView;
    LinkSnippetImageView image;
    View placeholder;

    public LinkSnippetImageLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.image = (LinkSnippetImageView) findViewById(R.id.image);
        this.image.setOnImageChangedListener(this);
        this.placeholder = findViewById(R.id.placeholder);
    }

    public void setChatBubbleView(ChatBubbleView chatBubbleView) {
        this.chatBubbleView = chatBubbleView;
        this.image.setChatBubbleView(chatBubbleView);
    }

    public void setImageMedia(Media media, ChatMessage chatMessage) {
        this.image.setImageMedia(media, chatMessage);
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i, Media media) {
        if (this.image.getDrawable() == null) {
            this.placeholder.setVisibility(0);
        } else {
            this.placeholder.setVisibility(8);
        }
    }
}
