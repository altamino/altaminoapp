package com.narvii.community;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVArrayAdapter;
import com.narvii.model.Community;
import java.util.ArrayList;

/* loaded from: classes2.dex */
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

    public CommunityArrayListWithSectionAdapter(NVContext nVContext, Class<Community> cls) {
        super(nVContext, cls);
        this.communityLayoutHelper = new CommunityLayoutHelper(nVContext);
    }

    @Override // com.narvii.list.NVArrayAdapter
    public void setList(ArrayList<Community> arrayList) {
        super.setList(arrayList);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int i2 = getItem(i).listedStatus;
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            return 2;
        }
        return i2 == 901 ? 3 : -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Community item = getItem(i);
        int i2 = item.listedStatus;
        if (i2 == 901) {
            View viewCreateView = createView(R.layout.item_community_pre_search_section_layout, viewGroup, view);
            View viewFindViewById = viewCreateView.findViewById(R.id.pre_key);
            if (viewFindViewById instanceof TextView) {
                ((TextView) viewFindViewById).setText(item.name);
            }
            return viewCreateView;
        }
        if (i2 == 1) {
            View viewCreateView2 = createView(R.layout.incubator_searched_community_item_unlist, viewGroup, view);
            configCommunityCard(viewCreateView2, item);
            tagCellForLog(viewCreateView2, item);
            return viewCreateView2;
        }
        View viewCreateView3 = createView(R.layout.item_community_card_base, viewGroup, view);
        configCommunityCard(viewCreateView3, item);
        View viewFindViewById2 = viewCreateView3.findViewById(R.id.divider);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(showDivider() ? 0 : 8);
        }
        tagCellForLog(viewCreateView3, item);
        return viewCreateView3;
    }

    protected void configCommunityCard(View view, Community community) {
        this.communityLayoutHelper.configCommunityCard(view, community, isDarkTheme(), true);
    }
}
