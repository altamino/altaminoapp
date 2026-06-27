package com.narvii.monetization.subscription;

import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsItem;
import com.narvii.list.prefs.PrefsText;
import com.narvii.list.prefs.PrefsToggle;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.StoreItemBaseObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.store.StoreHelper;
import com.narvii.monetization.store.StoreItemPurchaseHelper;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVImageView;
import java.text.DateFormat;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class StoreItemSubscriptionDetailFragment extends NVListFragment implements NotificationListener, StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener {
    private DateFormat dateFmt;
    private FanClubHeaderAdapter fanClubHeaderAdapter;
    private StoreItem item;
    private MembershipService membershipService;
    private StoreItemPurchaseHelper purchaseHelper;
    private RenewAdapter renewAdapter;

    private void deleteWhenClosed() {
    }

    @Override // com.narvii.monetization.store.StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener
    public void onPurchaseCanceled() {
    }

    @Override // com.narvii.monetization.store.StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener
    public void onPurchaseFailed() {
    }

    @Override // com.narvii.monetization.store.StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener
    public void onPurchaseStart() {
    }

    @Override // com.narvii.monetization.store.StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener
    public void onShowPurchaseDialog() {
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle((CharSequence) null);
        if (bundle != null) {
            this.item = (StoreItem) JacksonUtils.readAs(bundle.getString("storeItem"), StoreItem.class);
        } else {
            this.item = (StoreItem) JacksonUtils.readAs(getStringParam("storeItem"), StoreItem.class);
        }
        StoreItem storeItem = this.item;
        if (storeItem == null) {
            finish();
            return;
        }
        NVObject refObject = storeItem.getRefObject();
        if (!(refObject instanceof StoreItemBaseObject)) {
            finish();
            return;
        }
        this.membershipService = (MembershipService) getService("membership");
        this.purchaseHelper = new StoreItemPurchaseHelper(this);
        this.purchaseHelper.setStoreItem((StoreItemBaseObject) refObject);
        this.purchaseHelper.setPurchaseEventListener(this);
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-13785881);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("storeItem", JacksonUtils.writeAsString(this.item));
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDividerHeight(0);
        listView.setDivider(null);
        ViewUtils.setTopBottomPrefColor(listView, getContext());
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.fanClubHeaderAdapter = new FanClubHeaderAdapter(this);
        mergeAdapter.addAdapter(this.fanClubHeaderAdapter);
        this.renewAdapter = new RenewAdapter(this);
        mergeAdapter.addAdapter(this.renewAdapter);
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        dividerAdapter.setAdapter(mergeAdapter);
        return dividerAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshViews() {
        RenewAdapter renewAdapter = this.renewAdapter;
        if (renewAdapter != null) {
            renewAdapter.notifyDataSetChanged();
        }
        FanClubHeaderAdapter fanClubHeaderAdapter = this.fanClubHeaderAdapter;
        if (fanClubHeaderAdapter != null) {
            fanClubHeaderAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.action == "update" && (notification.obj instanceof StoreItemBaseObject)) {
            StoreItem storeItem = this.item;
            if (storeItem != null && Utils.isEqualsNotNull(storeItem.id(), ((StoreItemBaseObject) notification.obj).id())) {
                this.item.setChangedRefObject((StoreItemBaseObject) notification.obj);
            }
            refreshViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeAutoRenewRequest(final boolean z) {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("isAutoRenew", z);
        ApiRequest.Builder builderPath = ApiRequest.builder().post().global().path("store/subscription/config/");
        builderPath.param("paymentContext", objectNodeCreateObjectNode);
        builderPath.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(this.item.objectType()));
        builderPath.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, this.item.id());
        ((ApiService) getService("api")).exec(builderPath.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.subscription.StoreItemSubscriptionDetailFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                NVObject refObject = StoreItemSubscriptionDetailFragment.this.item.getRefObject();
                if (refObject instanceof StoreItemBaseObject) {
                    ((StoreItemBaseObject) refObject).getOwnershipInfo().isAutoRenew = z;
                }
                StoreItemSubscriptionDetailFragment.this.refreshViews();
                ((NotificationCenter) StoreItemSubscriptionDetailFragment.this.getService("notification")).sendNotification(new Notification("update", refObject));
                progressDialog.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(StoreItemSubscriptionDetailFragment.this.getContext(), str, 0).show();
                StoreItemSubscriptionDetailFragment.this.refreshViews();
                progressDialog.dismiss();
            }
        });
    }

    @Override // com.narvii.monetization.store.StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener
    public void onPurchaseSuccessful(NVObject nVObject) throws Resources.NotFoundException {
        if (getContext() instanceof NVActivity) {
            ((NVActivity) getContext()).toastImageWithText(ContextCompat.getDrawable(getContext(), R.drawable.check), getContext().getString(R.string.done), R.anim.toast_scale_in, 600L);
        } else {
            NVToast.makeText(getContext(), R.string.done, 1).show();
        }
        if (nVObject instanceof IStoreItem) {
            this.item.setChangedRefObject(nVObject);
            refreshViews();
        }
        if (nVObject != null) {
            ((NotificationCenter) getService("notification")).sendNotification(new Notification("update", nVObject));
        }
    }

    class FanClubHeaderAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public FanClubHeaderAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            String string;
            String string2;
            View viewCreateView = createView(R.layout.item_store_item_subscription_header, viewGroup, view);
            NVObject refObject = StoreItemSubscriptionDetailFragment.this.item.getRefObject();
            if (!(refObject instanceof StoreItemBaseObject)) {
                return viewCreateView;
            }
            StoreItemBaseObject storeItemBaseObject = (StoreItemBaseObject) refObject;
            ((NVImageView) viewCreateView.findViewById(R.id.icon)).setImageUrl(storeItemBaseObject.getStoreIcon());
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(storeItemBaseObject.getName());
            TextView textView = (TextView) viewCreateView.findViewById(R.id.since);
            if (StoreItemSubscriptionDetailFragment.this.dateFmt == null) {
                StoreItemSubscriptionDetailFragment.this.dateFmt = DateFormat.getDateInstance(2, Locale.getDefault());
            }
            OwnershipInfo ownershipInfo = storeItemBaseObject.getOwnershipInfo();
            String string3 = null;
            boolean z = false;
            if (ownershipInfo.ownershipStatus == 1) {
                if (ownershipInfo.isAutoRenew()) {
                    if (ownershipInfo.createdTime == null) {
                        string2 = null;
                    } else {
                        StoreItemSubscriptionDetailFragment storeItemSubscriptionDetailFragment = StoreItemSubscriptionDetailFragment.this;
                        string2 = storeItemSubscriptionDetailFragment.getString(R.string.store_item_subscription_since, storeItemSubscriptionDetailFragment.dateFmt.format(ownershipInfo.createdTime));
                    }
                    textView.setText(string2);
                } else {
                    if (ownershipInfo.createdTime == null) {
                        string = null;
                    } else {
                        StoreItemSubscriptionDetailFragment storeItemSubscriptionDetailFragment2 = StoreItemSubscriptionDetailFragment.this;
                        string = storeItemSubscriptionDetailFragment2.getString(R.string.store_item_subscription_until, storeItemSubscriptionDetailFragment2.dateFmt.format(ownershipInfo.expiredTime));
                    }
                    textView.setText(string);
                }
            } else {
                textView.setText(getItemExpiredTime(ownershipInfo.daysExpired()));
            }
            ViewUtils.show(textView, textView.getText() != null);
            if (ownershipInfo.ownershipStatus == 1 && !ownershipInfo.isAutoRenew()) {
                int iDaysExpired = ownershipInfo.daysExpired();
                if (iDaysExpired == 0) {
                    string3 = StoreItemSubscriptionDetailFragment.this.getString(R.string.membership_status_expiring_in_0_day);
                } else if (iDaysExpired == 1) {
                    string3 = StoreItemSubscriptionDetailFragment.this.getString(R.string.membership_status_expiring_in_1_day);
                } else if (iDaysExpired > 0 && iDaysExpired <= 7) {
                    string3 = StoreItemSubscriptionDetailFragment.this.getString(R.string.membership_status_expiring_in_n_day, Integer.valueOf(iDaysExpired));
                }
            }
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.expiring);
            textView2.setText(string3);
            ViewUtils.show(textView2, string3 != null);
            View viewFindViewById = viewCreateView.findViewById(R.id.check_detail);
            viewFindViewById.setOnClickListener(this.subviewClickListener);
            ViewUtils.show(viewFindViewById, storeItemBaseObject.availableInAnyStore());
            View viewFindViewById2 = viewCreateView.findViewById(R.id.renew);
            viewFindViewById2.setOnClickListener(this.subviewClickListener);
            if (!ownershipInfo.isAutoRenew() && storeItemBaseObject.availableInAnyStore()) {
                z = true;
            }
            ViewUtils.show(viewFindViewById2, z);
            return viewCreateView;
        }

        private String getItemExpiredTime(int i) {
            if (i == 0) {
                return StoreItemSubscriptionDetailFragment.this.getString(R.string.avatar_frame_expired_0_day);
            }
            if (i == 1) {
                return StoreItemSubscriptionDetailFragment.this.getString(R.string.avatar_frame_expired_1_day);
            }
            if (i > 1) {
                return StoreItemSubscriptionDetailFragment.this.getString(R.string.avatar_frame_expired_n_day, Integer.valueOf(i));
            }
            return null;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.check_detail) {
                new StoreHelper(getContext()).openStoreItemDetail(StoreItemSubscriptionDetailFragment.this.item);
                return true;
            }
            if (view2 != null && view2.getId() == R.id.renew) {
                if (StoreItemSubscriptionDetailFragment.this.membershipService.isMembership()) {
                    StoreItemSubscriptionDetailFragment.this.purchaseHelper.openPurchaseDialogWithCheck();
                } else {
                    new MembershipExpireDialog(StoreItemSubscriptionDetailFragment.this).show();
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    class RenewAdapter extends PrefsAdapter {
        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public RenewAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            NVObject refObject = StoreItemSubscriptionDetailFragment.this.item.getRefObject();
            if (refObject instanceof StoreItemBaseObject) {
                StoreItemBaseObject storeItemBaseObject = (StoreItemBaseObject) refObject;
                final OwnershipInfo ownershipInfo = storeItemBaseObject.getOwnershipInfo();
                if (!storeItemBaseObject.availableInAnyStore()) {
                    list.add(new PrefsText(R.string.avatar_frame_unavailable_hint));
                    return;
                }
                if (ownershipInfo.ownershipStatus == 1) {
                    PrefsToggle prefsToggle = new PrefsToggle(R.string.auto_renew, StoreItemSubscriptionDetailFragment.this.getString(R.string.auto_renew));
                    prefsToggle.desc = StoreItemSubscriptionDetailFragment.this.getString(R.string.avatar_frame_auto_renew_hint);
                    prefsToggle.setTextSingleLine(false);
                    prefsToggle.on = ownershipInfo.isAutoRenew();
                    prefsToggle.callback = new Callback<PrefsToggle>() { // from class: com.narvii.monetization.subscription.StoreItemSubscriptionDetailFragment.RenewAdapter.1
                        @Override // com.narvii.util.Callback
                        public void call(PrefsToggle prefsToggle2) {
                            if (!ownershipInfo.isAutoRenew()) {
                                if (StoreItemSubscriptionDetailFragment.this.membershipService.isMembership()) {
                                    StoreItemSubscriptionDetailFragment.this.changeAutoRenewRequest(true);
                                    return;
                                } else {
                                    new MembershipExpireDialog(StoreItemSubscriptionDetailFragment.this).show();
                                    return;
                                }
                            }
                            AlertDialog alertDialog = new AlertDialog(RenewAdapter.this.getContext());
                            alertDialog.setTitle(R.string.push_setting_confirm);
                            alertDialog.setMessage(R.string.store_item_renew_close_warning);
                            alertDialog.addButton(R.string.cancel, 0, new View.OnClickListener() { // from class: com.narvii.monetization.subscription.StoreItemSubscriptionDetailFragment.RenewAdapter.1.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    RenewAdapter.this.notifyDataSetChanged();
                                }
                            });
                            alertDialog.addButton(R.string.yes, 8, new View.OnClickListener() { // from class: com.narvii.monetization.subscription.StoreItemSubscriptionDetailFragment.RenewAdapter.1.2
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    StoreItemSubscriptionDetailFragment.this.changeAutoRenewRequest(false);
                                }
                            });
                            alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.monetization.subscription.StoreItemSubscriptionDetailFragment.RenewAdapter.1.3
                                @Override // android.content.DialogInterface.OnCancelListener
                                public void onCancel(DialogInterface dialogInterface) {
                                    RenewAdapter.this.notifyDataSetChanged();
                                }
                            });
                            alertDialog.show();
                        }
                    };
                    list.add(prefsToggle);
                }
            }
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Object item = getItem(i);
            if (item instanceof PrefsToggle) {
                final PrefsToggle prefsToggle = (PrefsToggle) item;
                View viewCreateView = createView(R.layout.prefs_toggle_with_amino_plus, viewGroup, view);
                TextView textView = (TextView) viewCreateView.findViewById(R.id.name);
                textView.setText(prefsToggle.name);
                textView.setSingleLine(prefsToggle.textSingleLine);
                TextView textView2 = (TextView) viewCreateView.findViewById(R.id.desc);
                textView2.setVisibility(TextUtils.isEmpty(prefsToggle.desc) ? 8 : 0);
                textView2.setText(prefsToggle.desc);
                final CheckBox checkBox = (CheckBox) viewCreateView.findViewById(R.id.check_box);
                checkBox.setOnCheckedChangeListener(null);
                checkBox.setChecked(prefsToggle.on);
                checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.monetization.subscription.StoreItemSubscriptionDetailFragment.RenewAdapter.2
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        PrefsToggle prefsToggle2 = prefsToggle;
                        Callback<PrefsToggle> callback = prefsToggle2.callback;
                        if (callback != null) {
                            callback.call(prefsToggle2);
                        }
                        checkBox.setChecked(prefsToggle.on);
                    }
                });
                viewCreateView.setAlpha(prefsToggle.enabled ? 1.0f : 0.5f);
                return viewCreateView;
            }
            if (item instanceof PrefsText) {
                View viewCreateView2 = createView(R.layout.prefs_text_unavailable_item, viewGroup, view);
                ((TextView) viewCreateView2.findViewById(R.id.text)).setText(getPrefsText((PrefsItem) item));
                return viewCreateView2;
            }
            return super.getView(i, view, viewGroup);
        }
    }
}
