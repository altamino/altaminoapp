package com.narvii.account.push;

import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.logging.LogEvent;
import com.narvii.widget.ACMAlertDialog;

/* loaded from: classes2.dex */
public class PushNotificationDialog2 extends ACMAlertDialog {
    String source;

    public PushNotificationDialog2(NVContext nVContext, String str, String str2) {
        super(nVContext, str);
        this.source = str2;
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public void completeLogEvent(LogEvent.Builder builder) {
        super.completeLogEvent(builder);
        builder.extraParam(CommentListFragment.COMMENT_KEY_SOURCE, this.source);
    }
}
