package com.narvii.catalog;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.catalog.activity.RecentActivityFragment;
import com.narvii.catalog.activity.RecentActivityHelper;
import com.narvii.catalog.activity.RecentActivityResponse;
import com.narvii.catalog.category.CategoryPickerFragment;
import com.narvii.catalog.category.CategoryPost;
import com.narvii.catalog.category.CategoryPostActivity;
import com.narvii.catalog.organizer.CategoryOrganizeFragment;
import com.narvii.catalog.organizer.ItemOrganizeFragment;
import com.narvii.catalog.organizer.SubItemOrganizeFragment;
import com.narvii.catalog.picker.AllItemPickerFragment;
import com.narvii.catalog.review.CatalogSubmissionFragment;
import com.narvii.catalog.search.CatalogSearchBarAdapter;
import com.narvii.catalog.search.CatalogSearchFragment;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.item.ItemHelper;
import com.narvii.item.post.ItemPost;
import com.narvii.item.post.ItemPostActivity;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.list.select.SelectableAdapter;
import com.narvii.list.select.SelectableListener;
import com.narvii.list.select.SelectableSource;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.CategoryListResponse;
import com.narvii.model.api.ItemListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.poweruser.SendBroadcastHelper;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.poweruser.history.ModerationHistoryFragment;
import com.narvii.share.ShareDialog;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.narvii.widget.FlagItemLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CatalogFragment extends CatalogThemeFragment implements NotificationListener {
    static final int ADD_TO_REQUEST = 2;
    static final int ALL_ITEMS_REQUEST = 10;
    private static final int DEFAULT_PAGE_SIZE = 20;
    private static final String IS_ALL_CURATION = "is_all_curation";
    public static final int MAX_SELECT = 50;
    static final int MERGE_TO_REQUEST = 3;
    static final int MOVE_TO_REQUEST = 1;
    static final int PICK_REQUEST = 1;
    static final int RESULT_PICK = 2;
    static final int SORT_CATEGORY_REQUEST = 5;
    static final int SORT_ITEM_REQUEST = 4;
    ActionMode actionMode;
    CAdapter adapter;
    AdvancedOptionDialog advancedOptionDialog;
    AllItemAdapter aiadapter;
    MyAllEntryAdapter allEntryAdapter;
    CatalogHelper catalogHelper;
    ItemCategory category;
    String categoryId;
    CategoryListResponse categoryListResponse;
    private int curDepth;
    View emptyView;
    String errorMsg;
    boolean isCurationEnabled;
    private boolean isOfficalEmpty;
    IAdapter itemAdapter;
    ItemHelper itemHelper;
    MyMergeAdapter mergeAdapter;
    RecentActivityEntryAdapter recentActivityEntryAdapter;
    boolean refreshAfterResume;
    SearchAdapter searchAdapter;
    SelAdapter selAdapter;
    SendBroadcastHelper sendBroadcastHelper;
    boolean showAll;
    boolean suspendNotification;
    String uid;
    View.OnClickListener advanceListener = new View.OnClickListener() { // from class: com.narvii.catalog.CatalogFragment.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view instanceof FlagItemLayout) {
                FlagItemLayout flagItemLayout = (FlagItemLayout) view;
                if (flagItemLayout.getLeftText().equals(CatalogFragment.this.getContext().getString(R.string.catalog_review_submissions))) {
                    CatalogFragment.this.reviewSubmission();
                } else if (flagItemLayout.getLeftText().equals(CatalogFragment.this.getContext().getString(R.string.advanced_options_add_category))) {
                    CatalogFragment.this.addSubCategory();
                } else if (flagItemLayout.getLeftText().equals(CatalogFragment.this.getContext().getString(R.string.advanced_options_edit_category))) {
                    CatalogFragment.this.editCategory();
                } else if (flagItemLayout.getLeftText().equals(CatalogFragment.this.getContext().getString(R.string.catalog_more_options))) {
                    CatalogFragment.this.selAdapter.startSelect(null);
                } else if (flagItemLayout.getLeftText().equals(CatalogFragment.this.getContext().getString(R.string.reorder))) {
                    CatalogFragment.this.reorder();
                } else if (flagItemLayout.getLeftText().equals(CatalogFragment.this.getContext().getString(R.string.catalog_change_background))) {
                    CatalogFragment.this.editCategory();
                } else if (flagItemLayout.getLeftText().equals(CatalogFragment.this.getContext().getString(R.string.send_broadcast))) {
                    CatalogFragment catalogFragment = CatalogFragment.this;
                    CatalogFragment.this.sendBroadcastHelper.sendBroadcast(catalogFragment.categoryId == null ? catalogFragment.adapter.getRootCategory() : catalogFragment.category);
                } else if (flagItemLayout.getLeftText().equals(CatalogFragment.this.getContext().getString(R.string.advanced_options_moderation_history))) {
                    CatalogFragment.this.launchModerationHistory();
                }
                CatalogFragment.this.advancedOptionDialog.dismiss();
            }
        }
    };
    final ApiResponseListener<CategoryListResponse> categoryListListener = new ApiResponseListener<CategoryListResponse>(CategoryListResponse.class) { // from class: com.narvii.catalog.CatalogFragment.7
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List list, String str, ApiResponse apiResponse, Throwable th) {
            CatalogFragment catalogFragment = CatalogFragment.this;
            catalogFragment.errorMsg = str;
            catalogFragment.mergeAdapter.notifyDataSetChanged();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, CategoryListResponse categoryListResponse) throws Exception {
            CatalogFragment.this.categoryListResponse = categoryListResponse;
            if (categoryListResponse.getSubCategoryList(categoryListResponse.getRootCategory().categoryId).isEmpty()) {
                if (TextUtils.isEmpty(CatalogFragment.this.uid)) {
                    CatalogFragment.this.isOfficalEmpty = true;
                    AllItemAdapter allItemAdapter = CatalogFragment.this.aiadapter;
                    if (allItemAdapter != null) {
                        allItemAdapter.list = new ArrayList();
                        CatalogFragment.this.aiadapter.notifyDataSetChanged();
                    }
                } else {
                    CatalogFragment.this.showAll = true;
                }
            }
            CatalogFragment.this.invalidateOptionsMenu();
            CatalogFragment.this.update();
            CatalogFragment.this.adapter.sendCategoryRequest();
            CatalogFragment.this.itemAdapter.resetList();
            CatalogFragment.this.mergeAdapter.notifyDataSetChanged();
            AllItemAdapter allItemAdapter2 = CatalogFragment.this.aiadapter;
            if (allItemAdapter2 != null) {
                allItemAdapter2.refresh(0, null);
            }
            CatalogFragment.this.updateTitle();
        }
    };
    final ActionMode.Callback actionModeCallback = new ActionMode.Callback() { // from class: com.narvii.catalog.CatalogFragment.8
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            CatalogFragment catalogFragment = CatalogFragment.this;
            catalogFragment.actionMode = null;
            catalogFragment.selAdapter.finishSelect();
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            boolean z6 = CatalogFragment.this.selAdapter.selAll;
            menu.findItem(R.string.move_to).setEnabled(!CatalogFragment.this.isInAllCuratorFolder() && (z6 || CatalogFragment.this.selAdapter.selections().size() > 0));
            menu.findItem(R.string.add_to).setVisible(!z6);
            menu.findItem(R.string.add_to).setEnabled(CatalogFragment.this.selAdapter.selections().size() > 0);
            menu.findItem(R.string.remove_from_this_category).setVisible((CatalogFragment.this.isInAllCuratorFolder() || z6) ? false : true);
            menu.findItem(R.string.remove_from_this_category).setEnabled(CatalogFragment.this.selAdapter.selections().size() > 0);
            menu.findItem(R.string.delete_permanently).setVisible(CatalogFragment.this.isInAllCuratorFolder() && !z6);
            menu.findItem(R.string.delete_permanently).setEnabled(CatalogFragment.this.selAdapter.selections().size() > 0);
            menu.findItem(R.string.select_all).setVisible(!z6);
            menu.findItem(R.string.cancel).setVisible(z6);
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            int i10;
            switch (menuItem.getItemId()) {
                case R.string.add_to /* 2131886220 */:
                    Intent intent = FragmentWrapperActivity.intent(CategoryPickerFragment.class);
                    intent.putExtra("uid", CatalogFragment.this.uid);
                    intent.putExtra("categoryId", CatalogFragment.this.categoryId);
                    intent.putExtra("title", CatalogFragment.this.getString(R.string.add_to));
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(CatalogFragment.this, intent, 2);
                    return true;
                case R.string.cancel /* 2131886562 */:
                    break;
                case R.string.delete_permanently /* 2131887022 */:
                    CatalogFragment.this.delete(true);
                    break;
                case R.string.move_to /* 2131889378 */:
                    Intent intent2 = FragmentWrapperActivity.intent(CategoryPickerFragment.class);
                    intent2.putExtra("uid", CatalogFragment.this.uid);
                    intent2.putExtra("categoryId", CatalogFragment.this.categoryId);
                    intent2.putExtra("title", CatalogFragment.this.getString(R.string.move_to));
                    CatalogFragment catalogFragment = CatalogFragment.this;
                    if (catalogFragment.selAdapter.selAll) {
                        i10 = 3;
                    } else {
                        i10 = 1;
                    }
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(catalogFragment, intent2, i10);
                    return true;
                case R.string.remove_from_this_category /* 2131890147 */:
                    CatalogFragment.this.remove();
                    return true;
                case R.string.select_all /* 2131890298 */:
                    SelAdapter selAdapter = CatalogFragment.this.selAdapter;
                    selAdapter.selAll = true;
                    selAdapter.notifyDataSetChanged();
                    actionMode.invalidate();
                    actionMode.setTitle(CatalogFragment.this.getString(R.string.catalog_all));
                    return true;
                default:
                    return true;
            }
            actionMode.finish();
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            menu.add(0, R.string.move_to, 0, R.string.move_to).setShowAsAction(2);
            menu.add(0, R.string.add_to, 0, R.string.add_to).setShowAsAction(2);
            menu.add(0, R.string.remove_from_this_category, 0, R.string.remove_from_this_category).setShowAsAction(0);
            menu.add(0, R.string.delete_permanently, 0, R.string.delete_permanently).setShowAsAction(0);
            menu.add(0, R.string.select_all, 0, R.string.select_all).setShowAsAction(0);
            menu.add(0, R.string.cancel, 0, R.string.cancel).setShowAsAction(2);
            actionMode.setTitle(String.valueOf(CatalogFragment.this.selAdapter.selections().size()));
            onPrepareActionMode(actionMode, menu);
            return true;
        }
    };

    class AIAdapter extends AllItemAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public AIAdapter() {
            super(CatalogFragment.this, CatalogFragment.this.uid);
        }

        @Override // com.narvii.catalog.AllItemAdapter, android.widget.Adapter
        public int getCount() {
            CatalogFragment catalogFragment = CatalogFragment.this;
            if (catalogFragment.showAll || catalogFragment.isAllEntry()) {
                return 0;
            }
            if (TextUtils.isEmpty(this.uid)) {
                return 2;
            }
            return super.getCount();
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Intent intent = FragmentWrapperActivity.intent(CatalogFragment.class);
            intent.putExtra("uid", this.uid);
            intent.putExtra("showAll", true);
            CategoryListResponse categoryListResponse = CatalogFragment.this.categoryListResponse;
            Media mediaFirstMedia = null;
            ItemCategory rootCategory = categoryListResponse != null ? categoryListResponse.getRootCategory() : null;
            Media mediaFirstMedia2 = rootCategory != null ? rootCategory.firstMedia() : null;
            if (mediaFirstMedia2 == null) {
                List<Item> list = this.list;
                if (list != null && list.size() > 0) {
                    mediaFirstMedia = this.list.get(0).firstMedia();
                }
                mediaFirstMedia2 = mediaFirstMedia;
            }
            intent.putExtra("previewMedia", JacksonUtils.writeAsString(mediaFirstMedia2));
            intent.putExtra("fromMyCatalog", CatalogFragment.this.fromMyCatalog());
            intent.putExtra("fromOfficialCatalog", CatalogFragment.this.fromOfficialCatalog());
            intent.putExtra("nostat", true);
            intent.putExtra(CatalogFragment.IS_ALL_CURATION, true);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // com.narvii.catalog.AllItemAdapter
        void sendReqeust() {
            if (!CatalogFragment.this.isReady() || CatalogFragment.this.showAll) {
                return;
            }
            super.sendReqeust();
        }
    }

    class CAdapter extends CategoryListAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public CAdapter(CatalogItemAdapter catalogItemAdapter) {
            super(CatalogFragment.this, CatalogFragment.this.uid, CatalogFragment.this.categoryId, catalogItemAdapter);
        }

        @Override // com.narvii.catalog.CategoryListAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (TextUtils.isEmpty(this.uid)) {
                return false;
            }
            return super.isEmpty();
        }

        @Override // com.narvii.catalog.CategoryListAdapter
        public boolean keepForLeaderAndCurator() {
            return (TextUtils.isEmpty(this.uid) || CatalogFragment.this.fromOfficialCatalog()) ? false : true;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof ItemCategory)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            ItemCategory itemCategory = (ItemCategory) obj;
            Intent intent = FragmentWrapperActivity.intent(CatalogFragment.class);
            intent.putExtra("uid", this.uid);
            intent.putExtra("categoryId", itemCategory.categoryId);
            intent.putExtra("category", JacksonUtils.writeAsString(itemCategory));
            intent.putExtra("depth", CatalogFragment.this.curDepth + 1);
            List<Item> list = this.previewMap.get(itemCategory.categoryId);
            intent.putExtra("previewMedia", JacksonUtils.writeAsString((list == null || list.size() <= 0) ? null : list.get(0).firstMedia()));
            intent.putExtra("fromMyCatalog", CatalogFragment.this.fromMyCatalog());
            intent.putExtra("fromOfficialCatalog", CatalogFragment.this.fromOfficialCatalog());
            intent.putExtra("nostat", true);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof ItemCategory) || (!CatalogFragment.this.isMine() && !CatalogFragment.this.isCurator())) {
                return super.onLongClick(listAdapter, i10, obj, view, view2);
            }
            final ItemCategory itemCategory = (ItemCategory) obj;
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setItems(new CharSequence[]{CatalogFragment.this.getString(R.string.edit)}, new DialogInterface.OnClickListener() { // from class: com.narvii.catalog.CatalogFragment.CAdapter.1
                public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i11) {
                    if (i11 == 0) {
                        Intent intent = new Intent(CAdapter.this.getContext(), (Class<?>) CategoryPostActivity.class);
                        CategoryPost categoryPost = new CategoryPost(itemCategory);
                        intent.putExtra("categoryId", itemCategory.categoryId);
                        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(categoryPost));
                        intent.putExtra("category", JacksonUtils.writeAsString(itemCategory));
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(CAdapter.this, intent);
                    }
                }
            });
            builder.show();
            return true;
        }

        @Override // com.narvii.catalog.CategoryListAdapter
        void sendCategoryRequest() {
            if (CatalogFragment.this.isReady()) {
                CatalogFragment catalogFragment = CatalogFragment.this;
                if (catalogFragment.showAll || catalogFragment.isAllEntry()) {
                    this.itemAdapter.isLeaf = true;
                    boolean z6 = CatalogFragment.this.showAll;
                } else {
                    if (CatalogFragment.this.isAllEntry()) {
                        return;
                    }
                    super.sendCategoryRequest();
                }
            }
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            invalidateOptionsMenu();
            CatalogFragment.this.update();
        }

        @Override // com.narvii.catalog.CategoryListAdapter, com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            super.refresh(i10, callback);
            AllItemAdapter allItemAdapter = CatalogFragment.this.aiadapter;
            if (allItemAdapter != null) {
                allItemAdapter.showLoading = false;
                allItemAdapter.refresh(0, null);
                CatalogFragment.this.aiadapter.notifyDataSetChanged();
            }
            MyAllEntryAdapter myAllEntryAdapter = CatalogFragment.this.allEntryAdapter;
            if (myAllEntryAdapter != null) {
                myAllEntryAdapter.showLoading = false;
                myAllEntryAdapter.refresh(0, null);
                CatalogFragment.this.allEntryAdapter.notifyDataSetChanged();
            }
        }

        @Override // com.narvii.catalog.CategoryListAdapter
        protected void setResponse(CategoryListResponse categoryListResponse) {
            int i10;
            String str;
            super.setResponse(categoryListResponse);
            AllItemAdapter allItemAdapter = CatalogFragment.this.aiadapter;
            if (allItemAdapter != null) {
                allItemAdapter.showLoading = true;
                allItemAdapter.count = categoryListResponse.getRootCategory().itemsCount;
                CatalogFragment.this.aiadapter.notifyDataSetChanged();
            }
            MyAllEntryAdapter myAllEntryAdapter = CatalogFragment.this.allEntryAdapter;
            if (myAllEntryAdapter != null) {
                ItemCategory itemCategory = categoryListResponse.allEntriesItemCategory;
                if (itemCategory == null) {
                    i10 = 0;
                } else {
                    i10 = itemCategory.itemsCount;
                }
                myAllEntryAdapter.count = i10;
                myAllEntryAdapter.showLoading = true;
                if (itemCategory == null) {
                    str = null;
                } else {
                    str = itemCategory.categoryId;
                }
                myAllEntryAdapter.allEntryCategoryId = str;
                myAllEntryAdapter.notifyDataSetChanged();
            }
            if (getType() == 3) {
                this.itemAdapter.isLeaf = true;
            }
        }
    }

    class IAdapter extends CatalogItemAdapter implements SelectableSource, SelectableListener {
        @Override // com.narvii.list.select.SelectableSource
        public boolean canSelect(int i10, Object obj, boolean z6) {
            if (!z6 || CatalogFragment.this.selAdapter.selections().size() < 50) {
                return true;
            }
            NVToast.makeText(getContext(), CatalogFragment.this.getString(R.string.catalog_select_maximum, 50), 0).show();
            return false;
        }

        public IAdapter() {
            super(CatalogFragment.this, CatalogFragment.this.categoryId);
        }

        @Override // com.narvii.catalog.CatalogItemAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            if (!CatalogFragment.this.isReady()) {
                return null;
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/item");
            if (CatalogFragment.this.isAllEntry()) {
                builderPath.param("type", "keywords");
            } else {
                String str = this.categoryId;
                if (str == null && CatalogFragment.this.uid == null) {
                    builderPath.param("type", "catalog-all");
                } else {
                    if (str != null) {
                        return super.createRequest(z6);
                    }
                    builderPath.param("type", "user-all");
                    builderPath.param("uid", CatalogFragment.this.uid);
                }
            }
            return builderPath.build();
        }

        @Override // com.narvii.catalog.CatalogItemGridAdapter, com.narvii.list.NVPagedAdapter
        protected List<Item> filterResponseList(List<Item> list, int i10) {
            return CatalogFragment.this.isMine() ? list : super.filterResponseList(list, i10);
        }

        @Override // com.narvii.list.select.SelectableSource
        public boolean isSelectable(int i10, Object obj) {
            return CatalogFragment.this.isMine() || CatalogFragment.this.isCurator();
        }

        @Override // com.narvii.catalog.CatalogItemGridAdapter
        public boolean keepForLeaderAndCurator() {
            return (TextUtils.isEmpty(CatalogFragment.this.uid) || CatalogFragment.this.fromOfficialCatalog()) ? false : true;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            this.showPin = !CatalogFragment.this.isAllEntry() && CatalogFragment.this.uid == null;
            super.notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.item.list.ItemGridExAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, ItemListResponse itemListResponse, int i10) {
            super.onPageResponse(apiRequest, itemListResponse, i10);
            invalidateOptionsMenu();
            CatalogFragment.this.update();
        }

        @Override // com.narvii.list.select.SelectableListener
        public void onSelectModeChanged(boolean z6) {
            if (CatalogFragment.this.isAllEntry()) {
                return;
            }
            if (z6) {
                CatalogFragment catalogFragment = CatalogFragment.this;
                catalogFragment.actionMode = catalogFragment.getActivity().startActionMode(CatalogFragment.this.actionModeCallback);
            } else {
                SelAdapter selAdapter = CatalogFragment.this.selAdapter;
                selAdapter.selAll = false;
                selAdapter.notifyDataSetChanged();
                ActionMode actionMode = CatalogFragment.this.actionMode;
                if (actionMode != null) {
                    actionMode.finish();
                }
            }
            CatalogFragment.this.searchAdapter.setInSelect(z6);
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.select.SelectableListener
        public void onSelectionChanged(Object obj, boolean z6) {
            CatalogFragment catalogFragment = CatalogFragment.this;
            ActionMode actionMode = catalogFragment.actionMode;
            if (actionMode != null) {
                SelAdapter selAdapter = catalogFragment.selAdapter;
                actionMode.setTitle(selAdapter.selAll ? catalogFragment.getString(R.string.catalog_all) : String.valueOf(selAdapter.selections().size()));
                CatalogFragment.this.actionMode.invalidate();
            }
        }

        void updateList(List<Item> list) {
            this._list = new ArrayList<>(list);
            notifyDataSetChanged();
        }

        @Override // com.narvii.item.list.ItemGridExAdapter, com.narvii.item.list.ItemGridAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            int i10;
            View itemView = super.getItemView(obj, view, viewGroup);
            View viewFindViewById = itemView.findViewById(R.id.grid_item_vote);
            if (CatalogFragment.this.selAdapter.inSelect()) {
                i10 = 4;
            } else {
                i10 = 0;
            }
            viewFindViewById.setVisibility(i10);
            return itemView;
        }

        @Override // com.narvii.item.list.ItemGridExAdapter, com.narvii.item.list.ItemGridAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            super.onNotification(notification);
            if ((notification.obj instanceof Item) && notification.action == "new" && Utils.isEquals(User.eliminateZeroUid(notification.uid), CatalogFragment.this.uid)) {
                editList(notification, true);
            }
        }

        @Override // com.narvii.item.list.ItemGridExAdapter
        protected Intent openItemDetailIntent(Item item, int i10) {
            Intent intentOpenItemDetailIntent = super.openItemDetailIntent(item, i10);
            intentOpenItemDetailIntent.putExtra("fromMyCatalog", CatalogFragment.this.fromMyCatalog());
            intentOpenItemDetailIntent.putExtra("fromOfficialCatalog", CatalogFragment.this.fromOfficialCatalog());
            return intentOpenItemDetailIntent;
        }
    }

    private class MyAllEntryAdapter extends AllEntriesAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public MyAllEntryAdapter() {
            super(CatalogFragment.this);
        }

        @Override // com.narvii.catalog.AllEntriesAdapter, com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            CatalogFragment catalogFragment = CatalogFragment.this;
            return (catalogFragment.showAll || catalogFragment.isAllEntry() || !TextUtils.isEmpty(CatalogFragment.this.uid)) ? 0 : 2;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Intent intent = FragmentWrapperActivity.intent(CatalogFragment.class);
            intent.putExtra("uid", CatalogFragment.this.uid);
            CatalogFragment catalogFragment = CatalogFragment.this;
            CAdapter cAdapter = catalogFragment.adapter;
            if (cAdapter != null && cAdapter.allEntryCategory != null) {
                intent.putExtra("uid", catalogFragment.uid);
                intent.putExtra("categoryId", CatalogFragment.this.adapter.allEntryCategory.categoryId);
                intent.putExtra("category", JacksonUtils.writeAsString(CatalogFragment.this.adapter.allEntryCategory));
                List<Item> list = this.previewList;
                intent.putExtra("previewMedia", JacksonUtils.writeAsString((list == null || list.size() <= 0) ? null : this.previewList.get(0).firstMedia()));
                intent.putExtra("isAllEntry", true);
            }
            intent.putExtra("nostat", true);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }
    }

    class MyMergeAdapter extends MergeAdapter {
        public MyMergeAdapter() {
            super(CatalogFragment.this);
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public String errorMessage() {
            return !CatalogFragment.this.isReady() ? CatalogFragment.this.errorMsg : super.errorMessage();
        }

        @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            CAdapter cAdapter;
            if (!CatalogFragment.this.isReady()) {
                return false;
            }
            if (!CatalogFragment.this.isAllEntry()) {
                CatalogFragment catalogFragment = CatalogFragment.this;
                if (!catalogFragment.showAll && ((cAdapter = catalogFragment.adapter) == null || cAdapter.getType() != 3)) {
                    return super.isEmpty();
                }
            }
            IAdapter iAdapter = CatalogFragment.this.itemAdapter;
            return iAdapter != null && iAdapter.isEmpty();
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            CAdapter cAdapter;
            if (!CatalogFragment.this.isReady()) {
                return false;
            }
            CatalogFragment catalogFragment = CatalogFragment.this;
            if (!catalogFragment.showAll && ((cAdapter = catalogFragment.adapter) == null || cAdapter.getType() != 3)) {
                return super.isListShown();
            }
            IAdapter iAdapter = CatalogFragment.this.itemAdapter;
            return iAdapter != null && iAdapter.isListShown();
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            super.refresh(i10, callback);
            CatalogFragment.this.sendPreRequestBeforeReady();
        }
    }

    class RecentActivityEntryAdapter extends NVAdapter {
        List<Feed> feeds;
        public int newItemsCount;
        RecentActivityHelper recentActivityHelper;
        private Runnable runnable;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public RecentActivityEntryAdapter(NVContext nVContext) {
            super(nVContext);
            this.runnable = new Runnable() { // from class: com.narvii.catalog.CatalogFragment.RecentActivityEntryAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    RecentActivityEntryAdapter.this.notifyDataSetChanged();
                }
            };
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (!CatalogFragment.this.isRootCategory() || CatalogFragment.this.showAll) ? 0 : 1;
        }

        @Override // com.narvii.list.NVAdapter
        public void onDetach() {
            Utils.handler.removeCallbacks(this.runnable);
            super.onDetach();
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Intent intent = FragmentWrapperActivity.intent(RecentActivityFragment.class);
            intent.putExtra("background", JacksonUtils.writeAsString(CatalogFragment.this.getPreviewMedia()));
            intent.putExtra("itemCategory", JacksonUtils.writeAsString(CatalogFragment.this.adapter.getRootCategory()));
            this.newItemsCount = 0;
            this.recentActivityHelper.cacheItemIds(this.feeds);
            Utils.postDelayed(this.runnable, 1000L);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            ((StatisticsService) getService("statistics")).event("Recent Catalog Activities").userPropInc("Recent Catalog Activities Total");
            return true;
        }

        private void sendRequest() {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/knowledge-base-request/activities");
            builderPath.param("start", 0);
            builderPath.param("size", 25);
            ((ApiService) getService("api")).exec(builderPath.build(), new ApiResponseListener<RecentActivityResponse>(RecentActivityResponse.class) { // from class: com.narvii.catalog.CatalogFragment.RecentActivityEntryAdapter.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, RecentActivityResponse recentActivityResponse) throws Exception {
                    super.onFinish(apiRequest, recentActivityResponse);
                    RecentActivityEntryAdapter.this.feeds = recentActivityResponse.list();
                    int iNewItemCount = RecentActivityEntryAdapter.this.recentActivityHelper.newItemCount(recentActivityResponse.list());
                    if (iNewItemCount > 0) {
                        RecentActivityEntryAdapter recentActivityEntryAdapter = RecentActivityEntryAdapter.this;
                        recentActivityEntryAdapter.newItemsCount = iNewItemCount;
                        recentActivityEntryAdapter.notifyDataSetChanged();
                    }
                }
            });
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            String string;
            View viewCreateView = createView(R.layout.catalog_recent_activity_entry, viewGroup, view);
            if (this.newItemsCount > 0) {
                i11 = -16737284;
            } else {
                i11 = 1509949439;
            }
            viewCreateView.setBackgroundColor(i11);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
            int i12 = this.newItemsCount;
            if (i12 == 1) {
                string = CatalogFragment.this.getString(R.string.new_favorite_added);
            } else if (i12 > 20) {
                string = CatalogFragment.this.getString(R.string.new_favorites_added, "20+");
            } else if (i12 > 1) {
                string = CatalogFragment.this.getString(R.string.new_favorites_added, String.valueOf(i12));
            } else {
                string = CatalogFragment.this.getString(R.string.catalog_recent_activities);
            }
            textView.setText(string);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            this.recentActivityHelper = new RecentActivityHelper(CatalogFragment.this);
            sendRequest();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            sendRequest();
        }
    }

    class SearchAdapter extends CatalogSearchBarAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public SearchAdapter() {
            super(CatalogFragment.this);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() != R.id.search_btn) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Intent intent = FragmentWrapperActivity.intent(CatalogSearchFragment.class);
            intent.putExtra("uid", CatalogFragment.this.uid);
            intent.putExtra("previewMedia", JacksonUtils.writeAsString(CatalogFragment.this.getPreviewMedia()));
            intent.putExtra("fromMyCatalog", CatalogFragment.this.fromMyCatalog());
            intent.putExtra("fromOfficialCatalog", CatalogFragment.this.fromOfficialCatalog());
            intent.putExtra("customFinishAnimIn", R.anim.fade_in);
            intent.putExtra("customFinishAnimOut", R.anim.fade_out);
            intent.putExtra("isAllEntry", CatalogFragment.this.getBooleanParam("isAllEntry") || CatalogFragment.this.isAllEntry());
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            CatalogFragment.this.getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
            return true;
        }
    }

    class SelAdapter extends SelectableAdapter {
        boolean selAll;

        public SelAdapter() {
            super(CatalogFragment.this, R.layout.selectable_item_frame, false);
        }

        @Override // com.narvii.list.select.SelectableAdapter
        public boolean isSelected(Object obj) {
            return this.selAll || super.isSelected(obj);
        }

        @Override // com.narvii.list.select.SelectableAdapter, com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (CatalogFragment.this.isAllEntry()) {
                return true;
            }
            return super.onLongClick(listAdapter, i10, obj, view, view2);
        }
    }

    class SubmitCatalogAdapter extends SubmitFavoriteAdapter {
        public SubmitCatalogAdapter() {
            super(CatalogFragment.this);
        }

        @Override // com.narvii.catalog.SubmitFavoriteAdapter, android.widget.Adapter
        public int getCount() {
            if (CatalogFragment.this.isAllEntry()) {
                return 0;
            }
            return super.getCount();
        }
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 2);
    }

    Media getPreviewMedia() {
        return getPreviewMedia(false);
    }

    public boolean isRootCategory() {
        return this.category == null && this.categoryId == null;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean setListContentBgWhenHasPageBackground() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInAllCuratorFolder() {
        return this.showAll && TextUtils.isEmpty(this.categoryId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTitle() {
        String stringParam = getStringParam("title");
        if (stringParam != null) {
            if (fromMyCatalog()) {
                setTitle(getString(R.string.my_favorites));
                return;
            } else {
                setTitle(stringParam);
                return;
            }
        }
        ItemCategory itemCategory = this.category;
        if (itemCategory != null) {
            setTitle(itemCategory.label);
            return;
        }
        if (isAllEntry()) {
            setTitle(R.string.wiki);
        } else if (this.showAll) {
            setTitle(this.uid == null ? R.string.all_curated : R.string.all_favorites);
        } else {
            setTitle(R.string.catalog);
        }
    }

    public void addItemList(List<Item> list) {
        ItemCategory itemCategory;
        if (list == null || list.size() == 0 || (itemCategory = this.category) == null || TextUtils.isEmpty(itemCategory.categoryId)) {
            return;
        }
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator<Item> it = list.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(it.next().itemId);
        }
        ArrayNode arrayNodeCreateArrayNode2 = JacksonUtils.createArrayNode();
        arrayNodeCreateArrayNode2.add(this.category.categoryId);
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.post().path("/item/" + list.get(0).itemId + "/tag");
        builder.param("itemIdList", arrayNodeCreateArrayNode);
        builder.param("categoryIdList", arrayNodeCreateArrayNode2);
        String str = this.uid;
        if (str != null) {
            builder.param("sourceUid", str);
            builder.param("destinationUid", this.uid);
        }
        ApiRequest apiRequestBuild = builder.build();
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.CatalogFragment.11
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                NVToast.makeText(CatalogFragment.this.getContext(), CatalogFragment.this.getString(R.string.catalog_pick_item), 0).show();
                CatalogFragment.this.sendNotification(new Notification("new", CatalogFragment.this.category));
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
    }

    void addSubCategory() {
        CategoryListResponse categoryListResponse;
        Intent intent = new Intent(getContext(), (Class<?>) CategoryPostActivity.class);
        CategoryPost categoryPost = new CategoryPost();
        String str = this.categoryId;
        if (str == null) {
            ItemCategory rootCategory = this.adapter.getRootCategory();
            if (rootCategory == null && (categoryListResponse = this.categoryListResponse) != null) {
                rootCategory = categoryListResponse.getRootCategory();
            }
            if (rootCategory == null) {
                return;
            } else {
                categoryPost.parentCategoryId = rootCategory.categoryId;
            }
        } else {
            categoryPost.parentCategoryId = str;
        }
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(categoryPost));
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    public void addTo(final ItemCategory itemCategory) {
        ArrayList arrayList = new ArrayList(this.selAdapter.selections());
        if (arrayList.isEmpty()) {
            return;
        }
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(((Item) it.next()).itemId);
        }
        ArrayNode arrayNodeCreateArrayNode2 = JacksonUtils.createArrayNode();
        arrayNodeCreateArrayNode2.add(itemCategory.categoryId);
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.post().path("/item/" + ((Item) arrayList.get(0)).itemId + "/tag");
        builder.param("itemIdList", arrayNodeCreateArrayNode);
        builder.param("categoryIdList", arrayNodeCreateArrayNode2);
        String str = this.uid;
        if (str != null) {
            builder.param("sourceUid", str);
            builder.param("destinationUid", this.uid);
        }
        ApiRequest apiRequestBuild = builder.build();
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.CatalogFragment.10
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                NVToast.makeText(CatalogFragment.this.getContext(), CatalogFragment.this.getString(R.string.catalog_added_to, itemCategory.label), 0).show();
                CatalogFragment.this.sendNotification(new Notification("update", itemCategory));
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        SubCategoryResponse subCategoryResponse;
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        IAdapter iAdapter = new IAdapter();
        this.itemAdapter = iAdapter;
        ItemHelper itemHelper = iAdapter.itemHelper;
        String str = this.uid == null ? "Catalog" : "User Catalog";
        itemHelper.source = str;
        iAdapter.detailOpenSource = str;
        SelAdapter selAdapter = new SelAdapter();
        this.selAdapter = selAdapter;
        selAdapter.setAdapter(this.itemAdapter);
        this.selAdapter.setListener(this.itemAdapter);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this);
        divideColumnAdapter.setAdapter(this.selAdapter, 3);
        divideColumnAdapter.setSupportLongClick(true);
        this.searchAdapter = new SearchAdapter();
        this.adapter = new CAdapter(this.itemAdapter);
        if (bundle == null && (subCategoryResponse = (SubCategoryResponse) JacksonUtils.readAs(getStringParam("__categoryResponse"), SubCategoryResponse.class)) != null) {
            this.adapter.setResponse(subCategoryResponse);
        }
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        dividerAdapter.setAdapter(this.adapter, 2);
        MyMergeAdapter myMergeAdapter = new MyMergeAdapter();
        this.mergeAdapter = myMergeAdapter;
        myMergeAdapter.addAdapter(staticViewAdapter, false);
        if (!getBooleanParam("__embed")) {
            myMergeAdapter.addAdapter(this.searchAdapter, false);
        }
        if (isRootCategory() && TextUtils.isEmpty(this.uid) && !isAllEntry()) {
            RecentActivityEntryAdapter recentActivityEntryAdapter = new RecentActivityEntryAdapter(this);
            this.recentActivityEntryAdapter = recentActivityEntryAdapter;
            myMergeAdapter.addAdapter(recentActivityEntryAdapter);
        }
        myMergeAdapter.addAdapter(dividerAdapter, true);
        myMergeAdapter.addAdapter(divideColumnAdapter, false);
        if (this.categoryId == null) {
            AIAdapter aIAdapter = new AIAdapter();
            this.aiadapter = aIAdapter;
            myMergeAdapter.addAdapter(aIAdapter);
            if (TextUtils.isEmpty(this.uid)) {
                MyAllEntryAdapter myAllEntryAdapter = new MyAllEntryAdapter();
                this.allEntryAdapter = myAllEntryAdapter;
                myMergeAdapter.addAdapter(myAllEntryAdapter);
            }
        }
        if (isGoldTheme() && this.isCurationEnabled) {
            myMergeAdapter.addAdapter(new SubmitCatalogAdapter());
        }
        getListView().setOnItemLongClickListener(myMergeAdapter);
        return myMergeAdapter;
    }

    public void delete(boolean z6) {
        final ArrayList arrayList = new ArrayList(this.selAdapter.selections());
        if (arrayList.isEmpty()) {
            return;
        }
        if (!z6) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            if (arrayList.size() == 1) {
                builder.setMessage(R.string.catalog_delete_warning);
            } else {
                builder.setMessage(getString(R.string.catalog_delete_warning_s, Integer.valueOf(arrayList.size())));
            }
            builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
            builder.setPositiveButton(R.string.delete, new DialogInterface.OnClickListener() { // from class: com.narvii.catalog.CatalogFragment.14
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    CatalogFragment.this.delete(true);
                }
            });
            builder.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.CatalogFragment.13
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                CatalogFragment.this.selAdapter.finishSelect();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    CatalogFragment.this.sendNotification(new Notification("delete", (Item) it.next()));
                }
                ItemCategory itemCategory = new ItemCategory();
                if (itemCategory.author == null) {
                    itemCategory.author = new User();
                }
                itemCategory.author.uid = CatalogFragment.this.uid;
                CatalogFragment.this.sendNotification(new Notification("update", itemCategory));
            }
        };
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(((Item) it.next()).itemId);
        }
        ApiRequest.Builder builder2 = ApiRequest.builder();
        builder2.post().path("/item/" + ((Item) arrayList.get(0)).itemId + "/batch-delete");
        builder2.param("itemIdList", arrayNodeCreateArrayNode);
        String str = this.uid;
        if (str != null) {
            builder2.param("sourceUid", str);
        }
        ((ApiService) getService("api")).exec(builder2.build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    public int depth() {
        int i10 = 0;
        if (this.categoryId == null) {
            return 0;
        }
        if (!isReady()) {
            return -1;
        }
        CategoryListResponse categoryListResponse = this.categoryListResponse;
        if (categoryListResponse != null) {
            ItemCategory category = categoryListResponse.getCategory(this.categoryId);
            if (category != null) {
                while (category != null) {
                    String str = category.parentCategoryId;
                    if (str == null) {
                        break;
                    }
                    category = this.categoryListResponse.getCategory(str);
                    i10++;
                }
            } else {
                return this.curDepth;
            }
        }
        return i10;
    }

    void editCategory() {
        CategoryPost categoryPost;
        CategoryListResponse categoryListResponse;
        Intent intent = new Intent(getContext(), (Class<?>) CategoryPostActivity.class);
        if (this.categoryId == null) {
            ItemCategory rootCategory = this.adapter.getRootCategory();
            if (rootCategory == null && (categoryListResponse = this.categoryListResponse) != null) {
                rootCategory = categoryListResponse.getRootCategory();
            }
            if (rootCategory == null) {
                return;
            }
            categoryPost = new CategoryPost(rootCategory);
            intent.putExtra("categoryId", rootCategory.categoryId);
            intent.putExtra("category", JacksonUtils.writeAsString(rootCategory));
        } else {
            categoryPost = new CategoryPost(this.category);
            intent.putExtra("categoryId", this.category.categoryId);
            intent.putExtra("category", JacksonUtils.writeAsString(this.category));
        }
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(categoryPost));
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    boolean fromMyCatalog() {
        return getBooleanParam("fromMyCatalog");
    }

    boolean fromOfficialCatalog() {
        if (getBooleanParam("fromOfficialCatalog")) {
            return true;
        }
        return TextUtils.isEmpty(getStringParam("categoryId")) && TextUtils.isEmpty(getStringParam("uid"));
    }

    Media getPreviewMedia(boolean z6) {
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
        if (!z6 && rootCategory != null && rootCategory.firstMedia() != null) {
            return rootCategory.firstMedia();
        }
        if (rootCategory == null || (list = this.adapter.previewMap.get(rootCategory.categoryId)) == null || list.size() <= 0) {
            return null;
        }
        return list.get(0).firstMedia();
    }

    public boolean isAllEntry() {
        ItemCategory itemCategory;
        if (this.categoryId == null) {
            return !this.isCurationEnabled && TextUtils.isEmpty(this.uid);
        }
        if (!isReady()) {
            return false;
        }
        CategoryListResponse categoryListResponse = this.categoryListResponse;
        return (categoryListResponse == null || (itemCategory = categoryListResponse.allEntriesItemCategory) == null || !this.categoryId.equals(itemCategory.categoryId)) ? false : true;
    }

    boolean isCurator() {
        User userProfile;
        return this.uid == null && (userProfile = ((AccountService) getService("account")).getUserProfile()) != null && userProfile.isCurator();
    }

    boolean isMine() {
        return Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), this.uid);
    }

    public boolean isReady() {
        if (this.uid == null) {
            return this.categoryListResponse != null;
        }
        return (this.categoryId == null && this.showAll && !getBooleanParam(IS_ALL_CURATION)) || this.categoryListResponse != null;
    }

    void launchModerationHistory() {
        Intent intent = FragmentWrapperActivity.intent(ModerationHistoryFragment.class);
        String str = this.categoryId;
        if (str == null) {
            CategoryListResponse categoryListResponse = this.categoryListResponse;
            str = categoryListResponse != null ? categoryListResponse.getRootCategory().categoryId : null;
        }
        intent.putExtra(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, str);
        intent.putExtra(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, 13);
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    public void moveTo(final ItemCategory itemCategory) {
        if (this.categoryId == null) {
            return;
        }
        final ArrayList arrayList = new ArrayList(this.selAdapter.selections());
        if (arrayList.isEmpty()) {
            return;
        }
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(((Item) it.next()).itemId);
        }
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.post().path("/item-category/" + this.categoryId + "/item-move");
        builder.param("itemIdList", arrayNodeCreateArrayNode);
        builder.param("destinationCategoryId", itemCategory.categoryId);
        ApiRequest apiRequestBuild = builder.build();
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.CatalogFragment.9
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                NVToast.makeText(CatalogFragment.this.getContext(), CatalogFragment.this.getString(R.string.catalog_moved_to, itemCategory.label), 0).show();
                CatalogFragment.this.selAdapter.finishSelect();
                CatalogFragment.this.itemAdapter.rawList().removeAll(arrayList);
                CatalogFragment.this.itemAdapter.notifyDataSetChanged();
                if (itemCategory != null) {
                    Notification notification = new Notification("update", itemCategory);
                    CatalogFragment catalogFragment = CatalogFragment.this;
                    catalogFragment.suspendNotification = true;
                    catalogFragment.sendNotification(notification);
                    CatalogFragment.this.suspendNotification = false;
                }
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        Item item;
        ArrayList listAs;
        if (i10 == 100 && i11 == -1 && intent != null) {
            ArrayList listAs2 = JacksonUtils.readListAs(intent.getStringExtra("categoryList"), ItemCategory.class);
            if (intent.getStringExtra("itemId") != null) {
                this.itemAdapter.addToCategory(listAs2, intent.getStringExtra("itemId"));
                return;
            }
            return;
        }
        if (i10 == 1 && i11 == -1 && intent != null) {
            moveTo((ItemCategory) JacksonUtils.readAs(intent.getStringExtra("category"), ItemCategory.class));
        }
        if (i10 == 2 && i11 == -1 && intent != null) {
            addTo((ItemCategory) JacksonUtils.readAs(intent.getStringExtra("category"), ItemCategory.class));
        }
        if (i10 == 3 && i11 == -1 && intent != null) {
            mergeTo((ItemCategory) JacksonUtils.readAs(intent.getStringExtra("category"), ItemCategory.class));
        }
        if (i10 == 4 && i11 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("itemList"), Item.class)) != null) {
            this.itemAdapter.updateList(listAs);
        }
        if (i10 == 5 && i11 == -1 && intent != null) {
            this.adapter.updateList(JacksonUtils.readListAs(intent.getStringExtra("categoryList"), ItemCategory.class));
            this.adapter.refresh(0, null);
        }
        if (i10 == 10 && i11 == 0) {
            finish();
        }
        if (i10 == 11 && i11 == -1 && intent != null && (item = (Item) JacksonUtils.readAs(intent.getStringExtra("item"), Item.class)) != null) {
            this.itemHelper.submitOfficialCatalog(item);
        }
        if (i10 == 1 && intent != null && i11 == -1) {
            addItemList(JacksonUtils.readListAs(intent.getStringExtra("itemList"), Item.class));
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (this.suspendNotification) {
            return;
        }
        if (notification.objectType == 13 && Utils.isEqualsNotNull(notification.id, this.categoryId)) {
            String str = notification.action;
            if (str == "update") {
                Object obj = notification.obj;
                if (obj instanceof ItemCategory) {
                    ItemCategory itemCategory = (ItemCategory) obj;
                    this.category = itemCategory;
                    setTitle(itemCategory != null ? itemCategory.label : null);
                    update();
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

    public void remove() {
        final ArrayList arrayList = new ArrayList(this.selAdapter.selections());
        if (arrayList.isEmpty()) {
            return;
        }
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(((Item) it.next()).itemId);
        }
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.post().path("/item-category/" + this.categoryId + "/item-remove");
        builder.param("itemIdList", arrayNodeCreateArrayNode);
        String str = this.uid;
        if (str != null) {
            builder.param("sourceUid", str);
        }
        ApiRequest apiRequestBuild = builder.build();
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.CatalogFragment.12
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                CatalogFragment.this.selAdapter.finishSelect();
                CatalogFragment.this.itemAdapter.rawList().removeAll(arrayList);
                CatalogFragment.this.itemAdapter.notifyDataSetChanged();
                if (CatalogFragment.this.category != null) {
                    Notification notification = new Notification("update", CatalogFragment.this.category);
                    CatalogFragment catalogFragment = CatalogFragment.this;
                    catalogFragment.suspendNotification = true;
                    catalogFragment.sendNotification(notification);
                    CatalogFragment.this.suspendNotification = false;
                }
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
    }

    void reorder() {
        if (this.adapter.getType() != 3 && !this.showAll) {
            sortCategory();
            return;
        }
        Intent intent = TextUtils.isEmpty(this.categoryId) ? FragmentWrapperActivity.intent(ItemOrganizeFragment.class) : FragmentWrapperActivity.intent(SubItemOrganizeFragment.class);
        if (intent != null) {
            List<?> list = this.itemAdapter.list();
            if (list.size() > 20) {
                list = list.subList(0, 20);
            }
            intent.putExtra("itemList", JacksonUtils.writeAsString(list));
            intent.putExtra("uid", this.uid);
            intent.putExtra("categoryId", this.categoryId);
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 4);
        }
    }

    void reviewSubmission() {
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, FragmentWrapperActivity.intent(CatalogSubmissionFragment.class));
    }

    void sortCategory() {
        Intent intent = FragmentWrapperActivity.intent(CategoryOrganizeFragment.class);
        String str = this.categoryId;
        if (str == null) {
            ItemCategory rootCategory = this.adapter.getRootCategory();
            if (rootCategory == null) {
                return;
            } else {
                str = rootCategory.categoryId;
            }
        }
        intent.putExtra("categoryId", str);
        intent.putExtra("categoryList", JacksonUtils.writeAsString(this.adapter.categoryList));
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 5);
    }

    void update() {
        TextView textView;
        View view = this.emptyView;
        if (view != null && (textView = (TextView) view.findViewById(R.id.catalog_empty_info)) != null) {
            if (depth() == 0) {
                textView.setText(getString(isMine() ? R.string.catalog_catalog_empty_person : R.string.catalog_goto_submission));
            } else {
                textView.setText(getString(R.string.catalog_add_item));
            }
        }
        if (!isAllEntry()) {
            this.backgroundImageView.setImageMedia(getPreviewMedia());
            return;
        }
        IAdapter iAdapter = this.itemAdapter;
        if (iAdapter == null || iAdapter.list() == null || this.itemAdapter.list().size() <= 0) {
            return;
        }
        NVObject nVObject = (NVObject) this.itemAdapter.list().get(0);
        if (nVObject instanceof Item) {
            this.backgroundImageView.setImageMedia(((Item) nVObject).firstMedia());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPreRequestBeforeReady() {
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/item-category");
        if (this.uid != null) {
            builderPath.param("type", GlobalProfileFragment.KEY_USER);
            builderPath.param("q", this.uid);
        }
        builderPath.param("start", 0);
        builderPath.param("size", 100);
        ((ApiService) getService("api")).exec(builderPath.build(), this.categoryListListener);
    }

    public void mergeTo(final ItemCategory itemCategory) {
        ApiRequest.Builder builderPath = ApiRequest.builder().post().path("/item-category/" + this.categoryId + "/merge");
        builderPath.param("destinationCategoryId", itemCategory.categoryId);
        ApiRequest apiRequestBuild = builderPath.build();
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.CatalogFragment.15
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                NVToast.makeText(CatalogFragment.this.getContext(), CatalogFragment.this.getString(R.string.catalog_all_moved_to, itemCategory.label), 0).show();
                CatalogFragment.this.finish();
                CatalogFragment.this.sendNotification(new Notification("update", itemCategory));
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        if (isRootCategory() && TextUtils.isEmpty(this.uid) && !isAllEntry()) {
            ((LiveLayerService) getService("liveLayer")).reportBrowsing(Module.MODULE_CATALOG, z6);
            return;
        }
        if (this.categoryId != null) {
            if (fromOfficialCatalog() || fromMyCatalog()) {
                LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
                HashMap<String, Object> map = new HashMap<>();
                map.put("isCurated", Boolean.valueOf(fromOfficialCatalog()));
                if (z6) {
                    liveLayerService.reportActive(LiveLayerService.ACTION_BROWSING, "item-category/" + this.categoryId, map);
                    return;
                }
                liveLayerService.reportInactive(LiveLayerService.ACTION_BROWSING, "item-category/" + this.categoryId, map);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setHasOptionsMenu(true);
        updateTitle();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        if (bundle == null) {
            this.uid = getStringParam("uid");
            this.categoryId = getStringParam("categoryId");
            this.curDepth = getIntParam("depth");
            this.showAll = getBooleanParam("showAll");
            this.category = (ItemCategory) JacksonUtils.readAs(getStringParam("category"), ItemCategory.class);
            this.categoryListResponse = (CategoryListResponse) JacksonUtils.readAs(getStringParam("categoryListResponse"), CategoryListResponse.class);
        } else {
            this.uid = bundle.getString("uid");
            this.categoryId = bundle.getString("categoryId");
            this.curDepth = bundle.getInt("depth");
            this.showAll = bundle.getBoolean("showAll");
            this.category = (ItemCategory) JacksonUtils.readAs(bundle.getString("category"), ItemCategory.class);
            this.categoryListResponse = (CategoryListResponse) JacksonUtils.readAs(bundle.getString("categoryListResponse"), CategoryListResponse.class);
        }
        ItemHelper itemHelper = new ItemHelper(this);
        this.itemHelper = itemHelper;
        itemHelper.source = "Official Catalog";
        this.catalogHelper = new CatalogHelper(this);
        this.sendBroadcastHelper = new SendBroadcastHelper(this);
        this.isCurationEnabled = new CommunityConfigHelper(this).getModuleBoolean(Module.MODULE_CATALOG, "curationEnabled");
        if (bundle == null && !getBooleanParam("nostat")) {
            StatisticsService statisticsService = (StatisticsService) getService("statistics");
            if (this.uid == null) {
                str = "Official Catalog Page Opened";
            } else {
                str = "User Catalog Page Opened";
            }
            statisticsService.event(str).userPropInc(str + " Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.add(0, R.string.share, 0, R.string.share).setIcon(R.drawable.ic_community_share);
        menu.add(0, R.string.catalog_add_category, 0, R.string.catalog_add_category);
        menu.add(0, R.string.catalog_add_subcategory, 0, R.string.catalog_add_subcategory);
        menu.add(0, R.string.catalog_edit_category, 0, R.string.catalog_edit_category);
        menu.add(0, R.string.catalog_more_options, 0, R.string.catalog_more_options);
        menu.add(0, R.string.reorder_favorites, 0, R.string.reorder_favorites);
        menu.add(0, R.string.catalog_submit_favorite, 0, R.string.catalog_submit_favorite);
        menu.add(0, R.string.advanced, 0, R.string.advanced);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        List<ItemCategory> list;
        ItemCategory rootCategory;
        if (menuItem.getItemId() == R.string.share) {
            if (this.categoryId == null) {
                rootCategory = this.adapter.getRootCategory();
            } else {
                rootCategory = this.category;
            }
            if (isAllEntry()) {
                rootCategory = this.categoryListResponse.allEntriesItemCategory;
            }
            if (rootCategory != null) {
                ShareDialog.getShareDialogFromWikiFolder(this, rootCategory).setSource("Catalog").show();
            }
            return true;
        }
        if (menuItem.getItemId() != R.string.catalog_add_subcategory && menuItem.getItemId() != R.string.catalog_add_category) {
            if (menuItem.getItemId() == R.string.catalog_edit_category) {
                editCategory();
                return true;
            }
            if (menuItem.getItemId() == R.string.catalog_more_options) {
                this.selAdapter.startSelect(null);
                return true;
            }
            if (menuItem.getItemId() == R.string.reorder_favorites) {
                reorder();
                return true;
            }
            if (menuItem.getItemId() == R.string.catalog_review_submissions) {
                reviewSubmission();
                return true;
            }
            if (menuItem.getItemId() == R.string.catalog_submit_favorite) {
                this.catalogHelper.openSubmitFavoritePicker();
                return true;
            }
            if (menuItem.getItemId() == R.string.advanced) {
                AdvancedOptionDialog.Builder builder = new AdvancedOptionDialog.Builder(this);
                int type = this.adapter.getType();
                User userProfile = ((AccountService) getService("account")).getUserProfile();
                if (userProfile != null) {
                    if (depth() < 3 && ((type == 2 || type == 1) && userProfile.isCurator())) {
                        builder.addItem(R.string.advanced_options_add_category, this.advanceListener);
                    }
                    if (userProfile.isCurator()) {
                        builder.addItem(R.string.catalog_change_background, this.advanceListener);
                    }
                    if (userProfile.isCurator() && ((this.itemAdapter.list() != null && this.itemAdapter.list().size() > 1) || ((list = this.adapter.categoryList) != null && list.size() > 1))) {
                        builder.addItem(R.string.reorder, this.advanceListener);
                    }
                    if (userProfile.isLeader() && new PackageUtils(getContext()).acmBroadcast()) {
                        builder.addItem(R.string.broadcast_page, this.advanceListener);
                    }
                    if (userProfile.isCurator()) {
                        builder.addItem(R.string.advanced_options_moderation_history, this.advanceListener);
                    }
                    if (type == 3 && userProfile.isCurator() && this.itemAdapter.list() != null && this.itemAdapter.list().size() > 1) {
                        builder.addItem(R.string.catalog_more_options, this.advanceListener);
                    }
                }
                AdvancedOptionDialog advancedOptionDialogBuild = builder.build();
                this.advancedOptionDialog = advancedOptionDialogBuild;
                advancedOptionDialogBuild.show();
            }
            return super.onOptionsItemSelected(menuItem);
        }
        addSubCategory();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        int i10;
        boolean z13;
        boolean z14;
        boolean z15;
        List<ItemCategory> list;
        CategoryListResponse categoryListResponse;
        super.onPrepareOptionsMenu(menu);
        boolean zIsReady = isReady();
        boolean zIsAllEntry = isAllEntry();
        boolean zIsMine = isMine();
        int iDepth = depth();
        int type = this.adapter.getType();
        MenuItem menuItemFindItem = menu.findItem(R.string.share);
        boolean z16 = false;
        if (zIsReady && (categoryListResponse = this.categoryListResponse) != null && categoryListResponse.allEntriesItemCategory != null) {
            z6 = true;
        } else {
            z6 = false;
        }
        menuItemFindItem.setVisible(z6);
        if (zIsAllEntry) {
            menu.findItem(R.string.share).setShowAsAction(1);
        }
        MenuItem menuItemFindItem2 = menu.findItem(R.string.catalog_add_subcategory);
        if (zIsReady && !zIsAllEntry && iDepth < 3 && iDepth != 0 && ((type == 2 || type == 1) && zIsMine)) {
            z10 = true;
        } else {
            z10 = false;
        }
        menuItemFindItem2.setVisible(z10);
        MenuItem menuItemFindItem3 = menu.findItem(R.string.catalog_add_category);
        if (zIsReady && !zIsAllEntry && iDepth == 0 && ((type == 2 || type == 1) && zIsMine)) {
            z11 = true;
        } else {
            z11 = false;
        }
        menuItemFindItem3.setVisible(z11);
        MenuItem menuItemFindItem4 = menu.findItem(R.string.catalog_edit_category);
        if (zIsReady && !zIsAllEntry && zIsMine) {
            z12 = true;
        } else {
            z12 = false;
        }
        menuItemFindItem4.setVisible(z12);
        MenuItem menuItemFindItem5 = menu.findItem(R.string.catalog_edit_category);
        if (isRootCategory()) {
            i10 = R.string.change_background;
        } else {
            i10 = R.string.edit;
        }
        menuItemFindItem5.setTitle(i10);
        MenuItem menuItemFindItem6 = menu.findItem(R.string.catalog_more_options);
        if (zIsReady && !zIsAllEntry && type == 3 && zIsMine) {
            z13 = true;
        } else {
            z13 = false;
        }
        menuItemFindItem6.setVisible(z13);
        MenuItem menuItemFindItem7 = menu.findItem(R.string.reorder_favorites);
        if (zIsReady && !zIsAllEntry && zIsMine && ((this.itemAdapter.list() != null && this.itemAdapter.list().size() > 1) || ((list = this.adapter.categoryList) != null && list.size() > 1))) {
            z14 = true;
        } else {
            z14 = false;
        }
        menuItemFindItem7.setVisible(z14);
        User userProfile = ((AccountService) getService("account")).getUserProfile();
        MenuItem menuItemFindItem8 = menu.findItem(R.string.catalog_submit_favorite);
        if (zIsReady && !zIsAllEntry && fromOfficialCatalog()) {
            z15 = true;
        } else {
            z15 = false;
        }
        menuItemFindItem8.setVisible(z15);
        MenuItem menuItemFindItem9 = menu.findItem(R.string.advanced);
        if (zIsReady && !zIsAllEntry && this.uid == null && userProfile != null && userProfile.isCurator()) {
            z16 = true;
        }
        menuItemFindItem9.setVisible(z16);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        MyAllEntryAdapter myAllEntryAdapter = this.allEntryAdapter;
        if (myAllEntryAdapter != null) {
            myAllEntryAdapter.refresh(0, null);
        }
        if (this.recentActivityEntryAdapter != null && !isAllEntry()) {
            this.recentActivityEntryAdapter.refresh(0, null);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.refreshAfterResume) {
            this.adapter.refresh(0, null);
            this.refreshAfterResume = false;
        }
        if (this.categoryId == null && this.uid == null && isRootFragment()) {
            if (!((AccountService) getService("account")).getPrefs().getBoolean("disableCatalogGuideline", false)) {
                showGuideline();
            } else {
                dismissGuideline();
            }
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("showAll", this.showAll);
        bundle.putString("categoryId", this.categoryId);
        bundle.putInt("depth", this.curDepth);
        bundle.putString("uid", this.uid);
    }

    @Override // com.narvii.catalog.CatalogThemeFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        int i10;
        int i11;
        View viewFindViewById;
        View viewFindViewById2;
        super.onViewCreated(view, bundle);
        update();
        if (isGoldTheme()) {
            View emptyView = setEmptyView(R.layout.catalog_empty_view_official);
            this.emptyView = emptyView;
            emptyView.findViewById(R.id.catalog_add).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.catalog.CatalogFragment.1
                public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivityForResult(p1, p5);
                }

                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (CatalogFragment.this.depth() == 0) {
                        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(CatalogFragment.this, FragmentWrapperActivity.intent(CatalogSubmissionFragment.class));
                    } else {
                        Intent intent = FragmentWrapperActivity.intent(AllItemPickerFragment.class);
                        intent.putExtra("pickOnFinish", true);
                        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(CatalogFragment.this, intent, 1);
                    }
                }
            });
        } else {
            View emptyView2 = setEmptyView(R.layout.catalog_empty_view_normal);
            this.emptyView = emptyView2;
            ViewGroup.LayoutParams layoutParams = emptyView2.findViewById(R.id.empty_text).getLayoutParams();
            if (isAdded() && getActivity() != null) {
                i10 = (int) (Utils.getScreenSize(getActivity()).y / 3.0f);
            } else {
                i10 = 200;
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i10;
            }
            View viewFindViewById3 = this.emptyView.findViewById(R.id.create_wiki);
            View viewFindViewById4 = this.emptyView.findViewById(R.id.add_wiki);
            int i12 = 0;
            if (!isMine() && !isAllEntry()) {
                i11 = 8;
            } else {
                i11 = 0;
            }
            viewFindViewById3.setVisibility(i11);
            if (!isMine() || depth() == 0) {
                i12 = 8;
            }
            viewFindViewById4.setVisibility(i12);
            viewFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.catalog.CatalogFragment.2
                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Intent intent = new Intent(CatalogFragment.this.getContext(), (Class<?>) ItemPostActivity.class);
                    intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new ItemPost()));
                    intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, LoggingSource.FeedList.name());
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(CatalogFragment.this, intent);
                }
            });
            viewFindViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.catalog.CatalogFragment.3
                public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivityForResult(p1, p5);
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Intent intent = FragmentWrapperActivity.intent(AllItemPickerFragment.class);
                    intent.putExtra("pickOnFinish", true);
                    if (CatalogFragment.this.isMine()) {
                        intent.putExtra("uid", CatalogFragment.this.uid);
                    }
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(CatalogFragment.this, intent, 1);
                }
            });
        }
        View view2 = this.emptyView;
        if (view2 != null && (viewFindViewById2 = view2.findViewById(R.id.submit_favorite)) != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.catalog.CatalogFragment.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    CatalogFragment.this.catalogHelper.openSubmitFavoritePicker();
                }
            });
        }
        View view3 = this.emptyView;
        if (view3 != null && (viewFindViewById = view3.findViewById(R.id.empty_retry)) != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.catalog.CatalogFragment.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view4) {
                    CatalogFragment.this.mergeAdapter.refresh(2, null);
                }
            });
        }
        if (!isReady()) {
            sendPreRequestBeforeReady();
        }
    }
}
