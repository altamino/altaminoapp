package com.narvii.blog.detail;

import android.support.v7.widget.RecyclerView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityRecycleAdapter;
import com.narvii.model.Community;
import java.util.List;

/* loaded from: classes2.dex */
public class FeedRelatedAminosAdapter extends CommunityRecycleAdapter {
    AffiliationsService affiliationsService;
    private boolean isDarkTheme;

    @Override // com.narvii.community.CommunityRecycleAdapter
    protected int itemLayoutId() {
        return R.layout.item_feed_related_amino_card;
    }

    public FeedRelatedAminosAdapter(NVContext nVContext, List<Community> list) {
        super(nVContext, list);
        this.affiliationsService = (AffiliationsService) nVContext.getService("affiliations");
    }

    @Override // com.narvii.community.CommunityRecycleAdapter, android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        super.onBindViewHolder(viewHolder, i);
        if (viewHolder instanceof CommunityRecycleAdapter.GalleryViewHolder) {
            Community community = this.communities.get(i);
            CommunityRecycleAdapter.GalleryViewHolder galleryViewHolder = (CommunityRecycleAdapter.GalleryViewHolder) viewHolder;
            galleryViewHolder.nameTextView.setTextColor(this.isDarkTheme ? -1 : -11908534);
            TextView textView = (TextView) galleryViewHolder.itemView.findViewById(R.id.join);
            AffiliationsService affiliationsService = this.affiliationsService;
            textView.setText((affiliationsService == null || !affiliationsService.contains(community.id)) ? R.string.join : R.string.enter);
        }
    }

    public void setDarkTheme(boolean z) {
        this.isDarkTheme = z;
        notifyDataSetChanged();
    }
}
