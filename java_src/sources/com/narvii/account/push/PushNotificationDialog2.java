package com.narvii.account.push;

import com.narvii.app.NVContext;
import com.narvii.logging.LogEvent;
import com.narvii.widget.ACMAlertDialog;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public class PushNotificationDialog2 extends ACMAlertDialog {
    String source;

    public PushNotificationDialog2(NVContext nVContext, String str, String str2) {
        super(nVContext, str);
        this.source = str2;
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public void completeLogEvent(@NotNull LogEvent.Builder builder) {
        super.completeLogEvent(builder);
        builder.extraParam("source", this.source);
    }
}
