package com.narvii.community;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.logging.LogUtils;
import com.narvii.model.Community;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PromotionalImageView;
import java.util.List;

/* loaded from: classes2.dex */
public class CommunityRecycleAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    protected List<Community> communities;
    protected NVContext context;

    protected int endItemLayoutId() {
        return R.layout.item_community_end;
    }

    protected LoggingOrigin eventOrigin() {
        return null;
    }

    protected int itemLayoutId() {
        return R.layout.incubator_community_item;
    }

    protected void onEndItemClicked(View view) {
    }

    protected boolean showEnd() {
        return false;
    }

    protected String statisticsSource() {
        return null;
    }

    public CommunityRecycleAdapter(NVContext nVContext, List<Community> list) {
        this.communities = list;
        this.context = nVContext;
    }

    public void setCommunityListData(List<Community> list) {
        this.communities = list;
        notifyDataSetChanged();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (showEnd() && i == getItemCount() - 1) {
            return 1;
        }
        return super.getItemViewType(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public class GalleryViewHolder extends RecyclerView.ViewHolder {
        public NVImageView iconImageView;
        public PromotionalImageView launchImageView;
        public TextView nameTextView;

        public GalleryViewHolder(View view) {
            super(view);
            this.launchImageView = (PromotionalImageView) view.findViewById(R.id.image);
            this.nameTextView = (TextView) view.findViewById(R.id.text);
            this.iconImageView = (NVImageView) view.findViewById(R.id.icon);
        }
    }

    class EndViewHolder extends RecyclerView.ViewHolder {
        public EndViewHolder(View view) {
            super(view);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.communities.get(i).id;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new GalleryViewHolder(LayoutInflater.from(this.context.getContext()).inflate(itemLayoutId(), viewGroup, false));
        }
        if (i == 1) {
            return new EndViewHolder(LayoutInflater.from(this.context.getContext()).inflate(endItemLayoutId(), viewGroup, false));
        }
        return null;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder instanceof GalleryViewHolder) {
            GalleryViewHolder galleryViewHolder = (GalleryViewHolder) viewHolder;
            final Community community = this.communities.get(i);
            if (community == null) {
                return;
            }
            View view = galleryViewHolder.itemView;
            if (view != null) {
                LogUtils.setAttachedObject(view, community);
            }
            PromotionalImageView promotionalImageView = galleryViewHolder.launchImageView;
            if (promotionalImageView != null) {
                promotionalImageView.setCommunity(community);
            }
            TextView textView = galleryViewHolder.nameTextView;
            if (textView != null) {
                textView.setText(community.name);
            }
            NVImageView nVImageView = galleryViewHolder.iconImageView;
            if (nVImageView != null) {
                nVImageView.setImageUrl(community.icon);
                galleryViewHolder.iconImageView.setStrokeColor(community.themeColor());
            }
            galleryViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.community.CommunityRecycleAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    CommunityRecycleAdapter.this.onItemClick(community);
                }
            });
            return;
        }
        if (viewHolder instanceof EndViewHolder) {
            ((EndViewHolder) viewHolder).itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.community.CommunityRecycleAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    CommunityRecycleAdapter.this.onEndItemClicked(view2);
                }
            });
        }
    }

    protected void onItemClick(Community community) {
        new com.narvii.master.CommunityHelper(this.context).source(statisticsSource()).eventOrigin(eventOrigin()).communityDetail(community);
    }

    public boolean isEmpty() {
        List<Community> list = this.communities;
        return list == null || list.isEmpty();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.communities == null) {
            return 0;
        }
        return showEnd() ? this.communities.size() + 1 : this.communities.size();
    }
}
