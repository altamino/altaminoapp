package com.narvii.prompt;

import android.content.res.Resources;
import com.narvii.amino.PromptShowListener;
import com.narvii.app.NVContext;
import com.narvii.master.BottomDrawerViewHelper;

/* loaded from: classes3.dex */
public class AccountNoticePromptHelper extends PromptHelper implements BottomDrawerViewHelper.BottomDismissListener {
    BottomDrawerViewHelper bottomDrawerViewHelper;
    boolean dismissed;

    @Override // com.narvii.prompt.PromptHelper
    public void onPostShow() {
    }

    public AccountNoticePromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
        this.bottomDrawerViewHelper = new BottomDrawerViewHelper(nVContext);
        this.bottomDrawerViewHelper.setBottomDismissListener(this);
    }

    @Override // com.narvii.prompt.PromptHelper
    public void doTryShow() {
        if (this.account.getNoticeCount() > 0) {
            dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.AccountNoticePromptHelper.1
                @Override // java.lang.Runnable
                public void run() throws Resources.NotFoundException {
                    AccountNoticePromptHelper.this.showImportantNoticeView();
                }
            });
        } else {
            whenNotBlocking();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showImportantNoticeView() throws Resources.NotFoundException {
        if (this.bottomDrawerViewHelper.getActivity() != null) {
            this.bottomDrawerViewHelper.showImportNotice();
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
}
