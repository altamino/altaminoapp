package com.narvii.util;

import com.narvii.drawer.DrawerHost;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.pushservice.UpdateDeviceTokenHelper;
import com.narvii.services.EnterCommunityHelper;

/* loaded from: classes3.dex */
public class EnterCommunityUtils {
    public static void fastEnter(int i) {
        fastEnter(i, null);
    }

    public static void fastEnter(int i, String str) {
        UpdateDeviceTokenHelper.GLOBAL_ENTER.set(Integer.valueOf(i));
        DrawerHost.GLOBAL_ENTER.set(Integer.valueOf(i));
        LiveLayerService.GLOBAL_ENTER.set(Integer.valueOf(i));
        if (str != null) {
            EnterCommunityHelper.SOURCE.set(str);
        }
    }
}
