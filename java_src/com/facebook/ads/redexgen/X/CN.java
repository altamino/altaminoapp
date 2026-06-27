package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.HashMap;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class CN implements InterfaceC0442Bk {
    public final /* synthetic */ CP A00;
    public final /* synthetic */ List A01;

    public CN(CP cp, List list) {
        this.A00 = cp;
        this.A01 = list;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        CN cn = this;
        C0521El c0521El = null;
        int maxVolume = 0;
        int streamMinVolume = 0;
        HashMap map = new HashMap();
        int i = 0;
        int minVolume = 2;
        while (true) {
            switch (minVolume) {
                case 2:
                    cn = cn;
                    if (i >= cn.A01.size()) {
                        minVolume = 9;
                        break;
                    } else {
                        minVolume = 3;
                        break;
                    }
                case 3:
                    cn = cn;
                    c0521El = (C0521El) cn.A01.get(i);
                    if (!c0521El.A02()) {
                        minVolume = 7;
                        break;
                    } else {
                        minVolume = 4;
                        break;
                    }
                case 4:
                    c0521El = c0521El;
                    maxVolume = ((Integer) c0521El.A01()).intValue();
                    if (Build.VERSION.SDK_INT < 28) {
                        minVolume = 8;
                        break;
                    } else {
                        minVolume = 5;
                        break;
                    }
                case 5:
                    cn = cn;
                    streamMinVolume = cn.A00.A00.getStreamMinVolume(maxVolume);
                    minVolume = 6;
                    break;
                case 6:
                    cn = cn;
                    map = map;
                    int streamVolume = cn.A00.A00.getStreamVolume(maxVolume);
                    int minVolume2 = cn.A00.A00.getStreamMaxVolume(maxVolume);
                    map.put(Integer.valueOf(maxVolume), new CO(streamMinVolume, streamVolume, minVolume2));
                    minVolume = 7;
                    break;
                case 7:
                    i++;
                    minVolume = 2;
                    break;
                case 8:
                    streamMinVolume = -1;
                    minVolume = 6;
                    break;
                case 9:
                    return cn.A00.A02(map);
            }
        }
    }
}
