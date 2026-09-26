package com.narvii.monetization.store;

import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.IStoreItem;
import com.narvii.monetization.StoreItemOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.wallet.MembershipService;

/* JADX INFO: loaded from: classes6.dex */
public abstract class StoreItemGetterDialog extends AlertDialog implements View.OnClickListener {
    protected int AUTO_DISMISS_DELAY;
    private View btnClose;
    protected NVContext context;
    protected MembershipService membershipService;
    private StoreItemOwnStatusController statusController;

    protected abstract int getContentViewLayout();

    protected abstract StoreItemOwnStatusController getStoreItemOwnStatusController(StoreItemStatusView storeItemStatusView);

    public void autoDismiss() {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.monetization.store.StoreItemGetterDialog.1
            @Override // java.lang.Runnable
            public void run() {
                StoreItemGetterDialog.this.dismiss();
            }
        }, this.AUTO_DISMISS_DELAY);
    }

    public StoreItemGetterDialog(NVContext nVContext, IStoreItem iStoreItem) {
        super(nVContext.getContext());
        this.AUTO_DISMISS_DELAY = 1000;
        this.context = nVContext;
        this.membershipService = (MembershipService) nVContext.getService("membership");
        setContentView(getContentViewLayout());
        StoreItemStatusView storeItemStatusView = (StoreItemStatusView) findViewById(R.id.store_item_status_view);
        if (this.statusController == null) {
            StoreItemOwnStatusController storeItemOwnStatusController = getStoreItemOwnStatusController(storeItemStatusView);
            this.statusController = storeItemOwnStatusController;
            storeItemOwnStatusController.source = "Dialog";
            storeItemOwnStatusController.onCreate();
        }
        this.statusController.setStoreItem(iStoreItem);
        View viewFindViewById = findViewById(R.id.close);
        this.btnClose = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.close) {
            dismiss();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        StoreItemOwnStatusController storeItemOwnStatusController = this.statusController;
        if (storeItemOwnStatusController != null) {
            storeItemOwnStatusController.onDestroy();
        }
    }
}
