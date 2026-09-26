package com.narvii.blog.detail;

import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityRecycleAdapter;
import com.narvii.model.Community;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FeedRelatedAminosAdapter extends CommunityRecycleAdapter {
    AffiliationsService affiliationsService;
    private boolean isDarkTheme;

    @Override // com.narvii.community.CommunityRecycleAdapter
    protected int itemLayoutId() {
        return R.layout.item_feed_related_amino_card;
    }

    public void setDarkTheme(boolean z6) {
        this.isDarkTheme = z6;
        notifyDataSetChanged();
    }

    public FeedRelatedAminosAdapter(NVContext nVContext, List<Community> list) {
        super(nVContext, list);
        this.affiliationsService = (AffiliationsService) nVContext.getService("affiliations");
    }

    @Override // com.narvii.community.CommunityRecycleAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        int i11;
        int i12;
        super.onBindViewHolder(viewHolder, i10);
        if (viewHolder instanceof CommunityRecycleAdapter.GalleryViewHolder) {
            Community community = this.communities.get(i10);
            CommunityRecycleAdapter.GalleryViewHolder galleryViewHolder = (CommunityRecycleAdapter.GalleryViewHolder) viewHolder;
            TextView textView = galleryViewHolder.nameTextView;
            if (this.isDarkTheme) {
                i11 = -1;
            } else {
                i11 = -11908534;
            }
            textView.setTextColor(i11);
            TextView textView2 = (TextView) galleryViewHolder.itemView.findViewById(R.id.join);
            AffiliationsService affiliationsService = this.affiliationsService;
            if (affiliationsService != null && affiliationsService.contains(community.id)) {
                i12 = R.string.enter;
            } else {
                i12 = R.string.join;
            }
            textView2.setText(i12);
        }
    }
}
