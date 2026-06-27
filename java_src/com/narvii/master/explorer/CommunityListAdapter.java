package com.narvii.master.explorer;

import android.view.View;
import android.widget.ListAdapter;
import com.narvii.app.NVContext;
import com.narvii.community.BaseCommunityListAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityHelper;
import com.narvii.model.Community;
import com.narvii.util.logging.LoggingOrigin;

/* loaded from: classes3.dex */
public abstract class CommunityListAdapter extends BaseCommunityListAdapter {
    String categoryName;
    public LoggingOrigin loggingOrigin;
    public String source;

    protected void completeBuilder(LogEvent.Builder builder) {
    }

    public CommunityListAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof Community) {
            communityDetail((Community) obj);
            LogEvent.Builder clickEventBuilder = getClickEventBuilder(obj, ActSemantic.checkDetail);
            completeBuilder(clickEventBuilder);
            clickEventBuilder.send();
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    void communityDetail(Community community) {
        if (community == null || community.id == 0) {
            return;
        }
        new CommunityHelper(this.context).source(this.source).eventOrigin(this.loggingOrigin).communityDetail(community);
    }
}
