package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.gms.ads.impl.R;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzapo extends zzaqb {
    private final Map<String, String> zzcxs;
    private String zzdhr;
    private long zzdhs;
    private long zzdht;
    private String zzdhu;
    private String zzdhv;
    private final Context zzlj;

    public zzapo(zzbgz zzbgzVar, Map<String, String> map) {
        super(zzbgzVar, "createCalendarEvent");
        this.zzcxs = map;
        this.zzlj = zzbgzVar.zzyd();
        this.zzdhr = zzdf("description");
        this.zzdhu = zzdf("summary");
        this.zzdhs = zzdg("start_ticks");
        this.zzdht = zzdg("end_ticks");
        this.zzdhv = zzdf("location");
    }

    private final String zzdf(String str) {
        return TextUtils.isEmpty(this.zzcxs.get(str)) ? "" : this.zzcxs.get(str);
    }

    private final long zzdg(String str) {
        String str2 = this.zzcxs.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public final void execute() {
        if (this.zzlj == null) {
            zzdh("Activity context is not available.");
            return;
        }
        com.google.android.gms.ads.internal.zzk.zzlg();
        if (!zzaxi.zzao(this.zzlj).zzql()) {
            zzdh("This feature is not available on the device.");
            return;
        }
        com.google.android.gms.ads.internal.zzk.zzlg();
        AlertDialog.Builder builderZzan = zzaxi.zzan(this.zzlj);
        Resources resources = com.google.android.gms.ads.internal.zzk.zzlk().getResources();
        builderZzan.setTitle(resources != null ? resources.getString(R.string.s5) : "Create calendar event");
        builderZzan.setMessage(resources != null ? resources.getString(R.string.s6) : "Allow Ad to create a calendar event?");
        builderZzan.setPositiveButton(resources != null ? resources.getString(R.string.s3) : "Accept", new zzapp(this));
        builderZzan.setNegativeButton(resources != null ? resources.getString(R.string.s4) : "Decline", new zzapq(this));
        builderZzan.create().show();
    }

    @TargetApi(14)
    final Intent createIntent() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.zzdhr);
        data.putExtra("eventLocation", this.zzdhv);
        data.putExtra("description", this.zzdhu);
        long j = this.zzdhs;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = this.zzdht;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(C.ENCODING_PCM_MU_LAW);
        return data;
    }
}
