package com.narvii.community;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.logging.LogUtils;
import com.narvii.model.Community;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public abstract class CommunityListWithSectionAdapter extends BaseCommunityListAdapter {
    protected static final int TYPE_FAKE_TRENDING_SECTION_ITEM = 901;
    protected List<Community> l;

    @Override // com.narvii.community.BaseCommunityListAdapter, com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 4;
    }

    @Override // com.narvii.list.NVPagedAdapter
    public List<?> list() {
        return this.l;
    }

    protected String sectionName() {
        return null;
    }

    protected boolean supportUnlistedStatus() {
        return false;
    }

    protected List<Community> configTopCell() {
        ArrayList arrayList = new ArrayList();
        Community community = new Community();
        community.name = sectionName();
        community.listedStatus = 901;
        arrayList.add(community);
        return arrayList;
    }

    @Override // com.narvii.community.BaseCommunityListAdapter, com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        if (!(obj instanceof Community)) {
            return -1;
        }
        int i10 = ((Community) obj).listedStatus;
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 2) {
            return 2;
        }
        return i10 == 901 ? 3 : -1;
    }

    @Override // com.narvii.community.BaseCommunityListAdapter, com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (!(obj instanceof Community)) {
            return null;
        }
        Community community = (Community) obj;
        if (community.listedStatus == 901) {
            View viewCreateView = createView(R.layout.item_community_pre_search_section_layout, viewGroup, view);
            View viewFindViewById = viewCreateView.findViewById(R.id.pre_key);
            if (viewFindViewById instanceof TextView) {
                ((TextView) viewFindViewById).setText(community.name);
            }
            viewCreateView.setBackgroundColor(getTrendingSectionItemBackgroundColor());
            LogUtils.notSetCellTag(viewCreateView);
            return viewCreateView;
        }
        if (!supportUnlistedStatus() || community.listedStatus != 1) {
            return super.getItemView(obj, view, viewGroup);
        }
        View viewCreateView2 = createView(R.layout.incubator_searched_community_item_unlist, viewGroup, view);
        configCommunityCard(viewCreateView2, community, null);
        View viewFindViewById2 = viewCreateView2.findViewById(R.id.community_invite_lock);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(community.shouldShowLock() ? 0 : 8);
        }
        return viewCreateView2;
    }

    public CommunityListWithSectionAdapter(NVContext nVContext) {
        super(nVContext);
    }

    protected int getTrendingSectionItemBackgroundColor() {
        return getContext().getResources().getColor(R.color.default_section_color);
    }

    protected void innerNotifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        if (list() != null && !list().isEmpty()) {
            if (i10 != 0) {
                return true;
            }
            return false;
        }
        return super.isEnabled(i10);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        List<? extends Community> listRawList = rawList();
        if (listRawList == null) {
            this.l = null;
        } else if (listRawList.isEmpty()) {
            this.l = new ArrayList();
        } else {
            ArrayList arrayList = new ArrayList();
            this.l = arrayList;
            arrayList.addAll(0, configTopCell());
            this.l.addAll(listRawList);
        }
        super.notifyDataSetChanged();
    }
}
