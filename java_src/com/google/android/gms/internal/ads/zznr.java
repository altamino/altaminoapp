package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzpo;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zznr {
    private static final zzpu zzazn = new zzns();
    private static final Pattern zzazo = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int zzaty = -1;
    public int zzatz = -1;

    public final boolean zzb(zzpo zzpoVar) {
        for (int i = 0; i < zzpoVar.length(); i++) {
            zzpo.zza zzaVarZzbc = zzpoVar.zzbc(i);
            if (zzaVarZzbc instanceof zzps) {
                zzps zzpsVar = (zzps) zzaVarZzbc;
                if (zzd(zzpsVar.description, zzpsVar.zzbhy)) {
                    return true;
                }
            }
        }
        return false;
    }

    private final boolean zzd(String str, String str2) throws NumberFormatException {
        if (!"iTunSMPB".equals(str)) {
            return false;
        }
        Matcher matcher = zzazo.matcher(str2);
        if (matcher.find()) {
            try {
                int i = Integer.parseInt(matcher.group(1), 16);
                int i2 = Integer.parseInt(matcher.group(2), 16);
                if (i > 0 || i2 > 0) {
                    this.zzaty = i;
                    this.zzatz = i2;
                    return true;
                }
            } catch (NumberFormatException unused) {
            }
        }
        return false;
    }

    public final boolean zzii() {
        return (this.zzaty == -1 || this.zzatz == -1) ? false : true;
    }
}
