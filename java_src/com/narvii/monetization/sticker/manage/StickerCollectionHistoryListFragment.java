package com.narvii.monetization.sticker.manage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.MemberShipExpireWarningFragment;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionListResponse;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.wallet.MembershipService;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class StickerCollectionHistoryListFragment extends NVListFragment {
    public Adapter adapter;
    boolean added;
    private boolean containEditable;
    StickerService stickerService;
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy", Locale.getDefault());
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionHistoryListFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Adapter adapter;
            if (!MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction()) || (adapter = StickerCollectionHistoryListFragment.this.adapter) == null) {
                return;
            }
            adapter.notifyDataSetChanged();
        }
    };

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.all_stickers);
        MemberShipExpireWarningFragment.attachTo(this, "Sticker (Bar)");
        this.stickerService = (StickerService) getService("sticker");
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        if (bundle != null) {
            this.containEditable = bundle.getBoolean("containEditable", false);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("containEditable", this.containEditable);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sticker_collection_history, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.sticker_collection_history_empty).findViewById(R.id.check_store).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionHistoryListFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
                intent.putExtra("scrollSectionGroupId", "sticker");
                intent.putExtra("Source", "Added History (Empty)");
                StickerCollectionHistoryListFragment.this.startActivity(intent);
            }
        });
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        getActivity().getWindow().setBackgroundDrawable(new ColorDrawable(ContextCompat.getColor(getContext(), R.color.product_manager_bg_color)));
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(new TitleAdapter(this, R.string.stickers_added) { // from class: com.narvii.monetization.sticker.manage.StickerCollectionHistoryListFragment.3
            @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
            public int getCount() {
                Adapter adapter = StickerCollectionHistoryListFragment.this.adapter;
                return (adapter == null || !adapter.isListShown() || StickerCollectionHistoryListFragment.this.adapter.getCount() == 0) ? 0 : 1;
            }
        });
        this.adapter = new Adapter(this);
        DividerAdapter dividerAdapter = new DividerAdapter(this) { // from class: com.narvii.monetization.sticker.manage.StickerCollectionHistoryListFragment.4
            @Override // com.narvii.list.DividerAdapter
            protected int getDividerLayoutId() {
                return R.layout.left_white_divider;
            }
        };
        dividerAdapter.setAdapter(this.adapter);
        mergeAdapter.addAdapter(dividerAdapter, true);
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        if (this.added) {
            this.stickerService.refreshStickerCollectionInfo(true);
            this.added = false;
        }
        super.onPause();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    class TitleAdapter extends AdriftAdapter {
        int strId;

        public TitleAdapter(NVContext nVContext, int i) {
            super(nVContext);
            this.strId = i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.store_item_manage_title_item, viewGroup, view);
            if (this.strId != 0) {
                ((TextView) viewCreateView.findViewById(R.id.title)).setText(this.strId);
            }
            return viewCreateView;
        }
    }

    class Adapter extends NVPagedAdapter<StickerCollection, StickerCollectionListResponse> implements NotificationListener {
        StickerHelper stickerHelper;

        @Override // com.narvii.list.NVPagedAdapter
        protected List<StickerCollection> filterResponseList(List<StickerCollection> list, int i) {
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

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 20;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.stickerHelper = new StickerHelper(nVContext);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<StickerCollection> dataType() {
            return StickerCollection.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends StickerCollectionListResponse> responseType() {
            return StickerCollectionListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().path("/sticker-collection").param("type", "my-collection").build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, StickerCollectionListResponse stickerCollectionListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) stickerCollectionListResponse, i);
            List<? extends StickerCollection> listRawList = rawList();
            if (listRawList == null) {
                StickerCollectionHistoryListFragment.this.containEditable = false;
                return;
            }
            Iterator<? extends StickerCollection> it = listRawList.iterator();
            while (it.hasNext()) {
                if (this.stickerHelper.isCreatedByMe(it.next())) {
                    StickerCollectionHistoryListFragment.this.containEditable = true;
                    return;
                }
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof StickerCollection) {
                if (view2 != null && view2.getId() == R.id.collection_layout) {
                    this.stickerHelper.onClickStickerCollection((StickerCollection) obj, "Added History");
                    return true;
                }
                if (view2 != null && view2.getId() == R.id.edit) {
                    this.stickerHelper.onClickEditStickerCollectionButton((StickerCollection) obj);
                }
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void changeActive(final StickerCollection stickerCollection, final boolean z) {
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.show();
            ApiService apiService = (ApiService) getService("api");
            ApiRequest.Builder builderPost = ApiRequest.builder().post();
            StringBuilder sb = new StringBuilder();
            sb.append("sticker-collection/");
            sb.append(stickerCollection.id());
            sb.append(z ? "/activate" : "/deactivate");
            apiService.exec(builderPost.path(sb.toString()).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.sticker.manage.StickerCollectionHistoryListFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                    progressDialog.dismiss();
                    stickerCollection.isActivated = z;
                    Adapter.this.notifyDataSetChanged();
                    if (z) {
                        StickerCollectionHistoryListFragment.this.added = true;
                    } else {
                        StickerCollectionHistoryListFragment.this.stickerService.removeStickerCollection(stickerCollection);
                    }
                    Adapter.this.sendNotification(new Notification("update", stickerCollection));
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    progressDialog.dismiss();
                    StickerCollectionHistoryListFragment.this.showShortToast(str);
                    stickerCollection.isActivated = !z;
                    Adapter.this.notifyDataSetChanged();
                }
            });
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof StickerCollection)) {
                return null;
            }
            StickerCollectionItem stickerCollectionItem = (StickerCollectionItem) createView(R.layout.sticker_collection_history_item, viewGroup, view);
            final StickerCollection stickerCollection = (StickerCollection) obj;
            stickerCollectionItem.setStickerCollection(stickerCollection);
            TextView textView = (TextView) stickerCollectionItem.findViewById(R.id.subtitle);
            boolean z = false;
            textView.setVisibility(0);
            textView.setText(StickerCollectionHistoryListFragment.this.simpleDateFormat.format(stickerCollection.getOwnTime()));
            CheckBox checkBox = (CheckBox) stickerCollectionItem.findViewById(R.id.active);
            checkBox.setOnCheckedChangeListener(null);
            checkBox.setChecked(stickerCollection.isActivated);
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionHistoryListFragment.Adapter.2
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                    Adapter.this.changeActive(stickerCollection, z2);
                }
            });
            View viewFindViewById = stickerCollectionItem.findViewById(R.id.edit);
            if (this.stickerHelper.isCreatedByMe(stickerCollection) && !stickerCollection.notAvailable()) {
                z = true;
            }
            ViewUtils.show(viewFindViewById, z);
            viewFindViewById.setOnClickListener(this.subviewClickListener);
            stickerCollectionItem.findViewById(R.id.collection_layout).setOnClickListener(this.subviewClickListener);
            return stickerCollectionItem;
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            editList(notification, false);
        }
    }
}
