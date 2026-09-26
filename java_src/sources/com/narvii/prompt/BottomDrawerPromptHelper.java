package com.narvii.prompt;

import com.narvii.amino.PromptShowListener;
import com.narvii.app.NVContext;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.master.BottomDrawerHelper;
import com.narvii.master.BottomDrawerViewHelper;
import com.narvii.util.PreferencesHelper;

/* JADX INFO: loaded from: classes6.dex */
public class BottomDrawerPromptHelper extends PromptHelper implements BottomDrawerHelper.OnStatusChangeListener, BottomDrawerViewHelper.BottomDismissListener {
    BottomDrawerHelper bottomDrawerHelper;
    BottomDrawerViewHelper bottomDrawerViewHelper;
    boolean dismissed;
    PreferencesHelper sharedPreferencesHelper;

    @Override // com.narvii.prompt.PromptHelper
    public void onPostShow() {
    }

    @Override // com.narvii.prompt.PromptHelper
    public void doTryShow() {
        this.bottomDrawerHelper.beginToCheckSuggestCommunity();
    }

    public void onActiveChanged(boolean z6) {
        BottomDrawerViewHelper bottomDrawerViewHelper = this.bottomDrawerViewHelper;
        if (bottomDrawerViewHelper != null) {
            bottomDrawerViewHelper.onActiveChanged(z6);
        }
    }

    @Override // com.narvii.master.BottomDrawerViewHelper.BottomDismissListener
    public void onDismiss() {
        if (this.dismissed) {
            return;
        }
        whenNotBlocking();
        this.dismissed = true;
    }

    @Override // com.narvii.master.BottomDrawerHelper.OnStatusChangeListener
    public void onStatusChanged(int i10, final Object obj) {
        if (this.bottomDrawerViewHelper.getActivity() == null) {
            whenNotBlocking();
            return;
        }
        if (i10 == 2) {
            if (obj instanceof MyCommunityListResponse) {
                dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.BottomDrawerPromptHelper.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (BottomDrawerPromptHelper.this.bottomDrawerViewHelper.getActivity() != null) {
                                BottomDrawerPromptHelper.this.bottomDrawerViewHelper.showSuggestCommunity(((MyCommunityListResponse) obj).communityList);
                            } else {
                                BottomDrawerPromptHelper.this.whenNotBlocking();
                            }
                        } catch (Exception unused) {
                        }
                    }
                }, 15000L);
            }
        } else if (i10 == -1) {
            whenNotBlocking();
        }
    }

    public BottomDrawerPromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
        this.bottomDrawerHelper = new BottomDrawerHelper(nVContext, this);
        BottomDrawerViewHelper bottomDrawerViewHelper = new BottomDrawerViewHelper(nVContext);
        this.bottomDrawerViewHelper = bottomDrawerViewHelper;
        bottomDrawerViewHelper.setBottomDismissListener(this);
        this.sharedPreferencesHelper = new PreferencesHelper(nVContext);
    }
}
