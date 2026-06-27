package com.narvii.util.debug;

import android.app.Activity;
import com.narvii.app.NVContext;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AminoDebugService extends DebugService {
    public AminoDebugService(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.util.debug.DebugService
    protected void createDebugMenu(Activity activity, ArrayList<CharSequence> arrayList) {
        super.createDebugMenu(activity, arrayList);
        arrayList.add(((SignallingMonitorHelper) this.context.getService("_signallingMonitor")).isShow() ? "Hide Signalling Status" : "Show Signalling Status");
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
