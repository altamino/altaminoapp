package com.narvii.search;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListAdapter;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.item.list.ItemGridAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.Item;
import com.narvii.util.http.ApiRequest;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class SearchItemGridFragment extends NVListFragment {

    private class Adapter extends ItemGridAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public Adapter() {
            super(SearchItemGridFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            String stringParam = SearchItemGridFragment.this.getStringParam("q");
            if (TextUtils.isEmpty(stringParam)) {
                resetEmptyList();
                return null;
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/item");
            builderPath.param("type", "hashTags");
            builderPath.param("q", stringParam);
            builderPath.timeout(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
            builderPath.retry(0);
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof Item)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Intent intent = FeedDetailFragment.intent((Item) obj);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Search Results");
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this);
        divideColumnAdapter.setAdapter(new Adapter(), 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }
}
