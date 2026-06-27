package com.narvii.feed;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.blog.category.BlogCategoryListItem;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.BlogCategory;
import com.narvii.model.NVObject;
import com.narvii.model.api.BlogCategoryListResponse;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import java.util.List;

/* loaded from: classes2.dex */
public class BlogCategoryListFragment extends NVListFragment {
    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getString(R.string.post_categories));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }

    class Adapter extends NVPagedAdapter<BlogCategory, BlogCategoryListResponse> {
        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 4;
        }

        @Override // com.narvii.list.NVAdapter
        protected void markDisabled(View view, NVObject nVObject) {
        }

        public Adapter() {
            super(BlogCategoryListFragment.this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogCategory> dataType() {
            return BlogCategory.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends BlogCategoryListResponse> responseType() {
            return BlogCategoryListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.path("/blog-category");
            return builder.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            int i = ((BlogCategory) obj).type;
            if (i == 1) {
                return 1;
            }
            if (i == 0) {
                return 0;
            }
            if (i == 2) {
                return 2;
            }
            return i == 3 ? 3 : -1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            BlogCategory blogCategory = (BlogCategory) obj;
            int i = blogCategory.type;
            if (i == 1) {
                View viewCreateView = createView(R.layout.blog_category_picker_group_item, viewGroup, view);
                ((TextView) viewCreateView.findViewById(R.id.text)).setText(blogCategory.label);
                return viewCreateView;
            }
            if (i != 0 && i != 2 && i != 3) {
                return null;
            }
            View viewCreateView2 = createView(R.layout.blog_category_picker_item, viewGroup, view);
            ((BlogCategoryListItem) viewCreateView2).setCategory(blogCategory);
            markDisabled(viewCreateView2, blogCategory);
            return viewCreateView2;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<BlogCategory> filterResponseList(List<BlogCategory> list, int i) {
            return new FilterHelper(this).keepForLeaderAndCurator().filter(list);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof BlogCategory) {
                BlogCategory blogCategory = (BlogCategory) obj;
                Intent intent = FragmentWrapperActivity.intent(BlogInCategoryListFragment.class);
                intent.putExtra("id", blogCategory.categoryId);
                intent.putExtra("blogCategory", JacksonUtils.writeAsString(blogCategory));
                intent.putExtra("isFeaturedCategory", blogCategory.type == 2);
                intent.putExtra("Source", "Topic Categories");
                startActivity(intent);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
