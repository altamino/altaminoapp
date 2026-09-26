package com.google.android.gms.internal.measurement;

import com.google.common.base.c;
import com.google.firebase.remoteconfig.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class zzas implements zzaq, Iterable<zzaq> {
    private final String zza;

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final String zzf() {
        return this.zza;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzas) {
            return this.zza.equals(((zzas) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<zzaq> iterator() {
        return new zzau(this);
    }

    public final String toString() {
        return "\"" + this.zza + "\"";
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0161 A[PHI: r6
      0x0161: PHI (r6v7 java.lang.String) = (r6v6 java.lang.String), (r6v8 java.lang.String) binds: [B:104:0x0172, B:100:0x015f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:102:0x0165  */
    /* JADX WARN: Code duplicated, block: B:103:0x016c  */
    /* JADX WARN: Code duplicated, block: B:106:0x0175  */
    /* JADX WARN: Code duplicated, block: B:107:0x017e  */
    /* JADX WARN: Code duplicated, block: B:110:0x018d  */
    /* JADX WARN: Code duplicated, block: B:111:0x0190  */
    /* JADX WARN: Code duplicated, block: B:114:0x019f  */
    /* JADX WARN: Code duplicated, block: B:117:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:119:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:121:0x01be  */
    /* JADX WARN: Code duplicated, block: B:122:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:126:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:129:0x0207  */
    /* JADX WARN: Code duplicated, block: B:131:0x021e  */
    /* JADX WARN: Code duplicated, block: B:133:0x0234  */
    /* JADX WARN: Code duplicated, block: B:136:0x0246 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:137:0x0247  */
    /* JADX WARN: Code duplicated, block: B:139:0x024b  */
    /* JADX WARN: Code duplicated, block: B:142:0x029a  */
    /* JADX WARN: Code duplicated, block: B:144:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:145:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:148:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:150:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:153:0x0315  */
    /* JADX WARN: Code duplicated, block: B:155:0x0327  */
    /* JADX WARN: Code duplicated, block: B:157:0x0333  */
    /* JADX WARN: Code duplicated, block: B:159:0x033f  */
    /* JADX WARN: Code duplicated, block: B:160:0x0344  */
    /* JADX WARN: Code duplicated, block: B:162:0x0359  */
    /* JADX WARN: Code duplicated, block: B:163:0x0370  */
    /* JADX WARN: Code duplicated, block: B:166:0x0379  */
    /* JADX WARN: Code duplicated, block: B:168:0x037f  */
    /* JADX WARN: Code duplicated, block: B:176:0x03a9  */
    /* JADX WARN: Code duplicated, block: B:179:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:181:0x03b4 A[LOOP:0: B:180:0x03b2->B:181:0x03b4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:184:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:186:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:187:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:190:0x03f6  */
    /* JADX WARN: Code duplicated, block: B:191:0x0401  */
    /* JADX WARN: Code duplicated, block: B:194:0x0412  */
    /* JADX WARN: Code duplicated, block: B:195:0x0425  */
    /* JADX WARN: Code duplicated, block: B:198:0x0432  */
    /* JADX WARN: Code duplicated, block: B:199:0x043d  */
    /* JADX WARN: Code duplicated, block: B:202:0x0458  */
    /* JADX WARN: Code duplicated, block: B:204:0x046c  */
    /* JADX WARN: Code duplicated, block: B:205:0x046f  */
    /* JADX WARN: Code duplicated, block: B:208:0x048c  */
    /* JADX WARN: Code duplicated, block: B:210:0x04a1  */
    /* JADX WARN: Code duplicated, block: B:212:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:214:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:216:0x04ce  */
    /* JADX WARN: Code duplicated, block: B:218:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:219:0x04e8  */
    /* JADX WARN: Code duplicated, block: B:222:0x04fe  */
    /* JADX WARN: Code duplicated, block: B:223:0x0501  */
    /* JADX WARN: Code duplicated, block: B:226:0x051a  */
    /* JADX WARN: Code duplicated, block: B:227:0x051d  */
    /* JADX WARN: Code duplicated, block: B:230:0x0531  */
    /* JADX WARN: Code duplicated, block: B:232:0x0545  */
    /* JADX WARN: Code duplicated, block: B:234:0x0556  */
    /* JADX WARN: Code duplicated, block: B:235:0x0565  */
    /* JADX WARN: Code duplicated, block: B:238:0x057b  */
    /* JADX WARN: Code duplicated, block: B:240:0x058a  */
    /* JADX WARN: Code duplicated, block: B:242:0x0596  */
    /* JADX WARN: Code duplicated, block: B:244:0x05ac  */
    /* JADX WARN: Code duplicated, block: B:246:0x05b8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:247:0x05b9  */
    /* JADX WARN: Code duplicated, block: B:250:0x05c7 A[LOOP:1: B:248:0x05c1->B:250:0x05c7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:253:0x05e5  */
    /* JADX WARN: Code duplicated, block: B:255:0x05f5  */
    /* JADX WARN: Code duplicated, block: B:256:0x060e  */
    /* JADX WARN: Code duplicated, block: B:266:0x062b  */
    /* JADX WARN: Code duplicated, block: B:268:0x063f  */
    /* JADX WARN: Code duplicated, block: B:270:0x0648  */
    /* JADX WARN: Code duplicated, block: B:272:0x066b  */
    /* JADX WARN: Code duplicated, block: B:274:0x066e  */
    /* JADX WARN: Code duplicated, block: B:287:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:288:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:289:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:290:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:291:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:292:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:293:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:294:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:295:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:296:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:297:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:298:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:299:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:59:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:62:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:63:0x0101  */
    /* JADX WARN: Code duplicated, block: B:66:0x0108  */
    /* JADX WARN: Code duplicated, block: B:67:0x010b  */
    /* JADX WARN: Code duplicated, block: B:70:0x0112  */
    /* JADX WARN: Code duplicated, block: B:71:0x0115  */
    /* JADX WARN: Code duplicated, block: B:74:0x011c  */
    /* JADX WARN: Code duplicated, block: B:75:0x011f  */
    /* JADX WARN: Code duplicated, block: B:78:0x0126  */
    /* JADX WARN: Code duplicated, block: B:79:0x0129  */
    /* JADX WARN: Code duplicated, block: B:82:0x0130  */
    /* JADX WARN: Code duplicated, block: B:83:0x0133  */
    /* JADX WARN: Code duplicated, block: B:86:0x013a  */
    /* JADX WARN: Code duplicated, block: B:87:0x013c  */
    /* JADX WARN: Code duplicated, block: B:90:0x0143  */
    /* JADX WARN: Code duplicated, block: B:91:0x0145  */
    /* JADX WARN: Code duplicated, block: B:94:0x014d  */
    /* JADX WARN: Code duplicated, block: B:95:0x014f  */
    /* JADX WARN: Code duplicated, block: B:98:0x0157  */
    /* JADX WARN: Code duplicated, block: B:99:0x0159  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzaq
    public final zzaq zza(String str, zzh zzhVar, List<zzaq> list) {
        String str2;
        String str3;
        String str4;
        byte b7;
        String str5;
        String str6;
        String str7;
        byte b10;
        double dDoubleValue;
        String str8;
        zzaq zzaqVarZza;
        int i10;
        int iZza;
        StringBuilder sb;
        int i11;
        String strZzf;
        String strZzf2;
        double dDoubleValue2;
        double dZza;
        String strZzf3;
        String str9;
        double dDoubleValue3;
        double dZza2;
        double dMin;
        double length;
        double dZza3;
        double dMin2;
        String str10;
        ArrayList arrayList;
        String strZzf4;
        long jZzc;
        String[] strArrSplit;
        int length2;
        int i12;
        String str11;
        int iZza2;
        int length3;
        zzaq zzaqVarZza2;
        String strZzf5;
        String str12;
        int iIndexOf;
        zzh zzhVar2;
        String strZzf6;
        String str13 = "match";
        if (!"charAt".equals(str) && !"concat".equals(str) && !"hasOwnProperty".equals(str) && !"indexOf".equals(str) && !"lastIndexOf".equals(str) && !"match".equals(str) && !"replace".equals(str) && !"search".equals(str) && !"slice".equals(str) && !"split".equals(str) && !"substring".equals(str) && !"toLowerCase".equals(str) && !"toLocaleLowerCase".equals(str) && !"toString".equals(str)) {
            str3 = "toUpperCase";
            str2 = "toLocaleUpperCase";
            if (!str3.equals(str) && !str2.equals(str)) {
                str4 = "trim";
                if (!str4.equals(str)) {
                    throw new IllegalArgumentException(String.format("%s is not a String function", str));
                }
            }
            str.hashCode();
            b7 = -1;
            switch (str.hashCode()) {
                case -1789698943:
                    str5 = "charAt";
                    str6 = r6;
                    str7 = "toString";
                    str13 = "match";
                    if (str.equals(str6)) {
                        b7 = 0;
                    }
                    break;
                case -1776922004:
                    str5 = "charAt";
                    str7 = "toString";
                    str13 = "match";
                    str6 = r6;
                    if (str.equals(str7)) {
                        b7 = 1;
                    }
                    break;
                case -1464939364:
                    str5 = "charAt";
                    if (str.equals("toLocaleLowerCase")) {
                        str13 = "match";
                        str6 = r6;
                        str7 = "toString";
                        b7 = 2;
                    } else {
                        str13 = "match";
                        str6 = "hasOwnProperty";
                        str7 = "toString";
                    }
                    break;
                case -1361633751:
                    str5 = "charAt";
                    if (str.equals(str5)) {
                        str13 = "match";
                        b7 = 3;
                    } else {
                        str13 = "match";
                    }
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case -1354795244:
                    if (!str.equals("concat")) {
                        b10 = 4;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case -1137582698:
                    if (!str.equals("toLowerCase")) {
                        b10 = 5;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case -906336856:
                    if (!str.equals("search")) {
                        b10 = 6;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case -726908483:
                    if (!str.equals(str2)) {
                        b10 = 7;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case -467511597:
                    if (!str.equals("lastIndexOf")) {
                        b10 = 8;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case -399551817:
                    if (!str.equals(str3)) {
                        b10 = 9;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case 3568674:
                    if (!str.equals(str4)) {
                        b10 = 10;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case 103668165:
                    if (!str.equals("match")) {
                        b10 = c.VT;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case 109526418:
                    if (!str.equals("slice")) {
                        b10 = c.FF;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case 109648666:
                    if (!str.equals("split")) {
                        b10 = c.CR;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case 530542161:
                    if (!str.equals("substring")) {
                        b10 = c.SO;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case 1094496948:
                    if (!str.equals("replace")) {
                        b10 = c.SI;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                case 1943291465:
                    if (!str.equals("indexOf")) {
                        b10 = c.DLE;
                        b7 = b10;
                    }
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
                default:
                    str5 = "charAt";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                    break;
            }
            dDoubleValue = a.DEFAULT_VALUE_FOR_DOUBLE;
            switch (b7) {
                case 0:
                    zzg.zza(str6, 1, list);
                    str8 = this.zza;
                    zzaqVarZza = zzhVar.zza(list.get(0));
                    if ("length".equals(zzaqVarZza.zzf())) {
                        return zzaq.zzh;
                    }
                    double dDoubleValue4 = zzaqVarZza.zze().doubleValue();
                    return (dDoubleValue4 == Math.floor(dDoubleValue4) || (i10 = (int) dDoubleValue4) < 0 || i10 >= str8.length()) ? zzaq.zzi : zzaq.zzh;
                case 1:
                    zzg.zza(str7, 0, list);
                    return this;
                case 2:
                    zzg.zza("toLocaleLowerCase", 0, list);
                    return new zzas(this.zza.toLowerCase());
                case 3:
                    zzg.zzc(str5, 1, list);
                    if (list.isEmpty()) {
                        iZza = 0;
                    } else {
                        iZza = (int) zzg.zza(zzhVar.zza(list.get(0)).zze().doubleValue());
                    }
                    String str14 = this.zza;
                    return (iZza >= 0 || iZza >= str14.length()) ? zzaq.zzj : new zzas(String.valueOf(str14.charAt(iZza)));
                case 4:
                    if (list.isEmpty()) {
                        return this;
                    }
                    sb = new StringBuilder(this.zza);
                    for (i11 = 0; i11 < list.size(); i11++) {
                        sb.append(zzhVar.zza(list.get(i11)).zzf());
                    }
                    return new zzas(sb.toString());
                case 5:
                    zzg.zza("toLowerCase", 0, list);
                    return new zzas(this.zza.toLowerCase(Locale.ENGLISH));
                case 6:
                    zzg.zzc("search", 1, list);
                    if (list.isEmpty()) {
                        strZzf = zzaq.zzc.zzf();
                    } else {
                        strZzf = zzhVar.zza(list.get(0)).zzf();
                    }
                    Matcher matcher = Pattern.compile(strZzf).matcher(this.zza);
                    return matcher.find() ? new zzai(Double.valueOf(matcher.start())) : new zzai(Double.valueOf(-1.0d));
                case 7:
                    zzg.zza(str2, 0, list);
                    return new zzas(this.zza.toUpperCase());
                case 8:
                    zzg.zzc("lastIndexOf", 2, list);
                    String str15 = this.zza;
                    if (list.size() <= 0) {
                        strZzf2 = zzaq.zzc.zzf();
                    } else {
                        strZzf2 = zzhVar.zza(list.get(0)).zzf();
                    }
                    if (list.size() < 2) {
                        dDoubleValue2 = Double.NaN;
                    } else {
                        dDoubleValue2 = zzhVar.zza(list.get(1)).zze().doubleValue();
                    }
                    if (Double.isNaN(dDoubleValue2)) {
                        dZza = Double.POSITIVE_INFINITY;
                    } else {
                        dZza = zzg.zza(dDoubleValue2);
                    }
                    return new zzai(Double.valueOf(str15.lastIndexOf(strZzf2, (int) dZza)));
                case 9:
                    zzg.zza(str3, 0, list);
                    return new zzas(this.zza.toUpperCase(Locale.ENGLISH));
                case 10:
                    zzg.zza(str3, 0, list);
                    return new zzas(this.zza.trim());
                case 11:
                    zzg.zzc(str13, 1, list);
                    String str16 = this.zza;
                    if (list.size() <= 0) {
                        strZzf3 = "";
                    } else {
                        strZzf3 = zzhVar.zza(list.get(0)).zzf();
                    }
                    Matcher matcher2 = Pattern.compile(strZzf3).matcher(str16);
                    return matcher2.find() ? new zzaf(new zzas(matcher2.group())) : zzaq.zzd;
                case 12:
                    zzg.zzc("slice", 2, list);
                    str9 = this.zza;
                    if (list.isEmpty()) {
                        dDoubleValue3 = 0.0d;
                    } else {
                        dDoubleValue3 = zzhVar.zza(list.get(0)).zze().doubleValue();
                    }
                    dZza2 = zzg.zza(dDoubleValue3);
                    if (dZza2 < a.DEFAULT_VALUE_FOR_DOUBLE) {
                        dMin = Math.max(((double) str9.length()) + dZza2, a.DEFAULT_VALUE_FOR_DOUBLE);
                    } else {
                        dMin = Math.min(dZza2, str9.length());
                    }
                    int i13 = (int) dMin;
                    if (list.size() > 1) {
                        length = zzhVar.zza(list.get(1)).zze().doubleValue();
                    } else {
                        length = str9.length();
                    }
                    dZza3 = zzg.zza(length);
                    if (dZza3 < a.DEFAULT_VALUE_FOR_DOUBLE) {
                        dMin2 = Math.max(((double) str9.length()) + dZza3, a.DEFAULT_VALUE_FOR_DOUBLE);
                    } else {
                        dMin2 = Math.min(dZza3, str9.length());
                    }
                    return new zzas(str9.substring(i13, Math.max(0, ((int) dMin2) - i13) + i13));
                case 13:
                    zzg.zzc("split", 2, list);
                    str10 = this.zza;
                    if (str10.length() == 0) {
                        return new zzaf(this);
                    }
                    arrayList = new ArrayList();
                    if (list.isEmpty()) {
                        arrayList.add(this);
                    } else {
                        strZzf4 = zzhVar.zza(list.get(0)).zzf();
                        if (list.size() > 1) {
                            jZzc = zzg.zzc(zzhVar.zza(list.get(1)).zze().doubleValue());
                        } else {
                            jZzc = 2147483647L;
                        }
                        if (jZzc == 0) {
                            return new zzaf();
                        }
                        strArrSplit = str10.split(Pattern.quote(strZzf4), ((int) jZzc) + 1);
                        length2 = strArrSplit.length;
                        if (strZzf4.isEmpty() || strArrSplit.length <= 0) {
                            i12 = 0;
                        } else {
                            boolean zIsEmpty = strArrSplit[0].isEmpty();
                            if (strArrSplit[strArrSplit.length - 1].isEmpty()) {
                                length2 = strArrSplit.length - 1;
                            }
                            i12 = zIsEmpty;
                        }
                        if (strArrSplit.length > jZzc) {
                            length2--;
                        }
                        while (i12 < length2) {
                            arrayList.add(new zzas(strArrSplit[i12]));
                            i12++;
                        }
                    }
                    return new zzaf(arrayList);
                case 14:
                    zzg.zzc("substring", 2, list);
                    str11 = this.zza;
                    if (list.isEmpty()) {
                        iZza2 = 0;
                    } else {
                        iZza2 = (int) zzg.zza(zzhVar.zza(list.get(0)).zze().doubleValue());
                    }
                    if (list.size() > 1) {
                        length3 = (int) zzg.zza(zzhVar.zza(list.get(1)).zze().doubleValue());
                    } else {
                        length3 = str11.length();
                    }
                    int iMin = Math.min(Math.max(iZza2, 0), str11.length());
                    int iMin2 = Math.min(Math.max(length3, 0), str11.length());
                    return new zzas(str11.substring(Math.min(iMin, iMin2), Math.max(iMin, iMin2)));
                case 15:
                    zzg.zzc("replace", 2, list);
                    zzaqVarZza2 = zzaq.zzc;
                    strZzf5 = zzaqVarZza2.zzf();
                    if (!list.isEmpty()) {
                        strZzf5 = zzhVar.zza(list.get(0)).zzf();
                        if (list.size() > 1) {
                            zzaqVarZza2 = zzhVar.zza(list.get(1));
                        }
                    }
                    str12 = this.zza;
                    iIndexOf = str12.indexOf(strZzf5);
                    if (iIndexOf < 0) {
                        return this;
                    }
                    if (zzaqVarZza2 instanceof zzal) {
                        zzaqVarZza2 = ((zzal) zzaqVarZza2).zza(zzhVar, Arrays.asList(new zzas(strZzf5), new zzai(Double.valueOf(iIndexOf)), this));
                    }
                    return new zzas(str12.substring(0, iIndexOf) + zzaqVarZza2.zzf() + str12.substring(iIndexOf + strZzf5.length()));
                case 16:
                    zzg.zzc("indexOf", 2, list);
                    String str17 = this.zza;
                    if (list.size() <= 0) {
                        strZzf6 = zzaq.zzc.zzf();
                        zzhVar2 = zzhVar;
                    } else {
                        zzhVar2 = zzhVar;
                        strZzf6 = zzhVar2.zza(list.get(0)).zzf();
                    }
                    if (list.size() >= 2) {
                        dDoubleValue = zzhVar2.zza(list.get(1)).zze().doubleValue();
                    }
                    return new zzai(Double.valueOf(str17.indexOf(strZzf6, (int) zzg.zza(dDoubleValue))));
                default:
                    throw new IllegalArgumentException("Command not supported");
            }
        }
        str2 = "toLocaleUpperCase";
        str3 = "toUpperCase";
        str4 = "trim";
        str.hashCode();
        b7 = -1;
        switch (str.hashCode()) {
            case -1789698943:
                str5 = "charAt";
                str6 = r6;
                str7 = "toString";
                str13 = "match";
                if (str.equals(str6)) {
                    b7 = 0;
                }
                break;
            case -1776922004:
                str5 = "charAt";
                str7 = "toString";
                str13 = "match";
                str6 = r6;
                if (str.equals(str7)) {
                    b7 = 1;
                }
                break;
            case -1464939364:
                str5 = "charAt";
                if (str.equals("toLocaleLowerCase")) {
                    str13 = "match";
                    str6 = "hasOwnProperty";
                    str7 = "toString";
                } else {
                    str13 = "match";
                    str6 = r6;
                    str7 = "toString";
                    b7 = 2;
                }
                break;
            case -1361633751:
                str5 = "charAt";
                if (str.equals(str5)) {
                    str13 = "match";
                } else {
                    str13 = "match";
                    b7 = 3;
                }
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case -1354795244:
                if (!str.equals("concat")) {
                    b10 = 4;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case -1137582698:
                if (!str.equals("toLowerCase")) {
                    b10 = 5;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case -906336856:
                if (!str.equals("search")) {
                    b10 = 6;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case -726908483:
                if (!str.equals(str2)) {
                    b10 = 7;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case -467511597:
                if (!str.equals("lastIndexOf")) {
                    b10 = 8;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case -399551817:
                if (!str.equals(str3)) {
                    b10 = 9;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case 3568674:
                if (!str.equals(str4)) {
                    b10 = 10;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case 103668165:
                if (!str.equals("match")) {
                    b10 = c.VT;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case 109526418:
                if (!str.equals("slice")) {
                    b10 = c.FF;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case 109648666:
                if (!str.equals("split")) {
                    b10 = c.CR;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case 530542161:
                if (!str.equals("substring")) {
                    b10 = c.SO;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case 1094496948:
                if (!str.equals("replace")) {
                    b10 = c.SI;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            case 1943291465:
                if (!str.equals("indexOf")) {
                    b10 = c.DLE;
                    b7 = b10;
                }
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
            default:
                str5 = "charAt";
                str6 = "hasOwnProperty";
                str7 = "toString";
                break;
        }
        dDoubleValue = a.DEFAULT_VALUE_FOR_DOUBLE;
        switch (b7) {
            case 0:
                zzg.zza(str6, 1, list);
                str8 = this.zza;
                zzaqVarZza = zzhVar.zza(list.get(0));
                if ("length".equals(zzaqVarZza.zzf())) {
                    return zzaq.zzh;
                }
                double dDoubleValue5 = zzaqVarZza.zze().doubleValue();
                if (dDoubleValue5 == Math.floor(dDoubleValue5)) {
                }
                break;
            case 1:
                zzg.zza(str7, 0, list);
                return this;
            case 2:
                zzg.zza("toLocaleLowerCase", 0, list);
                return new zzas(this.zza.toLowerCase());
            case 3:
                zzg.zzc(str5, 1, list);
                if (list.isEmpty()) {
                    iZza = (int) zzg.zza(zzhVar.zza(list.get(0)).zze().doubleValue());
                } else {
                    iZza = 0;
                }
                String str18 = this.zza;
                if (iZza >= 0) {
                }
                break;
            case 4:
                if (list.isEmpty()) {
                    return this;
                }
                sb = new StringBuilder(this.zza);
                while (i11 < list.size()) {
                    sb.append(zzhVar.zza(list.get(i11)).zzf());
                }
                return new zzas(sb.toString());
            case 5:
                zzg.zza("toLowerCase", 0, list);
                return new zzas(this.zza.toLowerCase(Locale.ENGLISH));
            case 6:
                zzg.zzc("search", 1, list);
                if (list.isEmpty()) {
                    strZzf = zzhVar.zza(list.get(0)).zzf();
                } else {
                    strZzf = zzaq.zzc.zzf();
                }
                Matcher matcher3 = Pattern.compile(strZzf).matcher(this.zza);
                if (matcher3.find()) {
                }
            case 7:
                zzg.zza(str2, 0, list);
                return new zzas(this.zza.toUpperCase());
            case 8:
                zzg.zzc("lastIndexOf", 2, list);
                String str19 = this.zza;
                if (list.size() <= 0) {
                    strZzf2 = zzaq.zzc.zzf();
                } else {
                    strZzf2 = zzhVar.zza(list.get(0)).zzf();
                }
                if (list.size() < 2) {
                    dDoubleValue2 = Double.NaN;
                } else {
                    dDoubleValue2 = zzhVar.zza(list.get(1)).zze().doubleValue();
                }
                if (Double.isNaN(dDoubleValue2)) {
                    dZza = Double.POSITIVE_INFINITY;
                } else {
                    dZza = zzg.zza(dDoubleValue2);
                }
                return new zzai(Double.valueOf(str19.lastIndexOf(strZzf2, (int) dZza)));
            case 9:
                zzg.zza(str3, 0, list);
                return new zzas(this.zza.toUpperCase(Locale.ENGLISH));
            case 10:
                zzg.zza(str3, 0, list);
                return new zzas(this.zza.trim());
            case 11:
                zzg.zzc(str13, 1, list);
                String str110 = this.zza;
                if (list.size() <= 0) {
                    strZzf3 = "";
                } else {
                    strZzf3 = zzhVar.zza(list.get(0)).zzf();
                }
                Matcher matcher4 = Pattern.compile(strZzf3).matcher(str110);
                if (matcher4.find()) {
                }
            case 12:
                zzg.zzc("slice", 2, list);
                str9 = this.zza;
                if (list.isEmpty()) {
                    dDoubleValue3 = zzhVar.zza(list.get(0)).zze().doubleValue();
                } else {
                    dDoubleValue3 = 0.0d;
                }
                dZza2 = zzg.zza(dDoubleValue3);
                if (dZza2 < a.DEFAULT_VALUE_FOR_DOUBLE) {
                    dMin = Math.max(((double) str9.length()) + dZza2, a.DEFAULT_VALUE_FOR_DOUBLE);
                } else {
                    dMin = Math.min(dZza2, str9.length());
                }
                int i14 = (int) dMin;
                if (list.size() > 1) {
                    length = zzhVar.zza(list.get(1)).zze().doubleValue();
                } else {
                    length = str9.length();
                }
                dZza3 = zzg.zza(length);
                if (dZza3 < a.DEFAULT_VALUE_FOR_DOUBLE) {
                    dMin2 = Math.max(((double) str9.length()) + dZza3, a.DEFAULT_VALUE_FOR_DOUBLE);
                } else {
                    dMin2 = Math.min(dZza3, str9.length());
                }
                return new zzas(str9.substring(i14, Math.max(0, ((int) dMin2) - i14) + i14));
            case 13:
                zzg.zzc("split", 2, list);
                str10 = this.zza;
                if (str10.length() == 0) {
                    return new zzaf(this);
                }
                arrayList = new ArrayList();
                if (list.isEmpty()) {
                    arrayList.add(this);
                } else {
                    strZzf4 = zzhVar.zza(list.get(0)).zzf();
                    if (list.size() > 1) {
                        jZzc = zzg.zzc(zzhVar.zza(list.get(1)).zze().doubleValue());
                    } else {
                        jZzc = 2147483647L;
                    }
                    if (jZzc == 0) {
                        return new zzaf();
                    }
                    strArrSplit = str10.split(Pattern.quote(strZzf4), ((int) jZzc) + 1);
                    length2 = strArrSplit.length;
                    if (strZzf4.isEmpty()) {
                        i12 = 0;
                    } else {
                        i12 = 0;
                    }
                    if (strArrSplit.length > jZzc) {
                        length2--;
                    }
                    while (i12 < length2) {
                        arrayList.add(new zzas(strArrSplit[i12]));
                        i12++;
                    }
                }
                return new zzaf(arrayList);
            case 14:
                zzg.zzc("substring", 2, list);
                str11 = this.zza;
                if (list.isEmpty()) {
                    iZza2 = (int) zzg.zza(zzhVar.zza(list.get(0)).zze().doubleValue());
                } else {
                    iZza2 = 0;
                }
                if (list.size() > 1) {
                    length3 = (int) zzg.zza(zzhVar.zza(list.get(1)).zze().doubleValue());
                } else {
                    length3 = str11.length();
                }
                int iMin3 = Math.min(Math.max(iZza2, 0), str11.length());
                int iMin4 = Math.min(Math.max(length3, 0), str11.length());
                return new zzas(str11.substring(Math.min(iMin3, iMin4), Math.max(iMin3, iMin4)));
            case 15:
                zzg.zzc("replace", 2, list);
                zzaqVarZza2 = zzaq.zzc;
                strZzf5 = zzaqVarZza2.zzf();
                if (!list.isEmpty()) {
                    strZzf5 = zzhVar.zza(list.get(0)).zzf();
                    if (list.size() > 1) {
                        zzaqVarZza2 = zzhVar.zza(list.get(1));
                    }
                }
                str12 = this.zza;
                iIndexOf = str12.indexOf(strZzf5);
                if (iIndexOf < 0) {
                    return this;
                }
                if (zzaqVarZza2 instanceof zzal) {
                    zzaqVarZza2 = ((zzal) zzaqVarZza2).zza(zzhVar, Arrays.asList(new zzas(strZzf5), new zzai(Double.valueOf(iIndexOf)), this));
                }
                return new zzas(str12.substring(0, iIndexOf) + zzaqVarZza2.zzf() + str12.substring(iIndexOf + strZzf5.length()));
            case 16:
                zzg.zzc("indexOf", 2, list);
                String str111 = this.zza;
                if (list.size() <= 0) {
                    strZzf6 = zzaq.zzc.zzf();
                    zzhVar2 = zzhVar;
                } else {
                    zzhVar2 = zzhVar;
                    strZzf6 = zzhVar2.zza(list.get(0)).zzf();
                }
                if (list.size() >= 2) {
                    dDoubleValue = zzhVar2.zza(list.get(1)).zze().doubleValue();
                }
                return new zzai(Double.valueOf(str111.indexOf(strZzf6, (int) zzg.zza(dDoubleValue))));
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final zzaq zzc() {
        return new zzas(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Boolean zzd() {
        return Boolean.valueOf(!this.zza.isEmpty());
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Double zze() {
        if (this.zza.isEmpty()) {
            return Double.valueOf(a.DEFAULT_VALUE_FOR_DOUBLE);
        }
        try {
            return Double.valueOf(this.zza);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Iterator<zzaq> zzh() {
        return new zzav(this);
    }

    public zzas(String str) {
        if (str != null) {
            this.zza = str;
            return;
        }
        throw new IllegalArgumentException("StringValue cannot be null.");
    }
}
