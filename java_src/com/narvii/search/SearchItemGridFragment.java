package com.narvii.search;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListAdapter;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.item.list.ItemGridAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.Item;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes3.dex */
public class SearchItemGridFragment extends NVListFragment {
    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this);
        divideColumnAdapter.setAdapter(new Adapter(), 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }

    private class Adapter extends ItemGridAdapter {
        public Adapter() {
            super(SearchItemGridFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            String stringParam = SearchItemGridFragment.this.getStringParam("q");
            if (TextUtils.isEmpty(stringParam)) {
                resetEmptyList();
                return null;
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/item");
            builderPath.param("type", "hashTags");
            builderPath.param("q", stringParam);
            builderPath.timeout(20000);
            builderPath.retry(0);
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof Item) {
                Intent intent = FeedDetailFragment.intent((Item) obj);
                intent.putExtra("Source", "Search Results");
                startActivity(intent);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
