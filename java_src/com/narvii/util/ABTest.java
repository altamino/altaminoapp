package com.narvii.util;

import android.os.Environment;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.util.deviceid.DeviceIDService;
import java.io.File;

/* loaded from: classes3.dex */
public enum ABTest {
    ;

    public static ABTest[] AMPLITUDE_USER_PROPS = new ABTest[0];
    public static ABTest[] LOGGING_USER_PROPS = new ABTest[0];

    /* renamed from: com.narvii.util.ABTest$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$narvii$util$ABTest = new int[ABTest.values().length];
    }

    public static boolean ab(ABTest aBTest) {
        if (NVApplication.DEBUG) {
            try {
                return Integer.parseInt(Utils.readStringFromFile(new File(Environment.getExternalStorageDirectory(), "ab.txt")).trim()) != 0;
            } catch (Exception unused) {
            }
        }
        int i = AnonymousClass1.$SwitchMap$com$narvii$util$ABTest[aBTest.ordinal()];
        String userId = ((AccountService) NVApplication.instance().getService("account")).getUserId();
        if (userId == null) {
            userId = ((DeviceIDService) NVApplication.instance().getService("deviceid")).getDeviceId();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(userId);
        sb.append(aBTest.name());
        return StringUtils.md5(sb.toString()).charAt(0) % 2 == 0;
    }
}
