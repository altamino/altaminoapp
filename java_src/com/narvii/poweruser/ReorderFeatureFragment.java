package com.narvii.poweruser;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.feed.FeaturedResponse;
import com.narvii.feed.FeedListAdapter;
import com.narvii.list.DragSortPageFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.Feed;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class ReorderFeatureFragment extends DragSortPageFragment implements FragmentOnBackListener {
    NVPagedAdapter adapter;
    List<Feed> originalFeeds = new ArrayList();

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(getString(R.string.reorder_featured_posts));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(android.R.string.ok);
        NVPagedAdapter nVPagedAdapter = this.adapter;
        menuItemFindItem.setVisible(nVPagedAdapter != null && nVPagedAdapter.list().size() > 0);
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            if (this.adapter != null) {
                this.originalFeeds = new ArrayList();
                Iterator<?> it = this.adapter.list().iterator();
                while (it.hasNext()) {
                    this.originalFeeds.add((Feed) it.next());
                }
            }
            ArrayList arrayList = new ArrayList(this.adapter.list());
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Feed realFeed = ((Feed) it2.next()).getRealFeed();
                if (realFeed.featureType() != 2) {
                    arrayNodeCreateArrayNode.add(realFeed.id());
                }
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.post().path("/feed/featured/reorder");
            builder.param("objectIdList", arrayNodeCreateArrayNode);
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poweruser.ReorderFeatureFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    NVToast.makeText(ReorderFeatureFragment.this.getContext(), ReorderFeatureFragment.this.getString(R.string.reorder_featured_posts_successful), 1).show();
                    if (ReorderFeatureFragment.this.isFinishing()) {
                        return;
                    }
                    ReorderFeatureFragment.this.finish();
                }
            };
            progressDialog.show();
            ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.DragSortPageFragment, com.mobeta.android.dslv.DragSortListView.DropListener
    public void drop(int i, int i2) {
        super.drop(i, i2);
    }

    @Override // com.narvii.list.DragSortPageFragment
    protected NVPagedAdapter createMainAdapter() {
        NVPagedAdapter nVPagedAdapter = this.adapter;
        if (nVPagedAdapter != null) {
            return nVPagedAdapter;
        }
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    class Adapter extends FeedListAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return false;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 50;
        }

        public Adapter() {
            super(ReorderFeatureFragment.this);
            this.source = "Reorder Featured Posts";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ListResponse<? extends Feed>> responseType() {
            return FeaturedResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/feed/featured");
            builderPath.tag(Boolean.valueOf(z));
            return builderPath.build();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof Feed)) {
                return null;
            }
            Feed realFeed = ((Feed) obj).getRealFeed();
            View viewInflate = this.inflater.inflate(R.layout.feature_feed_sort_item, viewGroup, false);
            if (realFeed.firstMedia() == null) {
                ((ThumbImageView) viewInflate.findViewById(R.id.icon)).setImageDrawable(ReorderFeatureFragment.this.getResources().getDrawable(R.drawable.ic_feed_reorder_icon_null));
            } else {
                ((ThumbImageView) viewInflate.findViewById(R.id.icon)).setImageMedia(realFeed.firstMedia());
            }
            ((TextView) viewInflate.findViewById(R.id.title)).setText(realFeed.title());
            ((TextView) viewInflate.findViewById(R.id.content)).setText(realFeed.compactContent());
            return viewInflate;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<Feed> filterResponseList(List<Feed> list, int i) {
            ArrayList arrayList = new ArrayList();
            for (Feed feed : list) {
                if (feed.getRealFeed().featureType() != 2) {
                    arrayList.add(feed);
                }
            }
            List<Feed> listFilterResponseList = super.filterResponseList(arrayList, i);
            ReorderFeatureFragment.this.originalFeeds.addAll(listFilterResponseList);
            return listFilterResponseList;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected void onPageResponse(ApiRequest apiRequest, ListResponse<? extends Feed> listResponse, int i) {
            super.onPageResponse(apiRequest, listResponse, i);
            invalidateOptionsMenu();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createLoadMoreItem(ViewGroup viewGroup, View view) {
            if (list() != null && list().size() < pageSize()) {
                return new View(viewGroup.getContext());
            }
            return super.createLoadMoreItem(viewGroup, view);
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (!anyChange()) {
            return false;
        }
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setTitle(getString(R.string.save_feature_reorder));
        alertDialog.addButton(R.string.no, 0, (View.OnClickListener) null);
        alertDialog.addButton(R.string.yes, 0, new View.OnClickListener() { // from class: com.narvii.poweruser.ReorderFeatureFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ReorderFeatureFragment.this.finish();
            }
        });
        alertDialog.show();
        return true;
    }

    private boolean anyChange() {
        return !this.adapter.list().equals(this.originalFeeds);
    }
}
