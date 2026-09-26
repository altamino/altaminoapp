package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
final class zad extends zag {
    final /* synthetic */ Intent zaa;
    final /* synthetic */ Activity zab;
    final /* synthetic */ int zac;

    zad(Intent intent, Activity activity, int i10) {
        this.zaa = intent;
        this.zab = activity;
        this.zac = i10;
    }

    public static void safedk_Activity_startActivityForResult_206f42f0b65887e835d87ee52d14d221(Activity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.google.android.gms.common.internal.zag
    public final void zaa() {
        Intent intent = this.zaa;
        if (intent != null) {
            safedk_Activity_startActivityForResult_206f42f0b65887e835d87ee52d14d221(this.zab, intent, this.zac);
        }
    }
}
