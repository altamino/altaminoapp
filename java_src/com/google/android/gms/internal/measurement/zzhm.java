package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzhm {
    static String zzd(zzdp zzdpVar) {
        zzhn zzhnVar = new zzhn(zzdpVar);
        StringBuilder sb = new StringBuilder(zzhnVar.size());
        for (int i = 0; i < zzhnVar.size(); i++) {
            byte bZzr = zzhnVar.zzr(i);
            if (bZzr == 34) {
                sb.append("\\\"");
            } else if (bZzr == 39) {
                sb.append("\\'");
            } else if (bZzr != 92) {
                switch (bZzr) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bZzr < 32 || bZzr > 126) {
                            sb.append('\\');
                            sb.append((char) (((bZzr >>> 6) & 3) + 48));
                            sb.append((char) (((bZzr >>> 3) & 7) + 48));
                            sb.append((char) ((bZzr & 7) + 48));
                            break;
                        } else {
                            sb.append((char) bZzr);
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
