package com.narvii.util.debug;

import android.app.Activity;
import com.narvii.app.NVContext;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class AminoDebugService extends DebugService {
    public AminoDebugService(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.util.debug.DebugService
    protected void createDebugMenu(Activity activity, ArrayList<CharSequence> arrayList) {
        String str;
        super.createDebugMenu(activity, arrayList);
        if (((SignallingMonitorHelper) this.context.getService("_signallingMonitor")).isShow()) {
            str = "Hide Signalling Status";
        } else {
            str = "Show Signalling Status";
        }
        arrayList.add(str);
    }

    @Override // com.narvii.util.debug.DebugService
    protected void onDebugMenuClick(Activity activity, CharSequence charSequence) {
        super.onDebugMenuClick(activity, charSequence);
        SignallingMonitorHelper signallingMonitorHelper = (SignallingMonitorHelper) this.context.getService("_signallingMonitor");
        if ("Show Signalling Status".equals(charSequence)) {
            signallingMonitorHelper.showShow(activity, true);
        } else if ("Hide Signalling Status".equals(charSequence)) {
            signallingMonitorHelper.showShow(activity, false);
        }
    }
}
