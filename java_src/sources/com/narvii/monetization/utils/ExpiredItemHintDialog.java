package com.narvii.monetization.utils;

import android.view.View;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.IStoreItem;
import com.narvii.monetization.store.StoreHelper;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public class ExpiredItemHintDialog extends AlertDialog implements View.OnClickListener {
    protected NVContext context;
    protected MembershipService membershipService;
    private final StoreHelper storeHelper;
    private IStoreItem storeItem;
    private final StoreItemHelper storeItemHelper;

    protected void jumpToStore() {
        this.storeHelper.openStoreItemDetail(StoreItem.wrapStoreItem(this.storeItem));
    }

    public ExpiredItemHintDialog(NVContext nVContext, IStoreItem iStoreItem) {
        super(nVContext.getContext());
        this.context = nVContext;
        this.storeItem = iStoreItem;
        this.membershipService = (MembershipService) nVContext.getService("membership");
        StoreItemHelper storeItemHelper = new StoreItemHelper(nVContext);
        this.storeItemHelper = storeItemHelper;
        this.storeHelper = new StoreHelper(getContext());
        setContentView(R.layout.dialog_item_expired_hint);
        ((NVImageView) findViewById(R.id.item_preview)).setImageUrl(iStoreItem.getStoreIcon());
        ((StoreItemNameView) findViewById(R.id.item_name)).setStoreItem(iStoreItem);
        findViewById(R.id.close).setOnClickListener(this);
        ((TextView) findViewById(R.id.item_expired_desc)).setText(storeItemHelper.getExpiredTimeString(iStoreItem.getOwnershipInfo()));
        findViewById(R.id.item_view_in_store).setOnClickListener(this);
        if (!iStoreItem.availableInAnyStore()) {
            findViewById(R.id.unavailable).setVisibility(0);
            findViewById(R.id.item_view_in_store).setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.close) {
            if (id == R.id.item_view_in_store) {
                jumpToStore();
                dismiss();
                return;
            }
            return;
        }
        dismiss();
    }
}
