package com.narvii.monetization.sticker.manage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.list.DragSortListFragment;
import com.narvii.list.NVArrayAdapter;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.MemberShipExpireWarningFragment;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.wallet.MembershipService;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StickerCollectionSortListFragment extends DragSortListFragment {
    public StickerListAdapter adapter;
    int fixedPositionCount = 0;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionSortListFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StickerListAdapter stickerListAdapter;
            if (!MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction()) || (stickerListAdapter = StickerCollectionSortListFragment.this.adapter) == null) {
                return;
            }
            stickerListAdapter.notifyDataSetChanged();
        }
    };
    List<StickerCollection> stickerCollectionList;
    private StickerService stickerService;

    class StickerListAdapter extends NVArrayAdapter<StickerCollection> {
        StickerHelper stickerHelper;

        public StickerListAdapter(NVContext nVContext, Class<StickerCollection> cls, List<StickerCollection> list) {
            super(nVContext, cls, list);
            this.stickerHelper = new StickerHelper(nVContext);
        }

        private void sendDeleteRequest(final StickerCollection stickerCollection) {
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionSortListFragment.StickerListAdapter.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    StickerListAdapter stickerListAdapter = StickerCollectionSortListFragment.this.adapter;
                    if (stickerListAdapter != null) {
                        stickerListAdapter.remove(stickerCollection);
                    }
                    if (StickerCollectionSortListFragment.this.getActivity() instanceof NVActivity) {
                        ((NVActivity) StickerCollectionSortListFragment.this.getActivity()).toastImageWithText(ContextCompat.getDrawable(StickerListAdapter.this.getContext(), R.drawable.check), StickerCollectionSortListFragment.this.getString(R.string.removed), R.anim.toast_scale_in, 500L);
                    } else {
                        NVToast.makeText(StickerListAdapter.this.getContext(), R.string.removed, 1).show();
                    }
                    StickerCollectionSortListFragment.this.stickerService.removeStickerCollection(stickerCollection);
                    stickerCollection.isActivated = false;
                    StickerListAdapter.this.sendNotification(new Notification("update", stickerCollection));
                }
            };
            progressDialog.show();
            ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("sticker-collection/" + stickerCollection.id() + "/deactivate").build(), progressDialog.dismissListener);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof StickerCollection) || view2 == null || view2.getId() != R.id.delete) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            sendDeleteRequest((StickerCollection) obj);
            return true;
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            return new Bundle();
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            boolean z6;
            StickerCollection item = getItem(i10);
            StickerCollectionItem stickerCollectionItem = (StickerCollectionItem) createView(R.layout.sticker_collection_item_sort, viewGroup, view);
            stickerCollectionItem.setStickerCollection(item);
            TextView textView = (TextView) stickerCollectionItem.findViewById(R.id.drag_handle);
            boolean z10 = true;
            if (!item.isNormal() && !item.isUserCreated()) {
                z6 = false;
            } else {
                z6 = true;
            }
            ViewUtils.show(textView, z6);
            View viewFindViewById = stickerCollectionItem.findViewById(R.id.delete);
            viewFindViewById.setOnClickListener(this.subviewClickListener);
            if (!item.isNormal() && !item.isUserCreated()) {
                z10 = false;
            }
            ViewUtils.show(viewFindViewById, z10);
            return stickerCollectionItem;
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveChanges() {
        if (this.adapter == null) {
            return;
        }
        ArrayList<StickerCollection> arrayList = new ArrayList(this.adapter.getList());
        if (!(!arrayList.equals(this.stickerCollectionList))) {
            finish();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionSortListFragment.3
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                StickerCollectionSortListFragment.this.finish();
                ArrayList arrayList2 = new ArrayList();
                for (StickerCollection stickerCollection : StickerCollectionSortListFragment.this.adapter.getList()) {
                    if (!stickerCollection.isLocalMood()) {
                        arrayList2.add(stickerCollection);
                    }
                }
                ((StickerService) StickerCollectionSortListFragment.this.getService("sticker")).setStickerCollectionList(arrayList2);
            }
        };
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        for (StickerCollection stickerCollection : arrayList) {
            if (!isPositionFixed(stickerCollection)) {
                arrayNodeCreateArrayNode.add(stickerCollection.id());
            }
        }
        if (arrayNodeCreateArrayNode.size() == 0) {
            finish();
            return;
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("sticker-collection/reorder").param("collectionIdList", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter createAdapter(Bundle bundle) {
        StickerListAdapter stickerListAdapter = new StickerListAdapter(this, StickerCollection.class, this.stickerCollectionList);
        this.adapter = stickerListAdapter;
        return stickerListAdapter;
    }

    @Override // com.narvii.list.DragSortListFragment, com.mobeta.android.dslv.DragSortListView.j
    public void drop(int i10, int i11) {
        if (i11 < this.fixedPositionCount) {
            return;
        }
        super.drop(i10, i11);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    private boolean isPositionFixed(StickerCollection stickerCollection) {
        if (!stickerCollection.isLocalMood() && !stickerCollection.isPersonal()) {
            return false;
        }
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.my_stickers);
        MemberShipExpireWarningFragment.attachTo(this, "Sticker (Bar)");
        StickerService stickerService = (StickerService) getService("sticker");
        this.stickerService = stickerService;
        List<StickerCollection> stickerCollectionList = stickerService.getStickerCollectionList();
        this.stickerCollectionList = stickerCollectionList;
        if (stickerCollectionList == null) {
            this.stickerCollectionList = new ArrayList();
        }
        for (StickerCollection stickerCollection : this.stickerCollectionList) {
            if (stickerCollection.isPersonal() || stickerCollection.isLocalMood()) {
                this.fixedPositionCount++;
            }
        }
        if (getActivity() instanceof NVActivity) {
            ((NVActivity) getActivity()).setActionBarRightView(R.string.done, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionSortListFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    StickerCollectionSortListFragment.this.saveChanges();
                }
            });
        }
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
    }

    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sticker_collection_sort, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.store_item_manage_title_item, (ViewGroup) listView, false);
        ((TextView) viewInflate.findViewById(R.id.title)).setText(R.string.drag_to_sort);
        listView.addHeaderView(viewInflate);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.product_manager_bg_color));
    }
}
