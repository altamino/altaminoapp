package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzdg;
import com.google.android.gms.internal.measurement.zzdh;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class zzdg<MessageType extends zzdg<MessageType, BuilderType>, BuilderType extends zzdh<MessageType, BuilderType>> implements zzgh {
    private static boolean zzabn;
    protected int zzabm = 0;

    @Override // com.google.android.gms.internal.measurement.zzgh
    public final zzdp zzjv() {
        try {
            zzdx zzdxVarZzt = zzdp.zzt(zzly());
            zzb(zzdxVarZzt.zzki());
            return zzdxVarZzt.zzkh();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public final byte[] toByteArray() {
        try {
            byte[] bArr = new byte[zzly()];
            zzeg zzegVarZzh = zzeg.zzh(bArr);
            zzb(zzegVarZzh);
            zzegVarZzh.zzlk();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "byte array".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    int zzjw() {
        throw new UnsupportedOperationException();
    }

    void zzn(int i) {
        throw new UnsupportedOperationException();
    }

    protected static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzfb.checkNotNull(iterable);
        if (iterable instanceof zzfq) {
            List<?> listZzng = ((zzfq) iterable).zzng();
            zzfq zzfqVar = (zzfq) list;
            int size = list.size();
            for (Object obj : listZzng) {
                if (obj == null) {
                    int size2 = zzfqVar.size() - size;
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2);
                    sb.append(" is null.");
                    String string = sb.toString();
                    for (int size3 = zzfqVar.size() - 1; size3 >= size; size3--) {
                        zzfqVar.remove(size3);
                    }
                    throw new NullPointerException(string);
                }
                if (obj instanceof zzdp) {
                    zzfqVar.zzc((zzdp) obj);
                } else {
                    zzfqVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzgt) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
        }
        int size4 = list.size();
        for (T t : iterable) {
            if (t == null) {
                int size5 = list.size() - size4;
                StringBuilder sb2 = new StringBuilder(37);
                sb2.append("Element at index ");
                sb2.append(size5);
                sb2.append(" is null.");
                String string2 = sb2.toString();
                for (int size6 = list.size() - 1; size6 >= size4; size6--) {
                    list.remove(size6);
                }
                throw new NullPointerException(string2);
            }
            list.add(t);
        }
    }
}
