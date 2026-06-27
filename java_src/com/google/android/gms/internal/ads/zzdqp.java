package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzdqp {
    static String zzdc(zzdmr zzdmrVar) {
        zzdqq zzdqqVar = new zzdqq(zzdmrVar);
        StringBuilder sb = new StringBuilder(zzdqqVar.size());
        for (int i = 0; i < zzdqqVar.size(); i++) {
            byte bZzfm = zzdqqVar.zzfm(i);
            if (bZzfm == 34) {
                sb.append("\\\"");
            } else if (bZzfm == 39) {
                sb.append("\\'");
            } else if (bZzfm != 92) {
                switch (bZzfm) {
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
                        if (bZzfm < 32 || bZzfm > 126) {
                            sb.append('\\');
                            sb.append((char) (((bZzfm >>> 6) & 3) + 48));
                            sb.append((char) (((bZzfm >>> 3) & 7) + 48));
                            sb.append((char) ((bZzfm & 7) + 48));
                            break;
                        } else {
                            sb.append((char) bZzfm);
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
