package com.narvii.util;

import android.content.Context;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import java.io.File;

/* JADX INFO: loaded from: classes10.dex */
public enum ABTest {
    ;

    public static ABTest[] LOGGING_USER_PROPS = new ABTest[0];

    /* JADX INFO: renamed from: com.narvii.util.ABTest$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$narvii$util$ABTest = new int[ABTest.values().length];
    }

    public static boolean ab(Context context, ABTest aBTest) {
        if (NVApplication.DEBUG) {
            try {
                return Integer.parseInt(Utils.readStringFromFile(new File(context.getExternalFilesDir(""), "ab.txt")).trim()) != 0;
            } catch (Exception unused) {
            }
        }
        int i10 = AnonymousClass1.$SwitchMap$com$narvii$util$ABTest[aBTest.ordinal()];
        String userId = ((AccountService) NVApplication.instance().getService("account")).getUserId();
        if (userId == null) {
            userId = a0.b.k();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(userId);
        sb.append(aBTest.name());
        return StringUtils.md5(sb.toString()).charAt(0) % 2 == 0;
    }
}
