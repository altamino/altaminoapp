package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

@zzard
/* loaded from: classes2.dex */
public final class zzvb {
    private final int zzbvx;
    private final zzva zzbvz = new zzvf();
    private final int zzbvw = 6;
    private final int zzbvy = 0;

    public zzvb(int i) {
        this.zzbvx = i;
    }

    public final String zza(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            String str = arrayList.get(i);
            i++;
            sb.append(str.toLowerCase(Locale.US));
            sb.append('\n');
        }
        return zzbm(sb.toString());
    }

    @VisibleForTesting
    private final String zzbm(String str) throws UnsupportedEncodingException {
        String[] strArrSplit = str.split("\n");
        if (strArrSplit.length == 0) {
            return "";
        }
        zzvd zzvdVar = new zzvd();
        PriorityQueue priorityQueue = new PriorityQueue(this.zzbvx, new zzvc(this));
        for (String str2 : strArrSplit) {
            String[] strArrZzg = zzve.zzg(str2, false);
            if (strArrZzg.length != 0) {
                zzvh.zza(strArrZzg, this.zzbvx, this.zzbvw, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzvdVar.write(this.zzbvz.zzbl(((zzvi) it.next()).zzbwd));
            } catch (IOException e) {
                zzbad.zzc("Error while writing hash to byteStream", e);
            }
        }
        return zzvdVar.toString();
    }
}
