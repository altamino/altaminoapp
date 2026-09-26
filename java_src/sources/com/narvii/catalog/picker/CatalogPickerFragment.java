package com.narvii.catalog.picker;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.catalog.AllItemAdapter;
import com.narvii.catalog.CatalogItemAdapter;
import com.narvii.catalog.CategoryListAdapter;
import com.narvii.catalog.search.CatalogSearchBarAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.CategoryListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CatalogPickerFragment extends BasePickerFragment implements NotificationListener {
    static final int ALL_ITEMS_REQUEST = 10;
    CAdapter adapter;
    AIAdapter aiadapter;
    ItemCategory category;
    String categoryId;
    CatalogItemAdapter itemAdapter;
    boolean refreshAfterResume;
    BasePickerFragment.SelAdapter selAdapter;
    String uid;

    class AIAdapter extends AllItemAdapter {
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        public AIAdapter() {
            super(CatalogPickerFragment.this, CatalogPickerFragment.this.uid);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Intent intent = FragmentWrapperActivity.intent(AllItemPickerFragment.class);
            intent.putExtra("pickOnFinish", true);
            intent.putExtra("uid", CatalogPickerFragment.this.uid);
            intent.putExtra("itemList", JacksonUtils.writeAsString(CatalogPickerFragment.this.selection));
            intent.putExtra("maximum", CatalogPickerFragment.this.maximum);
            intent.putExtra("mode", CatalogPickerFragment.this.mode);
            intent.putExtra("canSelectOfficial", CatalogPickerFragment.this.canSelectOfficial);
            intent.putExtra("previewMedia", JacksonUtils.writeAsString(CatalogPickerFragment.this.getPreviewMedia()));
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(CatalogPickerFragment.this, intent, 1);
            return true;
        }
    }

    class CAdapter extends CategoryListAdapter {
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        public CAdapter(CatalogItemAdapter catalogItemAdapter) {
            super(CatalogPickerFragment.this, CatalogPickerFragment.this.uid, CatalogPickerFragment.this.categoryId, catalogItemAdapter);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof ItemCategory)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            ItemCategory itemCategory = (ItemCategory) obj;
            Intent intent = FragmentWrapperActivity.intent(CatalogPickerFragment.class);
            intent.putExtra("pickOnFinish", true);
            intent.putExtra("uid", CatalogPickerFragment.this.uid);
            intent.putExtra("categoryId", itemCategory.categoryId);
            intent.putExtra("category", JacksonUtils.writeAsString(obj));
            intent.putExtra("itemList", JacksonUtils.writeAsString(CatalogPickerFragment.this.selection));
            intent.putExtra("maximum", CatalogPickerFragment.this.maximum);
            intent.putExtra("mode", CatalogPickerFragment.this.mode);
            intent.putExtra("canSelectOfficial", CatalogPickerFragment.this.canSelectOfficial);
            intent.putExtra("title", CatalogPickerFragment.this.title);
            List<Item> list = this.previewMap.get(itemCategory.categoryId);
            intent.putExtra("previewMedia", JacksonUtils.writeAsString((list == null || list.size() <= 0) ? null : list.get(0).firstMedia()));
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(CatalogPickerFragment.this, intent, 1);
            return true;
        }

        @Override // com.narvii.catalog.CategoryListAdapter
        protected void setResponse(CategoryListResponse categoryListResponse) {
            if (CatalogPickerFragment.this.aiadapter != null && categoryListResponse.getSubCategoryList(categoryListResponse.getRootCategory().categoryId).isEmpty() && CatalogPickerFragment.this.isResumed() && CatalogPickerFragment.this.getActivity() != null) {
                Utils.handler.postDelayed(new Runnable() { // from class: com.narvii.catalog.picker.CatalogPickerFragment.CAdapter.1
                    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivityForResult(p1, p5);
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        Intent intent = FragmentWrapperActivity.intent(AllItemPickerFragment.class);
                        intent.putExtra("pickOnFinish", true);
                        intent.putExtra("uid", CatalogPickerFragment.this.uid);
                        intent.putExtra("itemList", JacksonUtils.writeAsString(CatalogPickerFragment.this.selection));
                        intent.putExtra("maximum", CatalogPickerFragment.this.maximum);
                        intent.putExtra("mode", CatalogPickerFragment.this.mode);
                        intent.putExtra("previewMedia", JacksonUtils.writeAsString(CatalogPickerFragment.this.getPreviewMedia()));
                        intent.putExtra("customFinishAnimIn", 0);
                        intent.putExtra("customFinishAnimOut", 0);
                        intent.putExtra("canSelectOfficial", CatalogPickerFragment.this.canSelectOfficial);
                        if (CatalogPickerFragment.this.getActivity() == null) {
                            return;
                        }
                        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(CatalogPickerFragment.this, intent, 10);
                        CatalogPickerFragment.this.getActivity().overridePendingTransition(0, 0);
                    }
                }, 300L);
                return;
            }
            super.setResponse(categoryListResponse);
            AIAdapter aIAdapter = CatalogPickerFragment.this.aiadapter;
            if (aIAdapter != null) {
                aIAdapter.showLoading = true;
                aIAdapter.count = categoryListResponse.getRootCategory().itemsCount;
                CatalogPickerFragment.this.aiadapter.notifyDataSetChanged();
            }
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            invalidateOptionsMenu();
            CatalogPickerFragment.this.updateBg();
        }
    }

    class IAdapter extends CatalogItemAdapter {
        public IAdapter() {
            super(CatalogPickerFragment.this, CatalogPickerFragment.this.categoryId);
        }

        @Override // com.narvii.item.list.ItemGridExAdapter, com.narvii.item.list.ItemGridAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            itemView.findViewById(R.id.grid_item_vote).setVisibility(4);
            return itemView;
        }
    }

    class SearchAdapter extends CatalogSearchBarAdapter {
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        public SearchAdapter() {
            super(CatalogPickerFragment.this);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() != R.id.search_btn) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Intent intent = FragmentWrapperActivity.intent(CatalogSearchPickerFragment.class);
            intent.putExtra("pickOnFinish", true);
            intent.putExtra("uid", CatalogPickerFragment.this.uid);
            intent.putExtra("itemList", JacksonUtils.writeAsString(CatalogPickerFragment.this.selection));
            intent.putExtra("maximum", CatalogPickerFragment.this.maximum);
            intent.putExtra("mode", CatalogPickerFragment.this.mode);
            intent.putExtra("title", CatalogPickerFragment.this.title);
            intent.putExtra("canSelectOfficial", CatalogPickerFragment.this.canSelectOfficial);
            intent.putExtra("previewMedia", JacksonUtils.writeAsString(CatalogPickerFragment.this.getPreviewMedia()));
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(CatalogPickerFragment.this, intent, 1);
            return true;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        this.itemAdapter = new IAdapter();
        BasePickerFragment.SelAdapter selAdapter = new BasePickerFragment.SelAdapter();
        this.selAdapter = selAdapter;
        selAdapter.setAdapter(this.itemAdapter);
        this.selAdapter.startSelect(null);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this);
        divideColumnAdapter.setAdapter(this.selAdapter, 3);
        SearchAdapter searchAdapter = new SearchAdapter();
        this.adapter = new CAdapter(this.itemAdapter);
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        dividerAdapter.setAdapter(this.adapter, this.categoryId == null ? 2 : 0);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(staticViewAdapter, false);
        mergeAdapter.addAdapter(searchAdapter, false);
        mergeAdapter.addAdapter(dividerAdapter, true);
        mergeAdapter.addAdapter(divideColumnAdapter, false);
        if (this.categoryId == null) {
            AIAdapter aIAdapter = new AIAdapter();
            this.aiadapter = aIAdapter;
            mergeAdapter.addAdapter(aIAdapter);
        }
        return mergeAdapter;
    }

    Media getPreviewMedia() {
        CAdapter cAdapter;
        List<Item> list;
        ItemCategory itemCategory = this.category;
        if (itemCategory != null && itemCategory.firstMedia() != null) {
            return this.category.firstMedia();
        }
        Media media = (Media) JacksonUtils.readAs(getStringParam("previewMedia"), Media.class);
        if (media != null) {
            return media;
        }
        if (this.categoryId != null || (cAdapter = this.adapter) == null) {
            return null;
        }
        ItemCategory rootCategory = cAdapter.getRootCategory();
        if (rootCategory != null && rootCategory.firstMedia() != null) {
            return rootCategory.firstMedia();
        }
        if (rootCategory == null || (list = this.adapter.previewMap.get(rootCategory.categoryId)) == null || list.size() <= 0) {
            return null;
        }
        return list.get(0).firstMedia();
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 != 10) {
            super.onActivityResult(i10, i11, intent);
        } else if (i11 == 2 || i11 == -1) {
            super.onActivityResult(1, i11, intent);
        } else {
            finish();
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.objectType == 13 && Utils.isEqualsNotNull(notification.id, this.categoryId)) {
            String str = notification.action;
            if (str == "update") {
                Object obj = notification.obj;
                if (obj instanceof ItemCategory) {
                    this.category = (ItemCategory) obj;
                    updateBg();
                    return;
                }
            }
            if (str == "delete") {
                finish();
                return;
            }
        }
        if (notification.objectType == 13 && Utils.isEquals(User.eliminateZeroUid(notification.uid), this.uid)) {
            if (isResumed()) {
                this.adapter.refresh(0, null);
            } else {
                this.refreshAfterResume = true;
            }
        }
    }

    void updateBg() {
        this.backgroundImageView.setImageMedia(getPreviewMedia());
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.app.NVFragment
    public /* bridge */ /* synthetic */ Boolean hasPostEntry() {
        return super.hasPostEntry();
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringParam = getStringParam("uid");
        this.uid = stringParam;
        if (stringParam == null && getBooleanParam("mine")) {
            this.uid = ((AccountService) getService("account")).getUserId();
        }
        this.categoryId = getStringParam("categoryId");
        this.category = (ItemCategory) JacksonUtils.readAs(getStringParam("category"), ItemCategory.class);
        String stringParam2 = getStringParam("pickTitle");
        if (stringParam2 == null) {
            stringParam2 = getString(R.string.pick);
        }
        ItemCategory itemCategory = this.category;
        if (itemCategory != null) {
            stringParam2 = itemCategory.label;
        }
        setTitle(stringParam2);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.refreshAfterResume) {
            this.adapter.refresh(0, null);
        }
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.catalog.CatalogThemeFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        updateBg();
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.app.FragmentWillFinishListener
    public /* bridge */ /* synthetic */ void willFinish(NVActivity nVActivity) {
        super.willFinish(nVActivity);
    }
}
