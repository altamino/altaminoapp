package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
final class zzdru implements Cloneable {
    private Object value;
    private zzdrs<?, ?> zzhnu;
    private List<Object> zzhnv = new ArrayList();

    zzdru() {
    }

    final int zzor() {
        if (this.value != null) {
            throw new NoSuchMethodError();
        }
        Iterator<Object> it = this.zzhnv.iterator();
        if (!it.hasNext()) {
            return 0;
        }
        it.next();
        throw new NoSuchMethodError();
    }

    final void zza(zzdrp zzdrpVar) throws IOException {
        if (this.value != null) {
            throw new NoSuchMethodError();
        }
        Iterator<Object> it = this.zzhnv.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NoSuchMethodError();
        }
    }

    public final boolean equals(Object obj) {
        List<Object> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdru)) {
            return false;
        }
        zzdru zzdruVar = (zzdru) obj;
        if (this.value != null && zzdruVar.value != null) {
            zzdrs<?, ?> zzdrsVar = this.zzhnu;
            if (zzdrsVar != zzdruVar.zzhnu) {
                return false;
            }
            if (!zzdrsVar.zzhnp.isArray()) {
                return this.value.equals(zzdruVar.value);
            }
            Object obj2 = this.value;
            if (obj2 instanceof byte[]) {
                return Arrays.equals((byte[]) obj2, (byte[]) zzdruVar.value);
            }
            if (obj2 instanceof int[]) {
                return Arrays.equals((int[]) obj2, (int[]) zzdruVar.value);
            }
            if (obj2 instanceof long[]) {
                return Arrays.equals((long[]) obj2, (long[]) zzdruVar.value);
            }
            if (obj2 instanceof float[]) {
                return Arrays.equals((float[]) obj2, (float[]) zzdruVar.value);
            }
            if (obj2 instanceof double[]) {
                return Arrays.equals((double[]) obj2, (double[]) zzdruVar.value);
            }
            if (obj2 instanceof boolean[]) {
                return Arrays.equals((boolean[]) obj2, (boolean[]) zzdruVar.value);
            }
            return Arrays.deepEquals((Object[]) obj2, (Object[]) zzdruVar.value);
        }
        List<Object> list2 = this.zzhnv;
        if (list2 != null && (list = zzdruVar.zzhnv) != null) {
            return list2.equals(list);
        }
        try {
            return Arrays.equals(toByteArray(), zzdruVar.toByteArray());
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    private final byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zzor()];
        zza(zzdrp.zzaf(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzbam, reason: merged with bridge method [inline-methods] */
    public final zzdru clone() {
        zzdru zzdruVar = new zzdru();
        try {
            zzdruVar.zzhnu = this.zzhnu;
            if (this.zzhnv == null) {
                zzdruVar.zzhnv = null;
            } else {
                zzdruVar.zzhnv.addAll(this.zzhnv);
            }
            if (this.value != null) {
                if (this.value instanceof zzdrw) {
                    zzdruVar.value = (zzdrw) ((zzdrw) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    zzdruVar.value = ((byte[]) this.value).clone();
                } else {
                    int i = 0;
                    if (this.value instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.value;
                        byte[][] bArr2 = new byte[bArr.length][];
                        zzdruVar.value = bArr2;
                        while (i < bArr.length) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                            i++;
                        }
                    } else if (this.value instanceof boolean[]) {
                        zzdruVar.value = ((boolean[]) this.value).clone();
                    } else if (this.value instanceof int[]) {
                        zzdruVar.value = ((int[]) this.value).clone();
                    } else if (this.value instanceof long[]) {
                        zzdruVar.value = ((long[]) this.value).clone();
                    } else if (this.value instanceof float[]) {
                        zzdruVar.value = ((float[]) this.value).clone();
                    } else if (this.value instanceof double[]) {
                        zzdruVar.value = ((double[]) this.value).clone();
                    } else if (this.value instanceof zzdrw[]) {
                        zzdrw[] zzdrwVarArr = (zzdrw[]) this.value;
                        zzdrw[] zzdrwVarArr2 = new zzdrw[zzdrwVarArr.length];
                        zzdruVar.value = zzdrwVarArr2;
                        while (i < zzdrwVarArr.length) {
                            zzdrwVarArr2[i] = (zzdrw) zzdrwVarArr[i].clone();
                            i++;
                        }
                    }
                }
            }
            return zzdruVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
