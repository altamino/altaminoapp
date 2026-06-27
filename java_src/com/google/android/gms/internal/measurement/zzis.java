package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class zzis implements Cloneable {
    private Object value;
    private zziq<?, ?> zzanj;
    private List<zzix> zzank = new ArrayList();

    zzis() {
    }

    final void zza(zzix zzixVar) throws IOException {
        List<zzix> list = this.zzank;
        if (list != null) {
            list.add(zzixVar);
            return;
        }
        Object obj = this.value;
        if (obj instanceof zziv) {
            byte[] bArr = zzixVar.zzacg;
            zzim zzimVarZzj = zzim.zzj(bArr, 0, bArr.length);
            int iZzlb = zzimVarZzj.zzlb();
            if (iZzlb != bArr.length - zzin.zzak(iZzlb)) {
                throw zziu.zzpg();
            }
            zziv zzivVarZza = ((zziv) this.value).zza(zzimVarZzj);
            this.zzanj = this.zzanj;
            this.value = zzivVarZza;
            this.zzank = null;
            return;
        }
        if (obj instanceof zziv[]) {
            Collections.singletonList(zzixVar);
            throw new NoSuchMethodError();
        }
        if (obj instanceof zzgh) {
            Collections.singletonList(zzixVar);
            throw new NoSuchMethodError();
        }
        if (obj instanceof zzgh[]) {
            Collections.singletonList(zzixVar);
            throw new NoSuchMethodError();
        }
        Collections.singletonList(zzixVar);
        throw new NoSuchMethodError();
    }

    final int zzja() {
        if (this.value != null) {
            throw new NoSuchMethodError();
        }
        int iZzar = 0;
        for (zzix zzixVar : this.zzank) {
            iZzar += zzin.zzar(zzixVar.tag) + 0 + zzixVar.zzacg.length;
        }
        return iZzar;
    }

    final void zza(zzin zzinVar) throws IOException {
        if (this.value != null) {
            throw new NoSuchMethodError();
        }
        for (zzix zzixVar : this.zzank) {
            zzinVar.zzbl(zzixVar.tag);
            zzinVar.zzm(zzixVar.zzacg);
        }
    }

    public final boolean equals(Object obj) {
        List<zzix> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzis)) {
            return false;
        }
        zzis zzisVar = (zzis) obj;
        if (this.value != null && zzisVar.value != null) {
            zziq<?, ?> zziqVar = this.zzanj;
            if (zziqVar != zzisVar.zzanj) {
                return false;
            }
            if (!zziqVar.zzane.isArray()) {
                return this.value.equals(zzisVar.value);
            }
            Object obj2 = this.value;
            if (obj2 instanceof byte[]) {
                return Arrays.equals((byte[]) obj2, (byte[]) zzisVar.value);
            }
            if (obj2 instanceof int[]) {
                return Arrays.equals((int[]) obj2, (int[]) zzisVar.value);
            }
            if (obj2 instanceof long[]) {
                return Arrays.equals((long[]) obj2, (long[]) zzisVar.value);
            }
            if (obj2 instanceof float[]) {
                return Arrays.equals((float[]) obj2, (float[]) zzisVar.value);
            }
            if (obj2 instanceof double[]) {
                return Arrays.equals((double[]) obj2, (double[]) zzisVar.value);
            }
            if (obj2 instanceof boolean[]) {
                return Arrays.equals((boolean[]) obj2, (boolean[]) zzisVar.value);
            }
            return Arrays.deepEquals((Object[]) obj2, (Object[]) zzisVar.value);
        }
        List<zzix> list2 = this.zzank;
        if (list2 != null && (list = zzisVar.zzank) != null) {
            return list2.equals(list);
        }
        try {
            return Arrays.equals(toByteArray(), zzisVar.toByteArray());
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
        byte[] bArr = new byte[zzja()];
        zza(zzin.zzl(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzpf, reason: merged with bridge method [inline-methods] */
    public final zzis clone() {
        zzis zzisVar = new zzis();
        try {
            zzisVar.zzanj = this.zzanj;
            if (this.zzank == null) {
                zzisVar.zzank = null;
            } else {
                zzisVar.zzank.addAll(this.zzank);
            }
            if (this.value != null) {
                if (this.value instanceof zziv) {
                    zzisVar.value = (zziv) ((zziv) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    zzisVar.value = ((byte[]) this.value).clone();
                } else {
                    int i = 0;
                    if (this.value instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.value;
                        byte[][] bArr2 = new byte[bArr.length][];
                        zzisVar.value = bArr2;
                        while (i < bArr.length) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                            i++;
                        }
                    } else if (this.value instanceof boolean[]) {
                        zzisVar.value = ((boolean[]) this.value).clone();
                    } else if (this.value instanceof int[]) {
                        zzisVar.value = ((int[]) this.value).clone();
                    } else if (this.value instanceof long[]) {
                        zzisVar.value = ((long[]) this.value).clone();
                    } else if (this.value instanceof float[]) {
                        zzisVar.value = ((float[]) this.value).clone();
                    } else if (this.value instanceof double[]) {
                        zzisVar.value = ((double[]) this.value).clone();
                    } else if (this.value instanceof zziv[]) {
                        zziv[] zzivVarArr = (zziv[]) this.value;
                        zziv[] zzivVarArr2 = new zziv[zzivVarArr.length];
                        zzisVar.value = zzivVarArr2;
                        while (i < zzivVarArr.length) {
                            zzivVarArr2[i] = (zziv) zzivVarArr[i].clone();
                            i++;
                        }
                    }
                }
            }
            return zzisVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
