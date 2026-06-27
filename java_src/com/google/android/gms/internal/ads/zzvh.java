package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.io.UnsupportedEncodingException;
import java.util.PriorityQueue;

@zzard
/* loaded from: classes2.dex */
public final class zzvh {
    public static void zza(String[] strArr, int i, int i2, PriorityQueue<zzvi> priorityQueue) throws UnsupportedEncodingException {
        if (strArr.length < i2) {
            zza(i, zzb(strArr, 0, strArr.length), zza(strArr, 0, strArr.length), strArr.length, priorityQueue);
            return;
        }
        long jZzb = zzb(strArr, 0, i2);
        zza(i, jZzb, zza(strArr, 0, i2), i2, priorityQueue);
        long jZza = zza(16785407L, i2 - 1);
        for (int i3 = 1; i3 < (strArr.length - i2) + 1; i3++) {
            jZzb = ((((((jZzb + 1073807359) - ((((zzve.zzbn(strArr[i3 - 1]) + 2147483647L) % 1073807359) * jZza) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((zzve.zzbn(strArr[(i3 + i2) - 1]) + 2147483647L) % 1073807359)) % 1073807359;
            zza(i, jZzb, zza(strArr, i3, i2), strArr.length, priorityQueue);
        }
    }

    @VisibleForTesting
    private static void zza(int i, long j, String str, int i2, PriorityQueue<zzvi> priorityQueue) {
        zzvi zzviVar = new zzvi(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().zzbvw <= zzviVar.zzbvw && priorityQueue.peek().value <= zzviVar.value)) && !priorityQueue.contains(zzviVar)) {
            priorityQueue.add(zzviVar);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    @VisibleForTesting
    private static String zza(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            zzbad.zzen("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i4 = i3 - 1;
            if (i < i4) {
                sb.append(strArr[i]);
                sb.append(' ');
                i++;
            } else {
                sb.append(strArr[i4]);
                return sb.toString();
            }
        }
    }

    private static long zzb(String[] strArr, int i, int i2) {
        long jZzbn = (zzve.zzbn(strArr[0]) + 2147483647L) % 1073807359;
        for (int i3 = 1; i3 < i2; i3++) {
            jZzbn = (((jZzbn * 16785407) % 1073807359) + ((zzve.zzbn(strArr[i3]) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return jZzbn;
    }

    @VisibleForTesting
    private static long zza(long j, int i) {
        if (i == 0) {
            return 1L;
        }
        if (i == 1) {
            return j;
        }
        if (i % 2 == 0) {
            return zza((j * j) % 1073807359, i / 2) % 1073807359;
        }
        return (j * (zza((j * j) % 1073807359, i / 2) % 1073807359)) % 1073807359;
    }
}
