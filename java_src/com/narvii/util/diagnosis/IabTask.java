package com.narvii.util.diagnosis;

import android.text.SpannableStringBuilder;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.wallet.IabUtils;
import com.narvii.wallet.util.IabHelper;
import com.narvii.wallet.util.IabResult;
import com.narvii.wallet.util.Inventory;
import com.narvii.wallet.util.Purchase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class IabTask extends DiagnosisTask implements IabHelper.OnIabSetupFinishedListener, IabHelper.QueryInventoryFinishedListener {
    IabHelper iabHelper;
    String myUid;
    String purchases;

    IabTask(NVContext nVContext) {
        super(nVContext, "Iab");
        this.myUid = ((AccountService) nVContext.getService("account")).getUserId();
        this.iabHelper = IabUtils.createIabHelper(nVContext.getContext());
    }

    @Override // com.narvii.util.diagnosis.DiagnosisTask
    void destory() {
        super.destory();
        try {
            this.iabHelper.dispose();
        } catch (Exception unused) {
        }
        this.iabHelper = null;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.iabHelper.startSetup(this);
    }

    @Override // com.narvii.wallet.util.IabHelper.OnIabSetupFinishedListener
    public void onIabSetupFinished(IabResult iabResult) {
        IabHelper iabHelper;
        if (iabResult.isSuccess() && (iabHelper = this.iabHelper) != null) {
            try {
                iabHelper.queryInventoryAsync(this);
                return;
            } catch (Exception e) {
                this.result = false;
                this.error = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                return;
            }
        }
        this.result = false;
        this.error = iabResult.getMessage();
    }

    @Override // com.narvii.wallet.util.IabHelper.QueryInventoryFinishedListener
    public void onQueryInventoryFinished(IabResult iabResult, Inventory inventory) {
        if (iabResult.isSuccess()) {
            this.result = true;
            ArrayList arrayList = new ArrayList(inventory.getAllPurchases());
            Collections.sort(arrayList, IabUtils.PURCHASE_COMPARATOR_R);
            if (arrayList.isEmpty()) {
                this.purchases = "    None\n";
                return;
            }
            StringBuilder sb = new StringBuilder();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Purchase purchase = (Purchase) it.next();
                sb.append("    ");
                sb.append(purchase.getSku());
                sb.append(' ');
                sb.append(purchase.isAutoRenewing() ? "A" : "N");
                sb.append(' ');
                sb.append(purchase.getPurchaseState());
                sb.append(' ');
                sb.append(purchase.getOrderId());
                sb.append(' ');
                String strNodeString = JacksonUtils.nodeString(JacksonUtils.createObjectNode(purchase.getDeveloperPayload()), "uid");
                if (!Utils.isEqualsNotNull(this.myUid, strNodeString)) {
                    sb.append(strNodeString);
                }
                sb.append('\n');
            }
            this.purchases = sb.toString();
            return;
        }
        this.result = false;
        this.error = iabResult.getMessage();
    }

    @Override // com.narvii.util.diagnosis.DiagnosisTask
    void appendTo(SpannableStringBuilder spannableStringBuilder) {
        super.appendTo(spannableStringBuilder);
        String str = this.purchases;
        if (str != null) {
            spannableStringBuilder.append((CharSequence) str);
        }
    }
}
