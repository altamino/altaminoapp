package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

/* loaded from: classes2.dex */
public final class zzbj {
    private final /* synthetic */ zzbf zzly;

    @VisibleForTesting
    private final String zzma;
    private final String zzmb;
    private final String zzmc;
    private final long zzmd;

    private zzbj(zzbf zzbfVar, String str, long j) {
        this.zzly = zzbfVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkArgument(j > 0);
        this.zzma = String.valueOf(str).concat(":start");
        this.zzmb = String.valueOf(str).concat(":count");
        this.zzmc = String.valueOf(str).concat(":value");
        this.zzmd = j;
    }

    private final void zzea() {
        this.zzly.zzq();
        long jCurrentTimeMillis = this.zzly.zzz().currentTimeMillis();
        SharedPreferences.Editor editorEdit = this.zzly.zzdr().edit();
        editorEdit.remove(this.zzmb);
        editorEdit.remove(this.zzmc);
        editorEdit.putLong(this.zzma, jCurrentTimeMillis);
        editorEdit.apply();
    }

    public final void zzc(String str, long j) {
        this.zzly.zzq();
        if (zzec() == 0) {
            zzea();
        }
        if (str == null) {
            str = "";
        }
        long j2 = this.zzly.zzdr().getLong(this.zzmb, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor editorEdit = this.zzly.zzdr().edit();
            editorEdit.putString(this.zzmc, str);
            editorEdit.putLong(this.zzmb, 1L);
            editorEdit.apply();
            return;
        }
        long j3 = j2 + 1;
        boolean z = (this.zzly.zzab().zzgl().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j3;
        SharedPreferences.Editor editorEdit2 = this.zzly.zzdr().edit();
        if (z) {
            editorEdit2.putString(this.zzmc, str);
        }
        editorEdit2.putLong(this.zzmb, j3);
        editorEdit2.apply();
    }

    public final Pair<String, Long> zzeb() {
        long jAbs;
        this.zzly.zzq();
        this.zzly.zzq();
        long jZzec = zzec();
        if (jZzec == 0) {
            zzea();
            jAbs = 0;
        } else {
            jAbs = Math.abs(jZzec - this.zzly.zzz().currentTimeMillis());
        }
        long j = this.zzmd;
        if (jAbs < j) {
            return null;
        }
        if (jAbs > (j << 1)) {
            zzea();
            return null;
        }
        String string = this.zzly.zzdr().getString(this.zzmc, null);
        long j2 = this.zzly.zzdr().getLong(this.zzmb, 0L);
        zzea();
        if (string == null || j2 <= 0) {
            return zzbf.zzky;
        }
        return new Pair<>(string, Long.valueOf(j2));
    }

    private final long zzec() {
        return this.zzly.zzdr().getLong(this.zzma, 0L);
    }
}
