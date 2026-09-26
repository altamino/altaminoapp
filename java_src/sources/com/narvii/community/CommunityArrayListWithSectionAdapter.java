package com.narvii.community;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVArrayAdapter;
import com.narvii.model.Community;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class CommunityArrayListWithSectionAdapter extends NVArrayAdapter<Community> {
    protected static final int TYPE_FAKE_TRENDING_SECTION_ITEM = 901;
    CommunityLayoutHelper communityLayoutHelper;

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 4;
    }

    protected boolean isDarkTheme() {
        return true;
    }

    protected boolean showDivider() {
        return false;
    }

    protected void configCommunityCard(View view, Community community) {
        this.communityLayoutHelper.configCommunityCard(view, community, isDarkTheme(), true);
    }

    public CommunityArrayListWithSectionAdapter(NVContext nVContext, Class<Community> cls) {
        super(nVContext, cls);
        this.communityLayoutHelper = new CommunityLayoutHelper(nVContext);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        int i11 = getItem(i10).listedStatus;
        if (i11 == 1) {
            return 1;
        }
        if (i11 == 2) {
            return 2;
        }
        if (i11 == 901) {
            return 3;
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        int i11;
        Community item = getItem(i10);
        int i12 = item.listedStatus;
        if (i12 == 901) {
            View viewCreateView = createView(R.layout.item_community_pre_search_section_layout, viewGroup, view);
            View viewFindViewById = viewCreateView.findViewById(R.id.pre_key);
            if (viewFindViewById instanceof TextView) {
                ((TextView) viewFindViewById).setText(item.name);
            }
            return viewCreateView;
        }
        if (i12 == 1) {
            View viewCreateView2 = createView(R.layout.incubator_searched_community_item_unlist, viewGroup, view);
            configCommunityCard(viewCreateView2, item);
            tagCellForLog(viewCreateView2, item);
            return viewCreateView2;
        }
        View viewCreateView3 = createView(R.layout.item_community_card_base, viewGroup, view);
        configCommunityCard(viewCreateView3, item);
        View viewFindViewById2 = viewCreateView3.findViewById(R.id.divider);
        if (viewFindViewById2 != null) {
            if (showDivider()) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            viewFindViewById2.setVisibility(i11);
        }
        tagCellForLog(viewCreateView3, item);
        return viewCreateView3;
    }

    @Override // com.narvii.list.NVArrayAdapter
    public void setList(ArrayList<Community> arrayList) {
        super.setList(arrayList);
    }
}
