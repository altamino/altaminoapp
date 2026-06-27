package com.narvii.monetization.sticker.manage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
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

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setTitle(R.string.my_stickers);
        MemberShipExpireWarningFragment.attachTo(this, "Sticker (Bar)");
        this.stickerService = (StickerService) getService("sticker");
        this.stickerCollectionList = this.stickerService.getStickerCollectionList();
        if (this.stickerCollectionList == null) {
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sticker_collection_sort, viewGroup, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveChanges() {
        StickerListAdapter stickerListAdapter = this.adapter;
        if (stickerListAdapter == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(stickerListAdapter.getList());
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
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            StickerCollection stickerCollection = (StickerCollection) it.next();
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

    private boolean isPositionFixed(StickerCollection stickerCollection) {
        return stickerCollection.isLocalMood() || stickerCollection.isPersonal();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter createAdapter(Bundle bundle) {
        this.adapter = new StickerListAdapter(this, StickerCollection.class, this.stickerCollectionList);
        return this.adapter;
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

    @Override // com.narvii.list.DragSortListFragment, com.mobeta.android.dslv.DragSortListView.DropListener
    public void drop(int i, int i2) {
        if (i2 < this.fixedPositionCount) {
            return;
        }
        super.drop(i, i2);
    }

    class StickerListAdapter extends NVArrayAdapter<StickerCollection> {
        StickerHelper stickerHelper;

        public StickerListAdapter(NVContext nVContext, Class<StickerCollection> cls, List<StickerCollection> list) {
            super(nVContext, cls, list);
            this.stickerHelper = new StickerHelper(nVContext);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if ((obj instanceof StickerCollection) && view2 != null && view2.getId() == R.id.delete) {
                sendDeleteRequest((StickerCollection) obj);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            return new Bundle();
        }

        private void sendDeleteRequest(final StickerCollection stickerCollection) {
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionSortListFragment.StickerListAdapter.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) throws Resources.NotFoundException {
                    StickerListAdapter stickerListAdapter = StickerCollectionSortListFragment.this.adapter;
                    if (stickerListAdapter != null) {
                        stickerListAdapter.remove((StickerListAdapter) stickerCollection);
                    }
                    if (StickerCollectionSortListFragment.this.getActivity() instanceof NVActivity) {
                        ((NVActivity) StickerCollectionSortListFragment.this.getActivity()).toastImageWithText(ContextCompat.getDrawable(StickerListAdapter.this.getContext(), R.drawable.check), StickerCollectionSortListFragment.this.getString(R.string.removed), R.anim.toast_scale_in, 500L);
                    } else {
                        NVToast.makeText(StickerListAdapter.this.getContext(), R.string.removed, 1).show();
                    }
                    StickerCollectionSortListFragment.this.stickerService.removeStickerCollection(stickerCollection);
                    StickerCollection stickerCollection2 = stickerCollection;
                    stickerCollection2.isActivated = false;
                    StickerListAdapter.this.sendNotification(new Notification("update", stickerCollection2));
                }
            };
            progressDialog.show();
            ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("sticker-collection/" + stickerCollection.id() + "/deactivate").build(), progressDialog.dismissListener);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            StickerCollection item = getItem(i);
            StickerCollectionItem stickerCollectionItem = (StickerCollectionItem) createView(R.layout.sticker_collection_item_sort, viewGroup, view);
            stickerCollectionItem.setStickerCollection(item);
            ViewUtils.show((TextView) stickerCollectionItem.findViewById(R.id.drag_handle), item.isNormal() || item.isUserCreated());
            View viewFindViewById = stickerCollectionItem.findViewById(R.id.delete);
            viewFindViewById.setOnClickListener(this.subviewClickListener);
            ViewUtils.show(viewFindViewById, item.isNormal() || item.isUserCreated());
            return stickerCollectionItem;
        }
    }
}
