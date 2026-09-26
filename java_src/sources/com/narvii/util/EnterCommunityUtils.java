package com.narvii.util;

import com.narvii.drawer.DrawerHost;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.pushservice.UpdateDeviceTokenHelper;
import com.narvii.services.EnterCommunityHelper;

/* JADX INFO: loaded from: classes5.dex */
public class EnterCommunityUtils {
    public static void fastEnter(int i10) {
        fastEnter(i10, null);
    }

    public static void fastEnter(int i10, String str) {
        UpdateDeviceTokenHelper.GLOBAL_ENTER.set(Integer.valueOf(i10));
        DrawerHost.GLOBAL_ENTER.set(Integer.valueOf(i10));
        LiveLayerService.GLOBAL_ENTER.set(Integer.valueOf(i10));
        if (str != null) {
            EnterCommunityHelper.SOURCE.set(str);
        }
    }
}
