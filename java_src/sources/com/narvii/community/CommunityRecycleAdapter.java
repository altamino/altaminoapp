package com.narvii.community;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.logging.LogUtils;
import com.narvii.model.Community;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PromotionalImageView;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CommunityRecycleAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    protected List<Community> communities;
    protected NVContext context;

    class EndViewHolder extends RecyclerView.ViewHolder {
        public EndViewHolder(View view) {
            super(view);
        }
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

    protected int endItemLayoutId() {
        return R.layout.item_community_end;
    }

    protected LoggingOrigin eventOrigin() {
        return null;
    }

    protected int itemLayoutId() {
        return R.layout.incubator_community_item;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            return new GalleryViewHolder(LayoutInflater.from(this.context.getContext()).inflate(itemLayoutId(), viewGroup, false));
        }
        if (i10 == 1) {
            return new EndViewHolder(LayoutInflater.from(this.context.getContext()).inflate(endItemLayoutId(), viewGroup, false));
        }
        return null;
    }

    protected void onEndItemClicked(View view) {
    }

    protected boolean showEnd() {
        return false;
    }

    protected String statisticsSource() {
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.communities == null) {
            return 0;
        }
        return showEnd() ? this.communities.size() + 1 : this.communities.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        return this.communities.get(i10).id;
    }

    public boolean isEmpty() {
        List<Community> list = this.communities;
        return list == null || list.isEmpty();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        if (!(viewHolder instanceof GalleryViewHolder)) {
            if (viewHolder instanceof EndViewHolder) {
                ((EndViewHolder) viewHolder).itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.community.CommunityRecycleAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        CommunityRecycleAdapter.this.onEndItemClicked(view);
                    }
                });
                return;
            }
            return;
        }
        GalleryViewHolder galleryViewHolder = (GalleryViewHolder) viewHolder;
        final Community community = this.communities.get(i10);
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
    }

    protected void onItemClick(Community community) {
        new com.narvii.master.CommunityHelper(this.context).source(statisticsSource()).eventOrigin(eventOrigin()).communityDetail(community);
    }

    public void setCommunityListData(List<Community> list) {
        this.communities = list;
        notifyDataSetChanged();
    }

    public CommunityRecycleAdapter(NVContext nVContext, List<Community> list) {
        this.communities = list;
        this.context = nVContext;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        if (showEnd() && i10 == getItemCount() - 1) {
            return 1;
        }
        return super.getItemViewType(i10);
    }
}
