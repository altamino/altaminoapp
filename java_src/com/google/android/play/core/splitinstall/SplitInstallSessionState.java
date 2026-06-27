package com.google.android.play.core.splitinstall;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import java.util.List;

/* loaded from: classes2.dex */
public final class SplitInstallSessionState {
    List<Intent> a;
    private final int b;
    private final int c;
    private final int d;
    private final long e;
    private final long f;
    private final List<String> g;
    private final List<String> h;
    private final PendingIntent i;

    private SplitInstallSessionState(int i, int i2, int i3, long j, long j2, List<String> list, List<String> list2, PendingIntent pendingIntent, List<Intent> list3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = j;
        this.f = j2;
        this.g = list;
        this.h = list2;
        this.i = pendingIntent;
        this.a = list3;
    }

    public static SplitInstallSessionState a(Bundle bundle) {
        return new SplitInstallSessionState(bundle.getInt("session_id"), bundle.getInt(NotificationCompat.CATEGORY_STATUS), bundle.getInt("error_code"), bundle.getLong("bytes_downloaded"), bundle.getLong("total_bytes_to_download"), bundle.getStringArrayList("module_names"), bundle.getStringArrayList("languages"), (PendingIntent) bundle.getParcelable("user_confirmation_intent"), bundle.getParcelableArrayList("split_file_intents"));
    }

    final SplitInstallSessionState a(int i, int i2) {
        return new SplitInstallSessionState(this.b, i, i2, this.e, this.f, this.g, this.h, this.i, this.a);
    }

    public final int status() {
        return this.c;
    }

    public final String toString() {
        int i = this.b;
        int i2 = this.c;
        int i3 = this.d;
        long j = this.e;
        long j2 = this.f;
        String strValueOf = String.valueOf(this.g);
        String strValueOf2 = String.valueOf(this.h);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 193 + String.valueOf(strValueOf2).length());
        sb.append("SplitInstallSessionState{sessionId=");
        sb.append(i);
        sb.append(", status=");
        sb.append(i2);
        sb.append(", errorCode=");
        sb.append(i3);
        sb.append(", bytesDownloaded=");
        sb.append(j);
        sb.append(",totalBytesToDownload=");
        sb.append(j2);
        sb.append(",moduleNames=");
        sb.append(strValueOf);
        sb.append("languages=");
        sb.append(strValueOf2);
        sb.append("}");
        return sb.toString();
    }
}
