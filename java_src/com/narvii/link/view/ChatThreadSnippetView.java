package com.narvii.link.view;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.ChatThread;
import com.narvii.widget.NVImageView;

/* loaded from: classes.dex */
public class ChatThreadSnippetView extends NVLinkSnippetView<ChatThread> {
    View fansOnlyIndicator;
    NVImageView imageView;
    TextView membersCount;
    TextView title;

    public ChatThreadSnippetView(Context context) {
        super(context);
        FrameLayout.inflate(getContext(), R.layout.item_snippet_chat_thread, this);
        this.imageView = (NVImageView) findViewById(R.id.image);
        this.title = (TextView) findViewById(R.id.title);
        this.membersCount = (TextView) findViewById(R.id.member_count);
        this.fansOnlyIndicator = findViewById(R.id.fans_only_content_indicator);
    }

    @Override // com.narvii.link.view.NVLinkSnippetView
    public void setObject(ChatThread chatThread) {
        this.imageView.setImageUrl(chatThread.icon);
        this.title.setText(chatThread.title);
        this.membersCount.setText(chatThread.membersCount + "");
        this.imageLoadTracker.addImageView(this.imageView);
        View view = this.fansOnlyIndicator;
        if (view != null) {
            view.setVisibility(chatThread.isFansOnly() ? 0 : 8);
        }
    }
}
