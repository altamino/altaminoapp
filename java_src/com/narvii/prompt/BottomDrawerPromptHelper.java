package com.narvii.prompt;

import com.narvii.amino.PromptShowListener;
import com.narvii.app.NVContext;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.master.BottomDrawerHelper;
import com.narvii.master.BottomDrawerViewHelper;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.PreferencesHelper;

/* loaded from: classes3.dex */
public class BottomDrawerPromptHelper extends PromptHelper implements BottomDrawerHelper.OnStatusChangeListener, BottomDrawerViewHelper.BottomDismissListener {
    BottomDrawerHelper bottomDrawerHelper;
    BottomDrawerViewHelper bottomDrawerViewHelper;
    boolean dismissed;
    PreferencesHelper sharedPreferencesHelper;

    @Override // com.narvii.prompt.PromptHelper
    public void onPostShow() {
    }

    public BottomDrawerPromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
        this.bottomDrawerHelper = new BottomDrawerHelper(nVContext, this);
        this.bottomDrawerViewHelper = new BottomDrawerViewHelper(nVContext);
        this.bottomDrawerViewHelper.setBottomDismissListener(this);
        this.sharedPreferencesHelper = new PreferencesHelper(nVContext);
    }

    @Override // com.narvii.prompt.PromptHelper
    public void doTryShow() {
        this.bottomDrawerHelper.beginToCheckSuggestCommunity();
    }

    public void onActiveChanged(boolean z) {
        BottomDrawerViewHelper bottomDrawerViewHelper = this.bottomDrawerViewHelper;
        if (bottomDrawerViewHelper != null) {
            bottomDrawerViewHelper.onActiveChanged(z);
        }
    }

    @Override // com.narvii.master.BottomDrawerHelper.OnStatusChangeListener
    public void onStatusChanged(int i, final Object obj) {
        if (this.bottomDrawerViewHelper.getActivity() == null) {
            whenNotBlocking();
            return;
        }
        if (i == 2) {
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
                }, ScenePollPlayView.POLL_COUNT_DOWN_MS);
            }
        } else if (i == -1) {
            whenNotBlocking();
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
}
