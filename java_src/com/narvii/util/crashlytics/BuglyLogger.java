package com.narvii.util.crashlytics;

import com.narvii.util.Log;
import com.narvii.util.log.Logger;
import com.tencent.bugly.crashreport.BuglyLog;
import com.tencent.bugly.crashreport.CrashReport;
import java.util.Set;

/* loaded from: classes3.dex */
public class BuglyLogger implements Logger {
    private int level;
    private Set<String> tags;

    public BuglyLogger(int i, Set<String> set) {
        this.level = i;
        this.tags = set;
    }

    @Override // com.narvii.util.log.Logger
    public void log(int i, String str, String str2, Throwable th) {
        if (i >= this.level && str != null && this.tags.contains(str)) {
            if (i == 2) {
                BuglyLog.v(str, str2);
            } else if (i == 3) {
                BuglyLog.d(str, str2);
            } else if (i == 4) {
                BuglyLog.i(str, str2);
            } else if (i == 5) {
                BuglyLog.w(str, str2);
            } else if (i == 6) {
                BuglyLog.e(str, str2, th);
            }
        }
        if (i == 6) {
            if (th == null) {
                th = Log.msgException(str2);
            }
            CrashReport.postCatchedException(th);
        }
    }
}
