package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Set;

@zzard
/* loaded from: classes2.dex */
public final class zzapr extends zzaqb {
    private static final Set<String> zzdhx = CollectionUtils.setOf("top-left", "top-right", "top-center", TtmlNode.CENTER, "bottom-left", "bottom-right", "bottom-center");
    private int height;
    private final Object lock;
    private int width;
    private zzaqc zzdal;
    private final zzbgz zzdbs;
    private final Activity zzdhn;
    private String zzdhy;
    private boolean zzdhz;
    private int zzdia;
    private int zzdib;
    private int zzdic;
    private int zzdid;
    private zzbin zzdie;
    private ImageView zzdif;
    private LinearLayout zzdig;
    private PopupWindow zzdih;
    private RelativeLayout zzdii;
    private ViewGroup zzdij;

    public zzapr(zzbgz zzbgzVar, zzaqc zzaqcVar) {
        super(zzbgzVar, "resize");
        this.zzdhy = "top-right";
        this.zzdhz = true;
        this.zzdia = 0;
        this.zzdib = 0;
        this.height = -1;
        this.zzdic = 0;
        this.zzdid = 0;
        this.width = -1;
        this.lock = new Object();
        this.zzdbs = zzbgzVar;
        this.zzdhn = zzbgzVar.zzyd();
        this.zzdal = zzaqcVar;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:124:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x023f A[Catch: all -> 0x04c5, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:9:0x0012, B:11:0x001a, B:12:0x001f, B:14:0x0021, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003c, B:22:0x0041, B:24:0x0043, B:26:0x0052, B:27:0x0064, B:29:0x0072, B:30:0x0083, B:32:0x0091, B:33:0x00a2, B:35:0x00b0, B:36:0x00c1, B:38:0x00cf, B:39:0x00dd, B:41:0x00eb, B:42:0x00ed, B:44:0x00f3, B:49:0x00fc, B:50:0x0101, B:52:0x0103, B:54:0x010b, B:57:0x0113, B:59:0x0136, B:62:0x013c, B:64:0x0140, B:67:0x0146, B:69:0x014a, B:71:0x014e, B:143:0x029f, B:144:0x02a4, B:146:0x02a6, B:148:0x02c8, B:150:0x02cc, B:152:0x02dc, B:154:0x0310, B:158:0x0346, B:159:0x037a, B:189:0x03d0, B:196:0x03ff, B:197:0x0417, B:198:0x0436, B:200:0x043e, B:201:0x0447, B:202:0x046d, B:205:0x0470, B:207:0x0480, B:209:0x048a, B:211:0x049c, B:212:0x04b5, B:208:0x0485, B:190:0x03d7, B:191:0x03de, B:192:0x03e5, B:193:0x03ec, B:194:0x03f2, B:195:0x03f9, B:161:0x037e, B:164:0x0388, B:167:0x0392, B:170:0x039c, B:173:0x03a6, B:176:0x03b0, B:153:0x030b, B:214:0x04b7, B:215:0x04bc, B:125:0x023f, B:127:0x0243, B:128:0x0254, B:135:0x0282, B:137:0x0286, B:141:0x0296, B:138:0x0289, B:140:0x0290, B:131:0x0278, B:133:0x027d, B:72:0x0155, B:74:0x0159, B:75:0x015f, B:102:0x01ac, B:110:0x021d, B:112:0x0220, B:114:0x0223, B:116:0x0227, B:103:0x01ba, B:106:0x01ea, B:104:0x01cb, B:105:0x01de, B:107:0x01ed, B:108:0x0204, B:109:0x0214, B:77:0x0163, B:80:0x016d, B:83:0x0177, B:86:0x0181, B:89:0x018b, B:92:0x0195, B:120:0x022f, B:121:0x0235, B:217:0x04be, B:218:0x04c3), top: B:223:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x029f A[Catch: all -> 0x04c5, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:9:0x0012, B:11:0x001a, B:12:0x001f, B:14:0x0021, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003c, B:22:0x0041, B:24:0x0043, B:26:0x0052, B:27:0x0064, B:29:0x0072, B:30:0x0083, B:32:0x0091, B:33:0x00a2, B:35:0x00b0, B:36:0x00c1, B:38:0x00cf, B:39:0x00dd, B:41:0x00eb, B:42:0x00ed, B:44:0x00f3, B:49:0x00fc, B:50:0x0101, B:52:0x0103, B:54:0x010b, B:57:0x0113, B:59:0x0136, B:62:0x013c, B:64:0x0140, B:67:0x0146, B:69:0x014a, B:71:0x014e, B:143:0x029f, B:144:0x02a4, B:146:0x02a6, B:148:0x02c8, B:150:0x02cc, B:152:0x02dc, B:154:0x0310, B:158:0x0346, B:159:0x037a, B:189:0x03d0, B:196:0x03ff, B:197:0x0417, B:198:0x0436, B:200:0x043e, B:201:0x0447, B:202:0x046d, B:205:0x0470, B:207:0x0480, B:209:0x048a, B:211:0x049c, B:212:0x04b5, B:208:0x0485, B:190:0x03d7, B:191:0x03de, B:192:0x03e5, B:193:0x03ec, B:194:0x03f2, B:195:0x03f9, B:161:0x037e, B:164:0x0388, B:167:0x0392, B:170:0x039c, B:173:0x03a6, B:176:0x03b0, B:153:0x030b, B:214:0x04b7, B:215:0x04bc, B:125:0x023f, B:127:0x0243, B:128:0x0254, B:135:0x0282, B:137:0x0286, B:141:0x0296, B:138:0x0289, B:140:0x0290, B:131:0x0278, B:133:0x027d, B:72:0x0155, B:74:0x0159, B:75:0x015f, B:102:0x01ac, B:110:0x021d, B:112:0x0220, B:114:0x0223, B:116:0x0227, B:103:0x01ba, B:106:0x01ea, B:104:0x01cb, B:105:0x01de, B:107:0x01ed, B:108:0x0204, B:109:0x0214, B:77:0x0163, B:80:0x016d, B:83:0x0177, B:86:0x0181, B:89:0x018b, B:92:0x0195, B:120:0x022f, B:121:0x0235, B:217:0x04be, B:218:0x04c3), top: B:223:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02a6 A[Catch: all -> 0x04c5, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:9:0x0012, B:11:0x001a, B:12:0x001f, B:14:0x0021, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003c, B:22:0x0041, B:24:0x0043, B:26:0x0052, B:27:0x0064, B:29:0x0072, B:30:0x0083, B:32:0x0091, B:33:0x00a2, B:35:0x00b0, B:36:0x00c1, B:38:0x00cf, B:39:0x00dd, B:41:0x00eb, B:42:0x00ed, B:44:0x00f3, B:49:0x00fc, B:50:0x0101, B:52:0x0103, B:54:0x010b, B:57:0x0113, B:59:0x0136, B:62:0x013c, B:64:0x0140, B:67:0x0146, B:69:0x014a, B:71:0x014e, B:143:0x029f, B:144:0x02a4, B:146:0x02a6, B:148:0x02c8, B:150:0x02cc, B:152:0x02dc, B:154:0x0310, B:158:0x0346, B:159:0x037a, B:189:0x03d0, B:196:0x03ff, B:197:0x0417, B:198:0x0436, B:200:0x043e, B:201:0x0447, B:202:0x046d, B:205:0x0470, B:207:0x0480, B:209:0x048a, B:211:0x049c, B:212:0x04b5, B:208:0x0485, B:190:0x03d7, B:191:0x03de, B:192:0x03e5, B:193:0x03ec, B:194:0x03f2, B:195:0x03f9, B:161:0x037e, B:164:0x0388, B:167:0x0392, B:170:0x039c, B:173:0x03a6, B:176:0x03b0, B:153:0x030b, B:214:0x04b7, B:215:0x04bc, B:125:0x023f, B:127:0x0243, B:128:0x0254, B:135:0x0282, B:137:0x0286, B:141:0x0296, B:138:0x0289, B:140:0x0290, B:131:0x0278, B:133:0x027d, B:72:0x0155, B:74:0x0159, B:75:0x015f, B:102:0x01ac, B:110:0x021d, B:112:0x0220, B:114:0x0223, B:116:0x0227, B:103:0x01ba, B:106:0x01ea, B:104:0x01cb, B:105:0x01de, B:107:0x01ed, B:108:0x0204, B:109:0x0214, B:77:0x0163, B:80:0x016d, B:83:0x0177, B:86:0x0181, B:89:0x018b, B:92:0x0195, B:120:0x022f, B:121:0x0235, B:217:0x04be, B:218:0x04c3), top: B:223:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzg(java.util.Map<java.lang.String, java.lang.String> r17) {
        /*
            Method dump skipped, instructions count: 1276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzapr.zzg(java.util.Map):void");
    }

    public final void zzw(boolean z) {
        synchronized (this.lock) {
            if (this.zzdih != null) {
                this.zzdih.dismiss();
                this.zzdii.removeView(this.zzdbs.getView());
                if (this.zzdij != null) {
                    this.zzdij.removeView(this.zzdif);
                    this.zzdij.addView(this.zzdbs.getView());
                    this.zzdbs.zza(this.zzdie);
                }
                if (z) {
                    zzdj("default");
                    if (this.zzdal != null) {
                        this.zzdal.zztc();
                    }
                }
                this.zzdih = null;
                this.zzdii = null;
                this.zzdij = null;
                this.zzdig = null;
            }
        }
    }

    public final void zza(int i, int i2, boolean z) {
        synchronized (this.lock) {
            this.zzdia = i;
            this.zzdib = i2;
        }
    }

    public final boolean zztb() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzdih != null;
        }
        return z;
    }

    public final void zzi(int i, int i2) {
        this.zzdia = i;
        this.zzdib = i2;
    }
}
