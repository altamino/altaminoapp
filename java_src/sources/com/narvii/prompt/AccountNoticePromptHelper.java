package com.narvii.prompt;

import com.narvii.amino.PromptShowListener;
import com.narvii.app.NVContext;
import com.narvii.master.BottomDrawerViewHelper;

/* JADX INFO: loaded from: classes9.dex */
public class AccountNoticePromptHelper extends PromptHelper implements BottomDrawerViewHelper.BottomDismissListener {
    BottomDrawerViewHelper bottomDrawerViewHelper;
    boolean dismissed;

    @Override // com.narvii.prompt.PromptHelper
    public void onPostShow() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showImportantNoticeView() {
        if (this.bottomDrawerViewHelper.getActivity() != null) {
            this.bottomDrawerViewHelper.showImportNotice();
        } else {
            whenNotBlocking();
        }
    }

    @Override // com.narvii.prompt.PromptHelper
    public void doTryShow() {
        if (this.account.getNoticeCount() > 0) {
            dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.AccountNoticePromptHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    AccountNoticePromptHelper.this.showImportantNoticeView();
                }
            });
        } else {
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

    public AccountNoticePromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
        BottomDrawerViewHelper bottomDrawerViewHelper = new BottomDrawerViewHelper(nVContext);
        this.bottomDrawerViewHelper = bottomDrawerViewHelper;
        bottomDrawerViewHelper.setBottomDismissListener(this);
    }
}
