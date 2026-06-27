package com.narvii.catalog.category;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.ItemCategory;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.CategoryListResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class CategoryPickerFragment extends NVListFragment {
    Adapter adapter;
    Drawable bg;
    String categoryId;
    boolean multiPick;
    ItemCategory selectedCategory;
    String selectedCategoryId;
    final ArrayList<ItemCategory> selections = new ArrayList<>();

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        String stringParam = getStringParam("title");
        if (TextUtils.isEmpty(stringParam)) {
            setTitle(R.string.catalog_pick_category);
        } else {
            setTitle(stringParam);
        }
        this.multiPick = getBooleanParam("multiPick");
        String stringParam2 = getStringParam("categoryId");
        this.categoryId = stringParam2;
        this.selectedCategoryId = stringParam2;
        this.bg = new ColorDrawable(1149798536);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) throws Resources.NotFoundException {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.catalog_category_picker_header);
        View view = new View(getContext());
        view.setMinimumHeight(dimensionPixelSize);
        listView.addHeaderView(view, "header", false);
        View view2 = new View(getContext());
        view2.setMinimumHeight(dimensionPixelSize);
        listView.addFooterView(view2, "footer", false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.catalog_category_empty_view);
        view.findViewById(R.id.empty_add).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.catalog.category.CategoryPickerFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                CategoryPickerFragment.this.addCategory(null);
            }
        });
    }

    void addCategory(ItemCategory itemCategory) {
        Intent intent = new Intent(getContext(), (Class<?>) CategoryPostActivity.class);
        CategoryPost categoryPost = new CategoryPost();
        if (itemCategory == null) {
            CategoryListResponse categoryListResponse = this.adapter.response;
            if (categoryListResponse == null) {
                return;
            } else {
                categoryPost.parentCategoryId = categoryListResponse.getRootCategory().categoryId;
            }
        } else {
            categoryPost.parentCategoryId = itemCategory.categoryId;
        }
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(categoryPost));
        startActivity(intent);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        String str;
        super.onPrepareOptionsMenu(menu);
        menu.findItem(android.R.string.ok).setVisible((this.multiPick && this.adapter.isListShown()) || !((str = this.selectedCategoryId) == null || Utils.isEqualsNotNull(this.categoryId, str)));
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            Intent intent = new Intent();
            if (this.multiPick) {
                intent.putExtra("categoryList", JacksonUtils.writeAsString(this.selections));
            } else {
                intent.putExtra("category", JacksonUtils.writeAsString(this.selectedCategory));
            }
            intent.putExtra("itemId", getStringParam("itemId"));
            setResult(-1, intent);
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter();
        if (bundle == null) {
            this.adapter.response = (CategoryListResponse) JacksonUtils.readAs(getStringParam("resp"), CategoryListResponse.class);
        }
        return this.adapter;
    }

    static class Stub {
        ItemCategory category;
        boolean leaf;
        int level;

        Stub() {
        }
    }

    public class Adapter extends NVAdapter implements NotificationListener {
        String errorMsg;
        final int indent;
        ArrayList<Stub> list;
        final ApiResponseListener<CategoryListResponse> listener;
        CategoryListResponse response;
        final String uid;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }

        public Adapter() {
            super(CategoryPickerFragment.this);
            this.listener = new ApiResponseListener<CategoryListResponse>(CategoryListResponse.class) { // from class: com.narvii.catalog.category.CategoryPickerFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, CategoryListResponse categoryListResponse) throws Exception {
                    Adapter.this.setResponse(categoryListResponse);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    Adapter adapter = Adapter.this;
                    adapter.errorMsg = str;
                    adapter.notifyDataSetChanged();
                }
            };
            this.uid = CategoryPickerFragment.this.getStringParam("uid");
            this.indent = CategoryPickerFragment.this.getResources().getDimensionPixelSize(R.dimen.catalog_category_level_indent);
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            CategoryListResponse categoryListResponse = this.response;
            if (categoryListResponse == null) {
                sendRequest();
            } else {
                setResponse(categoryListResponse);
            }
        }

        @Override // com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putString("response", JacksonUtils.safeWriteAsString(this.response));
            return bundleOnSaveInstanceState;
        }

        @Override // com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            this.response = (CategoryListResponse) JacksonUtils.readAs(bundle.getString("response"), CategoryListResponse.class);
        }

        void sendRequest() {
            ApiService apiService = (ApiService) getService("api");
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/item-category");
            if (this.uid != null) {
                builderPath.param("type", GlobalProfileFragment.KEY_USER);
                builderPath.param("q", this.uid);
            }
            apiService.exec(builderPath.build(), this.listener);
        }

        void setResponse(CategoryListResponse categoryListResponse) {
            this.response = categoryListResponse;
            CategoryPickerFragment categoryPickerFragment = CategoryPickerFragment.this;
            if (categoryPickerFragment.multiPick) {
                categoryPickerFragment.selections.clear();
                ArrayList listAs = JacksonUtils.readListAs(CategoryPickerFragment.this.getStringParam("categoryIdList"), String.class);
                if (listAs != null) {
                    Iterator it = listAs.iterator();
                    while (it.hasNext()) {
                        ItemCategory itemCategory = (ItemCategory) Utils.searchForId(categoryListResponse.itemCategoryList, (String) it.next());
                        if (itemCategory != null) {
                            CategoryPickerFragment.this.selections.add(itemCategory);
                        }
                    }
                }
            }
            this.list = new ArrayList<>();
            append(this.list, categoryListResponse, categoryListResponse.getRootCategory(), 0);
            invalidateOptionsMenu();
            notifyDataSetChanged();
        }

        private void append(ArrayList<Stub> arrayList, CategoryListResponse categoryListResponse, ItemCategory itemCategory, int i) {
            if (itemCategory == null) {
                return;
            }
            boolean zIsLeafCategory = categoryListResponse.isLeafCategory(itemCategory.categoryId);
            if (itemCategory.parentCategoryId != null) {
                Stub stub = new Stub();
                stub.category = itemCategory;
                stub.level = i;
                stub.leaf = zIsLeafCategory;
                arrayList.add(stub);
            }
            if (zIsLeafCategory) {
                return;
            }
            CategoryPickerFragment categoryPickerFragment = CategoryPickerFragment.this;
            if (categoryPickerFragment.multiPick) {
                if (Utils.removeId(categoryPickerFragment.selections, itemCategory.categoryId) > 0) {
                    notifyDataSetChanged();
                    invalidateOptionsMenu();
                }
            } else if (Utils.isEqualsNotNull(categoryPickerFragment.selectedCategoryId, itemCategory.categoryId)) {
                CategoryPickerFragment categoryPickerFragment2 = CategoryPickerFragment.this;
                categoryPickerFragment2.selectedCategoryId = categoryPickerFragment2.categoryId;
                categoryPickerFragment2.selectedCategory = null;
                notifyDataSetChanged();
                invalidateOptionsMenu();
            }
            Iterator<ItemCategory> it = categoryListResponse.getSubCategoryList(itemCategory.categoryId).iterator();
            while (it.hasNext()) {
                append(arrayList, categoryListResponse, it.next(), i + 1);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            ArrayList<Stub> arrayList = this.list;
            if (arrayList == null || arrayList.isEmpty()) {
                return 0;
            }
            return this.list.size() + 1;
        }

        @Override // android.widget.Adapter
        public Stub getItem(int i) {
            if (i < this.list.size()) {
                return this.list.get(i);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            if (getItem(i) == null) {
                return 0L;
            }
            return r3.category.hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return getItem(i) == null ? 1 : 0;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            Stub item = getItem(i);
            if (item == null) {
                return true;
            }
            if (item.leaf) {
                return !Utils.isEqualsNotNull(item.category.categoryId, CategoryPickerFragment.this.categoryId);
            }
            return false;
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return this.errorMsg;
        }

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            this.errorMsg = null;
            sendRequest();
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return this.list != null;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            refreshMonitorStart(i, callback);
            sendRequest();
            refreshMonitorEnd();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            boolean zIsEqualsNotNull;
            Resources resources;
            int i2;
            Stub item = getItem(i);
            if (item == null) {
                return createView(R.layout.catalog_category_picker_add, viewGroup, view);
            }
            boolean zIsEqualsNotNull2 = Utils.isEqualsNotNull(item.category.categoryId, CategoryPickerFragment.this.categoryId);
            View viewCreateView = createView(R.layout.catalog_category_picker_item, viewGroup, view);
            viewCreateView.findViewById(R.id.stub1).getLayoutParams().width = this.indent * (item.level - 1);
            viewCreateView.findViewById(R.id.stub1).requestLayout();
            ((TextView) viewCreateView.findViewById(R.id.label)).setText(item.category.label);
            int i3 = 0;
            if (item.leaf) {
                CategoryPickerFragment categoryPickerFragment = CategoryPickerFragment.this;
                if (categoryPickerFragment.multiPick) {
                    zIsEqualsNotNull = Utils.containsId(categoryPickerFragment.selections, item.category.categoryId);
                } else {
                    zIsEqualsNotNull = Utils.isEqualsNotNull(item.category.categoryId, categoryPickerFragment.selectedCategoryId);
                }
                viewCreateView.findViewById(R.id.radio).setVisibility(zIsEqualsNotNull2 ? 4 : 0);
                ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.radio);
                if (zIsEqualsNotNull) {
                    resources = CategoryPickerFragment.this.getResources();
                    i2 = R.drawable.follow_check;
                } else {
                    resources = CategoryPickerFragment.this.getResources();
                    i2 = R.drawable.ic_pick_circle;
                }
                imageView.setImageDrawable(resources.getDrawable(i2));
                viewCreateView.findViewById(R.id.icon).setVisibility(4);
            } else {
                viewCreateView.findViewById(R.id.radio).setVisibility(4);
                viewCreateView.findViewById(R.id.icon).setVisibility(0);
            }
            View viewFindViewById = viewCreateView.findViewById(R.id.add);
            ItemCategory itemCategory = item.category;
            if (itemCategory.subcategoriesCount <= 0 && (itemCategory.itemsCount != 0 || item.level >= 3)) {
                i3 = 8;
            }
            viewFindViewById.setVisibility(i3);
            viewCreateView.findViewById(R.id.add).setOnClickListener(this.subviewClickListener);
            viewCreateView.setBackgroundDrawable(zIsEqualsNotNull2 ? CategoryPickerFragment.this.bg : null);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (!(obj instanceof Stub)) {
                if (obj == null) {
                    CategoryPickerFragment.this.addCategory(null);
                    return true;
                }
                return super.onItemClick(listAdapter, i, obj, view, view2);
            }
            if (view2 != null && view2.getId() == R.id.add) {
                CategoryPickerFragment.this.addCategory(((Stub) obj).category);
            } else {
                CategoryPickerFragment categoryPickerFragment = CategoryPickerFragment.this;
                if (categoryPickerFragment.multiPick) {
                    Stub stub = (Stub) obj;
                    if (!categoryPickerFragment.selections.remove(stub.category)) {
                        CategoryPickerFragment.this.selections.add(stub.category);
                    }
                } else {
                    ItemCategory itemCategory = ((Stub) obj).category;
                    categoryPickerFragment.selectedCategoryId = itemCategory.categoryId;
                    categoryPickerFragment.selectedCategory = itemCategory;
                }
                invalidateOptionsMenu();
                notifyDataSetChanged();
            }
            return true;
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if (notification.objectType == 13 && Utils.isEquals(this.uid, User.eliminateZeroUid(notification.uid))) {
                refresh(0, null);
            }
        }
    }
}
