package com.google.android.gms.internal.play_billing;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes10.dex */
final class zzge {
    private static final char[] zza;

    static {
        char[] cArr = new char[80];
        zza = cArr;
        Arrays.fill(cArr, ' ');
    }

    static String zza(zzgc zzgcVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zzd(zzgcVar, sb, 0);
        return sb.toString();
    }

    static void zzb(StringBuilder sb, int i10, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zzb(sb, i10, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                zzb(sb, i10, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        zzc(i10, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i11 = 1; i11 < str.length(); i11++) {
                char cCharAt = str.charAt(i11);
                if (Character.isUpperCase(cCharAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(cCharAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(zzhb.zza(new zzdt(((String) obj).getBytes(zzfd.zzb))));
            sb.append(b.STRING);
            return;
        }
        if (obj instanceof zzdw) {
            sb.append(": \"");
            sb.append(zzhb.zza((zzdw) obj));
            sb.append(b.STRING);
            return;
        }
        if (obj instanceof zzex) {
            sb.append(" {");
            zzd((zzex) obj, sb, i10 + 2);
            sb.append("\n");
            zzc(i10, sb);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        int i12 = i10 + 2;
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        zzb(sb, i12, "key", entry.getKey());
        zzb(sb, i12, "value", entry.getValue());
        sb.append("\n");
        zzc(i10, sb);
        sb.append("}");
    }

    private static void zzc(int i10, StringBuilder sb) {
        while (i10 > 0) {
            int i11 = 80;
            if (i10 <= 80) {
                i11 = i10;
            }
            sb.append(zza, 0, i11);
            i10 -= i11;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01fa  */
    private static void zzd(zzgc zzgcVar, StringBuilder sb, int i10) {
        int i11;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzgcVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i12 = 0;
        while (true) {
            i11 = 3;
            if (i12 >= length) {
                break;
            }
            Method method3 = declaredMethods[i12];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        map.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i12++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String strSubstring = ((String) entry.getKey()).substring(i11);
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List") && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                zzb(sb, i10, strSubstring.substring(0, strSubstring.length() - 4), zzex.zzl(method2, zzgcVar, new Object[0]));
            } else if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                zzb(sb, i10, strSubstring.substring(0, strSubstring.length() - 3), zzex.zzl(method, zzgcVar, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(strSubstring.substring(0, strSubstring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objZzl = zzex.zzl(method4, zzgcVar, new Object[0]);
                    if (method5 == null) {
                        if (objZzl instanceof Boolean) {
                            if (((Boolean) objZzl).booleanValue()) {
                                zzb(sb, i10, strSubstring, objZzl);
                            }
                        } else if (objZzl instanceof Integer) {
                            if (((Integer) objZzl).intValue() != 0) {
                                zzb(sb, i10, strSubstring, objZzl);
                            }
                        } else if (objZzl instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objZzl).floatValue()) != 0) {
                                zzb(sb, i10, strSubstring, objZzl);
                            }
                        } else if (!(objZzl instanceof Double)) {
                            if (objZzl instanceof String) {
                                zEquals = objZzl.equals("");
                            } else if (objZzl instanceof zzdw) {
                                zEquals = objZzl.equals(zzdw.zzb);
                            } else if (objZzl instanceof zzgc) {
                                if (objZzl != ((zzgc) objZzl).zzf()) {
                                    zzb(sb, i10, strSubstring, objZzl);
                                }
                            } else if (!(objZzl instanceof Enum) || ((Enum) objZzl).ordinal() != 0) {
                                zzb(sb, i10, strSubstring, objZzl);
                            }
                            if (!zEquals) {
                                zzb(sb, i10, strSubstring, objZzl);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) objZzl).doubleValue()) != 0) {
                            zzb(sb, i10, strSubstring, objZzl);
                        }
                    } else if (((Boolean) zzex.zzl(method5, zzgcVar, new Object[0])).booleanValue()) {
                        zzb(sb, i10, strSubstring, objZzl);
                    }
                }
            }
            i11 = 3;
        }
        if (zzgcVar instanceof zzeu) {
            throw null;
        }
        zzhe zzheVar = ((zzex) zzgcVar).zzc;
        if (zzheVar != null) {
            zzheVar.zzi(sb, i10);
        }
    }
}
