package com.narvii.link.view;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.link.ILoadTrackView;
import com.narvii.link.LoadFinishListener;
import com.narvii.model.Community;

/* loaded from: classes.dex */
public class CommunityFrame extends LoadTrackView {
    CommunityInfoItem communityInfoItem;
    View content;
    ViewGroup contentContainer;

    public CommunityFrame(Context context) {
        super(context);
        FrameLayout.inflate(context, R.layout.item_snippet_nvobject_other_community_frame, this);
        this.communityInfoItem = (CommunityInfoItem) findViewById(R.id.community_layout);
        this.imageLoadTracker.addImageView(this.communityInfoItem.icon);
        this.contentContainer = (ViewGroup) findViewById(R.id.content_container);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addContentView(View view, Community community) {
        this.communityInfoItem.setCommunity(community);
        this.content = view;
        this.contentContainer.addView(view);
        if (view instanceof ILoadTrackView) {
            ((ILoadTrackView) view).setLoadFinishListener(new LoadFinishListener() { // from class: com.narvii.link.view.CommunityFrame.1
                @Override // com.narvii.link.LoadFinishListener
                public void onLoadFinished() {
                    CommunityFrame.this.checkIfAllLoadFinished();
                }
            });
        }
    }

    @Override // com.narvii.link.view.LoadTrackView, com.narvii.link.ILoadTrackView
    public boolean isAllLoaded() {
        KeyEvent.Callback callback = this.content;
        if (!(callback instanceof ILoadTrackView) || ((ILoadTrackView) callback).isAllLoaded()) {
            return super.isAllLoaded();
        }
        return false;
    }
}
