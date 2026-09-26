package com.narvii.link.viewer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatBubbleView;
import com.narvii.model.ChatMessage;
import com.narvii.model.Media;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public class LinkSnippetImageLayout extends FrameLayout implements NVImageView.OnImageChangedListener {
    ChatBubbleView chatBubbleView;
    LinkSnippetImageView image;
    View placeholder;

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
        if (this.image.getDrawable() == null) {
            this.placeholder.setVisibility(0);
        } else {
            this.placeholder.setVisibility(8);
        }
    }

    public void setChatBubbleView(ChatBubbleView chatBubbleView) {
        this.chatBubbleView = chatBubbleView;
        this.image.setChatBubbleView(chatBubbleView);
    }

    public void setImageMedia(Media media, ChatMessage chatMessage) {
        this.image.setImageMedia(media, chatMessage);
    }

    public LinkSnippetImageLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        LinkSnippetImageView linkSnippetImageView = (LinkSnippetImageView) findViewById(R.id.image);
        this.image = linkSnippetImageView;
        linkSnippetImageView.setOnImageChangedListener(this);
        this.placeholder = findViewById(R.id.placeholder);
    }
}
