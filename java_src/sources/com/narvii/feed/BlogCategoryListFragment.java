package com.narvii.feed;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.blog.category.BlogCategoryListItem;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.BlogCategory;
import com.narvii.model.NVObject;
import com.narvii.model.api.BlogCategoryListResponse;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class BlogCategoryListFragment extends NVListFragment {

    class Adapter extends NVPagedAdapter<BlogCategory, BlogCategoryListResponse> {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogCategory> dataType() {
            return BlogCategory.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 4;
        }

        @Override // com.narvii.list.NVAdapter
        protected void markDisabled(View view, NVObject nVObject) {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends BlogCategoryListResponse> responseType() {
            return BlogCategoryListResponse.class;
        }

        public Adapter() {
            super(BlogCategoryListFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<BlogCategory> filterResponseList(List<BlogCategory> list, int i10) {
            return new FilterHelper(this).keepForLeaderAndCurator().filter(list);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            int i10 = ((BlogCategory) obj).type;
            if (i10 == 1) {
                return 1;
            }
            if (i10 == 0) {
                return 0;
            }
            if (i10 == 2) {
                return 2;
            }
            return i10 == 3 ? 3 : -1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            BlogCategory blogCategory = (BlogCategory) obj;
            int i10 = blogCategory.type;
            if (i10 == 1) {
                View viewCreateView = createView(R.layout.blog_category_picker_group_item, viewGroup, view);
                ((TextView) viewCreateView.findViewById(R.id.text)).setText(blogCategory.label);
                return viewCreateView;
            }
            if (i10 != 0 && i10 != 2 && i10 != 3) {
                return null;
            }
            View viewCreateView2 = createView(R.layout.blog_category_picker_item, viewGroup, view);
            ((BlogCategoryListItem) viewCreateView2).setCategory(blogCategory);
            markDisabled(viewCreateView2, blogCategory);
            return viewCreateView2;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof BlogCategory)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            BlogCategory blogCategory = (BlogCategory) obj;
            Intent intent = FragmentWrapperActivity.intent(BlogInCategoryListFragment.class);
            intent.putExtra("id", blogCategory.categoryId);
            intent.putExtra("blogCategory", JacksonUtils.writeAsString(blogCategory));
            intent.putExtra("isFeaturedCategory", blogCategory.type == 2);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Topic Categories");
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.path("/blog-category");
            return builder.build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 16);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getString(R.string.post_categories));
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Topic Categories Page Opened").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Topic Categories Page Opened Total");
        }
    }
}
