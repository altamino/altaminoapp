package com.narvii.community;

import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVContext;
import com.narvii.community.search.SearchCommunityListResponse;
import com.narvii.lib.R;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.Community;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public abstract class BaseCommunityListAdapter extends NVPagedAdapter<Community, SearchCommunityListResponse> {
    protected CommunityLayoutHelper communityLayoutHelper;
    String invitationId;
    private Typeface typeface;

    protected boolean communityNameSpecialType() {
        return true;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<Community> filterResponseList(List<Community> list, int i) {
        return list;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    protected boolean isDarkTheme() {
        return false;
    }

    protected boolean showDivider() {
        return true;
    }

    public void setInvitationId(String str) {
        if (str == null) {
            return;
        }
        this.invitationId = str;
    }

    public BaseCommunityListAdapter(NVContext nVContext) {
        super(nVContext);
        this.communityLayoutHelper = new CommunityLayoutHelper(nVContext);
    }

    protected String getSearchLanguage() {
        return Locale.getDefault().getLanguage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class dataType() {
        return Community.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class responseType() {
        return SearchCommunityListResponse.class;
    }

    protected int itemViewLayoutId() {
        return R.layout.item_community_card_base;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (!(obj instanceof Community)) {
            return null;
        }
        View viewCreateView = createView(itemViewLayoutId(), viewGroup, view);
        configCommunityCard(viewCreateView, (Community) obj, null);
        return viewCreateView;
    }

    protected void configCommunityCard(View view, Community community, NVImageView.OnImageChangedListener onImageChangedListener) {
        this.communityLayoutHelper.configCommunityCard(view, community, isDarkTheme(), communityNameSpecialType(), onImageChangedListener);
        View viewFindViewById = view.findViewById(R.id.divider);
        if (viewFindViewById != null) {
            if (!showDivider()) {
                viewFindViewById.setVisibility(8);
                return;
            }
            Community community2 = null;
            if (list() != null && list().size() > 0) {
                community2 = (Community) list().get(list().size() - 1);
            }
            if (Utils.isEqualsNotNull(community, community2)) {
                viewFindViewById.setVisibility(4);
            } else {
                viewFindViewById.setVisibility(0);
            }
        }
    }
}
