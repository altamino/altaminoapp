package com.narvii.monetization.sticker.manage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionListResponse;
import com.narvii.monetization.sticker.widget.StickerCacheImageView;
import com.narvii.sticker.StickerCacheService;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.wallet.MembershipService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class CustomizedStickerListFragment extends NVListFragment implements FragmentOnBackListener, MediaPickerFragment.OnResultListener {
    Adapter adapter;
    String collectionId;
    MediaPickerFragment mediaPickerFragment;
    private MembershipService membershipService;
    private StickerHelper stickerHelper;
    ArrayList<Sticker> stickerList;
    StickerService stickerService;
    ArrayList<Sticker> deleteList = new ArrayList<>();
    boolean editing = false;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.sticker.manage.CustomizedStickerListFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Adapter adapter;
            if (!MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction()) || (adapter = CustomizedStickerListFragment.this.adapter) == null) {
                return;
            }
            adapter.notifyDataSetChanged();
        }
    };

    class Adapter extends NVArrayAdapter<Sticker> {
        String error;

        public Adapter(NVContext nVContext, Class<Sticker> cls) {
            super(nVContext, cls);
        }

        public Adapter(NVContext nVContext, Class<Sticker> cls, List<Sticker> list) {
            super(nVContext, cls, list);
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            if (CustomizedStickerListFragment.this.stickerList == null) {
                return this.error;
            }
            return null;
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return (CustomizedStickerListFragment.this.stickerList == null && this.error == null) ? false : true;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!CustomizedStickerListFragment.this.editing || view2 == null || view2.getId() != R.id.delete) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            if (!(obj instanceof Sticker)) {
                return true;
            }
            Sticker sticker = (Sticker) obj;
            remove(sticker);
            CustomizedStickerListFragment.this.deleteList.add(sticker);
            notifyDataSetChanged();
            return true;
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            return new Bundle();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            CustomizedStickerListFragment.this.stickerList = null;
            this.error = null;
            sendRequest();
            notifyDataSetChanged();
        }

        public void sendRequest() {
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("/sticker-collection").param("type", "my-favorite-collection").param("includeStickers", Boolean.TRUE).build(), new ApiResponseListener<StickerCollectionListResponse>(StickerCollectionListResponse.class) { // from class: com.narvii.monetization.sticker.manage.CustomizedStickerListFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, StickerCollectionListResponse stickerCollectionListResponse) throws Exception {
                    StickerCollection stickerCollection;
                    ArrayList<Sticker> arrayList;
                    super.onFinish(apiRequest, stickerCollectionListResponse);
                    CustomizedStickerListFragment customizedStickerListFragment = CustomizedStickerListFragment.this;
                    if (!customizedStickerListFragment.editing) {
                        customizedStickerListFragment.stickerList = new ArrayList<>();
                        if (stickerCollectionListResponse != null && !CollectionUtils.isEmpty(stickerCollectionListResponse.stickerCollectionList) && (stickerCollection = stickerCollectionListResponse.stickerCollectionList.get(0)) != null && (arrayList = stickerCollection.stickerList) != null) {
                            CustomizedStickerListFragment.this.stickerList.addAll(arrayList);
                        }
                        CustomizedStickerListFragment customizedStickerListFragment2 = CustomizedStickerListFragment.this;
                        customizedStickerListFragment2.stickerService.setStickerList(customizedStickerListFragment2.collectionId, customizedStickerListFragment2.stickerList);
                        Adapter.this.setList(new ArrayList(CustomizedStickerListFragment.this.stickerList));
                        CustomizedStickerListFragment.this.updateRightView();
                    }
                    Adapter adapter = Adapter.this;
                    adapter.error = null;
                    adapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    Adapter adapter = Adapter.this;
                    adapter.error = str;
                    adapter.notifyDataSetChanged();
                }
            });
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            Sticker item = getItem(i10);
            View viewCreateView = createView(R.layout.item_sticker_edit, viewGroup, view);
            ((StickerCacheImageView) viewCreateView.findViewById(R.id.sticker)).setStickerImageUrl(CustomizedStickerListFragment.this.collectionId, item.icon);
            ViewUtils.show(viewCreateView, R.id.delete, CustomizedStickerListFragment.this.editing);
            viewCreateView.findViewById(R.id.delete).setOnClickListener(this.subviewClickListener);
            ViewUtils.show(viewCreateView, R.id.disabled, item.isDisabled());
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendRequest();
        }
    }

    class AddAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public AddAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            CustomizedStickerListFragment.this.stickerHelper.pickStickerImage(CustomizedStickerListFragment.this.mediaPickerFragment);
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return createView(R.layout.customized_sticker_add_item, viewGroup, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBatchDeleteRequest() {
        if (this.stickerList == null) {
            return;
        }
        final List<Sticker> list = this.adapter.getList();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator<Sticker> it = this.deleteList.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(it.next().id());
        }
        if (arrayNodeCreateArrayNode.size() == 0) {
            setEditing(false);
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.monetization.sticker.manage.CustomizedStickerListFragment.4
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                CustomizedStickerListFragment.this.stickerList = new ArrayList<>(list);
                ((StickerCacheService) CustomizedStickerListFragment.this.getService("stickerCache")).deleteCachedFiles(CustomizedStickerListFragment.this.deleteList);
                CustomizedStickerListFragment.this.setEditing(false);
                CustomizedStickerListFragment customizedStickerListFragment = CustomizedStickerListFragment.this;
                customizedStickerListFragment.stickerService.setStickerList(customizedStickerListFragment.collectionId, customizedStickerListFragment.stickerList);
            }
        };
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path(String.format("sticker-collection/%s/stickers/batch-delete", this.collectionId)).param("stickerIdList", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRightView() {
        Adapter adapter = this.adapter;
        if (adapter == null || this.editing) {
            return;
        }
        boolean zIsEmpty = adapter.getList().isEmpty();
        NVActivity nVActivity = (NVActivity) getActivity();
        if (nVActivity == null) {
            return;
        }
        nVActivity.setRightViewEnabled(!zIsEmpty);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (!this.editing) {
            return false;
        }
        setEditing(false);
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        this.stickerHelper.onPickMediaResult(list, bundle, this.collectionId, new Callback<Sticker>() { // from class: com.narvii.monetization.sticker.manage.CustomizedStickerListFragment.5
            @Override // com.narvii.util.Callback
            public void call(Sticker sticker) {
                CustomizedStickerListFragment customizedStickerListFragment = CustomizedStickerListFragment.this;
                if (customizedStickerListFragment.adapter != null) {
                    ArrayList<Sticker> arrayList = customizedStickerListFragment.stickerList;
                    if (arrayList != null) {
                        arrayList.add(0, sticker);
                    }
                    CustomizedStickerListFragment.this.adapter.add(0, sticker);
                    CustomizedStickerListFragment.this.updateRightView();
                }
            }
        });
    }

    public void setEditing(boolean z6) {
        this.editing = z6;
        this.deleteList.clear();
        NVActivity nVActivity = (NVActivity) getActivity();
        if (nVActivity == null) {
            return;
        }
        nVActivity.removeRightView();
        ImageView imageView = (ImageView) nVActivity.getActionBar().getCustomView().findViewById(R.id.actionbar_back);
        if (z6) {
            imageView.setImageResource(R.drawable.ic_back_cross);
            nVActivity.setActionBarRightView(R.string.done, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.manage.CustomizedStickerListFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CustomizedStickerListFragment.this.sendBatchDeleteRequest();
                }
            });
        } else {
            imageView.setImageResource(R.drawable.ic_back_mirror);
            nVActivity.setActionBarRightView(R.string.edit, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.manage.CustomizedStickerListFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CustomizedStickerListFragment.this.setEditing(true);
                }
            });
        }
        Adapter adapter = this.adapter;
        if (adapter != null) {
            if (!z6 && this.stickerList != null) {
                adapter.setList(new ArrayList(this.stickerList));
            }
            this.adapter.notifyDataSetChanged();
            if (!z6) {
                nVActivity.setRightViewEnabled(!this.adapter.getList().isEmpty());
            }
        }
        View view = this.emptyView;
        if (view != null) {
            ViewUtils.show(view, R.id.empty_retry, !z6);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        int iDpToPx = (int) Utils.dpToPx(getContext(), 5.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, 0, 0, iDpToPx, iDpToPx);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(new AddAdapter(this));
        Adapter adapter = new Adapter(this, Sticker.class);
        this.adapter = adapter;
        mergeAdapter.addAdapter(adapter);
        divideColumnAdapter.setAdapter(mergeAdapter, 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.stickerHelper = new StickerHelper(this);
        this.membershipService = (MembershipService) getService("membership");
        this.stickerService = (StickerService) getService("sticker");
        StickerCollection stickerCollection = (StickerCollection) JacksonUtils.readAs(getStringParam("stickerCollection"), StickerCollection.class);
        if (stickerCollection != null && stickerCollection.id() != null) {
            this.collectionId = stickerCollection.id();
            MediaPickerFragment mediaPickerFragment = (MediaPickerFragment) getFragmentManager().m0("mediaPicker");
            this.mediaPickerFragment = mediaPickerFragment;
            if (mediaPickerFragment == null) {
                this.mediaPickerFragment = new MediaPickerFragment();
                getFragmentManager().q().e(this.mediaPickerFragment, "mediaPicker").k();
            }
            this.mediaPickerFragment.addOnResultListener(this);
            setTitle(R.string.favorite_stickers);
            registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
            return;
        }
        finish();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDividerHeight(0);
        listView.setDivider(null);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEditing(false);
    }
}
