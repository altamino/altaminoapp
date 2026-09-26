package com.narvii.prompt;

import android.content.Intent;
import com.narvii.amino.PromptShowListener;
import com.narvii.app.NVContext;
import com.narvii.master.BottomDrawerViewHelper;
import com.narvii.notice.AggregationNoticeFragment;

/* JADX INFO: loaded from: classes5.dex */
public class GlobalNoticePromptHelper extends PromptHelper implements BottomDrawerViewHelper.BottomDismissListener {
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
            dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.GlobalNoticePromptHelper.2
                @Override // java.lang.Runnable
                public void run() {
                    GlobalNoticePromptHelper.this.showImportantNoticeView();
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

    public GlobalNoticePromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
        BottomDrawerViewHelper bottomDrawerViewHelper = new BottomDrawerViewHelper(nVContext) { // from class: com.narvii.prompt.GlobalNoticePromptHelper.1
            @Override // com.narvii.master.BottomDrawerViewHelper
            protected Class noticeEntryClass() {
                return AggregationNoticeFragment.class;
            }

            @Override // com.narvii.master.BottomDrawerViewHelper
            protected void preProcessNoticeEntryIntent(Intent intent) {
                intent.putExtra("targetCidTab", 0);
            }
        };
        this.bottomDrawerViewHelper = bottomDrawerViewHelper;
        bottomDrawerViewHelper.setBottomDismissListener(this);
    }
}
