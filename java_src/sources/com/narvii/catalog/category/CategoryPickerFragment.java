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
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class CategoryPickerFragment extends NVListFragment {
    Adapter adapter;
    Drawable bg;
    String categoryId;
    boolean multiPick;
    ItemCategory selectedCategory;
    String selectedCategoryId;
    final ArrayList<ItemCategory> selections = new ArrayList<>();

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

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return this.errorMsg;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return this.list != null;
        }

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            this.errorMsg = null;
            sendRequest();
            notifyDataSetChanged();
        }

        public Adapter() {
            super(CategoryPickerFragment.this);
            this.listener = new ApiResponseListener<CategoryListResponse>(CategoryListResponse.class) { // from class: com.narvii.catalog.category.CategoryPickerFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    Adapter adapter = Adapter.this;
                    adapter.errorMsg = str;
                    adapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, CategoryListResponse categoryListResponse) throws Exception {
                    Adapter.this.setResponse(categoryListResponse);
                }
            };
            this.uid = CategoryPickerFragment.this.getStringParam("uid");
            this.indent = CategoryPickerFragment.this.getResources().getDimensionPixelSize(R.dimen.catalog_category_level_indent);
        }

        private void append(ArrayList<Stub> arrayList, CategoryListResponse categoryListResponse, ItemCategory itemCategory, int i10) {
            if (itemCategory == null) {
                return;
            }
            boolean zIsLeafCategory = categoryListResponse.isLeafCategory(itemCategory.categoryId);
            if (itemCategory.parentCategoryId != null) {
                Stub stub = new Stub();
                stub.category = itemCategory;
                stub.level = i10;
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
                append(arrayList, categoryListResponse, it.next(), i10 + 1);
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
        public Stub getItem(int i10) {
            if (i10 < this.list.size()) {
                return this.list.get(i10);
            }
            return null;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof Stub)) {
                if (obj != null) {
                    return super.onItemClick(listAdapter, i10, obj, view, view2);
                }
                CategoryPickerFragment.this.addCategory(null);
                return true;
            }
            if (view2 == null || view2.getId() != R.id.add) {
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
            } else {
                CategoryPickerFragment.this.addCategory(((Stub) obj).category);
            }
            return true;
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if (notification.objectType == 13 && Utils.isEquals(this.uid, User.eliminateZeroUid(notification.uid))) {
                refresh(0, null);
            }
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

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            Stub item = getItem(i10);
            if (item == null) {
                return 0L;
            }
            return item.category.hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            if (getItem(i10) == null) {
                return 1;
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            Drawable drawable;
            boolean zIsEqualsNotNull;
            int i11;
            Resources resources;
            int i12;
            Stub item = getItem(i10);
            if (item == null) {
                return createView(R.layout.catalog_category_picker_add, viewGroup, view);
            }
            boolean zIsEqualsNotNull2 = Utils.isEqualsNotNull(item.category.categoryId, CategoryPickerFragment.this.categoryId);
            View viewCreateView = createView(R.layout.catalog_category_picker_item, viewGroup, view);
            viewCreateView.findViewById(R.id.stub1).getLayoutParams().width = this.indent * (item.level - 1);
            viewCreateView.findViewById(R.id.stub1).requestLayout();
            ((TextView) viewCreateView.findViewById(R.id.label)).setText(item.category.label);
            int i13 = 0;
            if (item.leaf) {
                CategoryPickerFragment categoryPickerFragment = CategoryPickerFragment.this;
                if (categoryPickerFragment.multiPick) {
                    zIsEqualsNotNull = Utils.containsId(categoryPickerFragment.selections, item.category.categoryId);
                } else {
                    zIsEqualsNotNull = Utils.isEqualsNotNull(item.category.categoryId, categoryPickerFragment.selectedCategoryId);
                }
                View viewFindViewById = viewCreateView.findViewById(R.id.radio);
                if (zIsEqualsNotNull2) {
                    i11 = 4;
                } else {
                    i11 = 0;
                }
                viewFindViewById.setVisibility(i11);
                ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.radio);
                if (zIsEqualsNotNull) {
                    resources = CategoryPickerFragment.this.getResources();
                    i12 = R.drawable.follow_check;
                } else {
                    resources = CategoryPickerFragment.this.getResources();
                    i12 = R.drawable.ic_pick_circle;
                }
                imageView.setImageDrawable(resources.getDrawable(i12));
                viewCreateView.findViewById(R.id.icon).setVisibility(4);
            } else {
                viewCreateView.findViewById(R.id.radio).setVisibility(4);
                viewCreateView.findViewById(R.id.icon).setVisibility(0);
            }
            View viewFindViewById2 = viewCreateView.findViewById(R.id.add);
            ItemCategory itemCategory = item.category;
            if (itemCategory.subcategoriesCount <= 0 && (itemCategory.itemsCount != 0 || item.level >= 3)) {
                i13 = 8;
            }
            viewFindViewById2.setVisibility(i13);
            viewCreateView.findViewById(R.id.add).setOnClickListener(this.subviewClickListener);
            if (zIsEqualsNotNull2) {
                drawable = CategoryPickerFragment.this.bg;
            } else {
                drawable = null;
            }
            viewCreateView.setBackgroundDrawable(drawable);
            return viewCreateView;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            Stub item = getItem(i10);
            if (item == null) {
                return true;
            }
            if (item.leaf) {
                return !Utils.isEqualsNotNull(item.category.categoryId, CategoryPickerFragment.this.categoryId);
            }
            return false;
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
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            this.response = (CategoryListResponse) JacksonUtils.readAs(bundle.getString("response"), CategoryListResponse.class);
        }

        @Override // com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putString("response", JacksonUtils.safeWriteAsString(this.response));
            return bundleOnSaveInstanceState;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            refreshMonitorStart(i10, callback);
            sendRequest();
            refreshMonitorEnd();
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    static class Stub {
        ItemCategory category;
        boolean leaf;
        int level;

        Stub() {
        }
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
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        if (bundle == null) {
            adapter.response = (CategoryListResponse) JacksonUtils.readAs(getStringParam("resp"), CategoryListResponse.class);
        }
        return this.adapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
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

    @Override // androidx.fragment.app.Fragment
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

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        String str;
        boolean z6;
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(android.R.string.ok);
        if ((this.multiPick && this.adapter.isListShown()) || ((str = this.selectedCategoryId) != null && !Utils.isEqualsNotNull(this.categoryId, str))) {
            z6 = true;
        } else {
            z6 = false;
        }
        menuItemFindItem.setVisible(z6);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.catalog_category_empty_view);
        view.findViewById(R.id.empty_add).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.catalog.category.CategoryPickerFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                CategoryPickerFragment.this.addCategory(null);
            }
        });
    }
}
