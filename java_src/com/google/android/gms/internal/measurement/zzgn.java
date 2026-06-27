package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzgn<T> implements zzgy<T> {
    private final zzgh zzaje;
    private final boolean zzajf;
    private final zzhq<?, ?> zzajo;
    private final zzen<?> zzajp;

    private zzgn(zzhq<?, ?> zzhqVar, zzen<?> zzenVar, zzgh zzghVar) {
        this.zzajo = zzhqVar;
        this.zzajf = zzenVar.zze(zzghVar);
        this.zzajp = zzenVar;
        this.zzaje = zzghVar;
    }

    static <T> zzgn<T> zza(zzhq<?, ?> zzhqVar, zzen<?> zzenVar, zzgh zzghVar) {
        return new zzgn<>(zzhqVar, zzenVar, zzghVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final T newInstance() {
        return (T) this.zzaje.zzml().zzmq();
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final boolean equals(T t, T t2) {
        if (!this.zzajo.zzw(t).equals(this.zzajo.zzw(t2))) {
            return false;
        }
        if (this.zzajf) {
            return this.zzajp.zzg(t).equals(this.zzajp.zzg(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final int hashCode(T t) {
        int iHashCode = this.zzajo.zzw(t).hashCode();
        return this.zzajf ? (iHashCode * 53) + this.zzajp.zzg(t).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final void zzc(T t, T t2) {
        zzha.zza(this.zzajo, t, t2);
        if (this.zzajf) {
            zzha.zza(this.zzajp, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final void zza(T t, zzil zzilVar) throws IOException {
        Iterator it = this.zzajp.zzg(t).iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzes zzesVar = (zzes) entry.getKey();
            if (zzesVar.zzmb() != zzik.MESSAGE || zzesVar.zzmc() || zzesVar.zzmd()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof zzfm) {
                zzilVar.zza(zzesVar.zzgp(), (Object) ((zzfm) entry).zznf().zzjv());
            } else {
                zzilVar.zza(zzesVar.zzgp(), entry.getValue());
            }
        }
        zzhq<?, ?> zzhqVar = this.zzajo;
        zzhqVar.zzc(zzhqVar.zzw(t), zzilVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0099 A[EDGE_INSN: B:57:0x0099->B:34:0x0099 BREAK  A[LOOP:1: B:18:0x0053->B:62:0x0053], SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzgy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.measurement.zzdm r14) throws java.io.IOException {
        /*
            r9 = this;
            r0 = r10
            com.google.android.gms.internal.measurement.zzez r0 = (com.google.android.gms.internal.measurement.zzez) r0
            com.google.android.gms.internal.measurement.zzhr r1 = r0.zzagn
            com.google.android.gms.internal.measurement.zzhr r2 = com.google.android.gms.internal.measurement.zzhr.zzor()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.measurement.zzhr r1 = com.google.android.gms.internal.measurement.zzhr.zzos()
            r0.zzagn = r1
        L11:
            com.google.android.gms.internal.measurement.zzez$zzc r10 = (com.google.android.gms.internal.measurement.zzez.zzc) r10
            r10.zzms()
            r10 = 0
            r0 = r10
        L18:
            if (r12 >= r13) goto La4
            int r4 = com.google.android.gms.internal.measurement.zzdl.zza(r11, r12, r14)
            int r2 = r14.zzabs
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L51
            r12 = r2 & 7
            if (r12 != r3) goto L4c
            com.google.android.gms.internal.measurement.zzen<?> r12 = r9.zzajp
            com.google.android.gms.internal.measurement.zzem r0 = r14.zzabv
            com.google.android.gms.internal.measurement.zzgh r3 = r9.zzaje
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.zza(r0, r3, r5)
            r0 = r12
            com.google.android.gms.internal.measurement.zzez$zzd r0 = (com.google.android.gms.internal.measurement.zzez.zzd) r0
            if (r0 != 0) goto L43
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = com.google.android.gms.internal.measurement.zzdl.zza(r2, r3, r4, r5, r6, r7)
            goto L18
        L43:
            com.google.android.gms.internal.measurement.zzgu.zznz()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L4c:
            int r12 = com.google.android.gms.internal.measurement.zzdl.zza(r2, r11, r4, r13, r14)
            goto L18
        L51:
            r12 = 0
            r2 = r10
        L53:
            if (r4 >= r13) goto L99
            int r4 = com.google.android.gms.internal.measurement.zzdl.zza(r11, r4, r14)
            int r5 = r14.zzabs
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L7b
            r8 = 3
            if (r6 == r8) goto L65
            goto L90
        L65:
            if (r0 != 0) goto L72
            if (r7 != r3) goto L90
            int r4 = com.google.android.gms.internal.measurement.zzdl.zze(r11, r4, r14)
            java.lang.Object r2 = r14.zzabu
            com.google.android.gms.internal.measurement.zzdp r2 = (com.google.android.gms.internal.measurement.zzdp) r2
            goto L53
        L72:
            com.google.android.gms.internal.measurement.zzgu.zznz()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L7b:
            if (r7 != 0) goto L90
            int r4 = com.google.android.gms.internal.measurement.zzdl.zza(r11, r4, r14)
            int r12 = r14.zzabs
            com.google.android.gms.internal.measurement.zzen<?> r0 = r9.zzajp
            com.google.android.gms.internal.measurement.zzem r5 = r14.zzabv
            com.google.android.gms.internal.measurement.zzgh r6 = r9.zzaje
            java.lang.Object r0 = r0.zza(r5, r6, r12)
            com.google.android.gms.internal.measurement.zzez$zzd r0 = (com.google.android.gms.internal.measurement.zzez.zzd) r0
            goto L53
        L90:
            r6 = 12
            if (r5 == r6) goto L99
            int r4 = com.google.android.gms.internal.measurement.zzdl.zza(r5, r11, r4, r13, r14)
            goto L53
        L99:
            if (r2 == 0) goto La1
            int r12 = r12 << 3
            r12 = r12 | r3
            r1.zzb(r12, r2)
        La1:
            r12 = r4
            goto L18
        La4:
            if (r12 != r13) goto La7
            return
        La7:
            com.google.android.gms.internal.measurement.zzfh r10 = com.google.android.gms.internal.measurement.zzfh.zznb()
            goto Lad
        Lac:
            throw r10
        Lad:
            goto Lac
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgn.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzdm):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[LOOP:0: B:46:0x000c->B:54:?, LOOP_END, SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzgy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r11, com.google.android.gms.internal.measurement.zzgx r12, com.google.android.gms.internal.measurement.zzem r13) throws java.io.IOException {
        /*
            r10 = this;
            com.google.android.gms.internal.measurement.zzhq<?, ?> r0 = r10.zzajo
            com.google.android.gms.internal.measurement.zzen<?> r1 = r10.zzajp
            java.lang.Object r2 = r0.zzx(r11)
            com.google.android.gms.internal.measurement.zzeq r3 = r1.zzh(r11)
        Lc:
            int r4 = r12.zzlh()     // Catch: java.lang.Throwable -> L8e
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 != r5) goto L19
            r0.zzf(r11, r2)
            return
        L19:
            int r4 = r12.getTag()     // Catch: java.lang.Throwable -> L8e
            r6 = 11
            if (r4 == r6) goto L3e
            r5 = r4 & 7
            r6 = 2
            if (r5 != r6) goto L39
            com.google.android.gms.internal.measurement.zzgh r5 = r10.zzaje     // Catch: java.lang.Throwable -> L8e
            int r4 = r4 >>> 3
            java.lang.Object r4 = r1.zza(r13, r5, r4)     // Catch: java.lang.Throwable -> L8e
            if (r4 == 0) goto L34
            r1.zza(r12, r4, r13, r3)     // Catch: java.lang.Throwable -> L8e
            goto L82
        L34:
            boolean r4 = r0.zza(r2, r12)     // Catch: java.lang.Throwable -> L8e
            goto L83
        L39:
            boolean r4 = r12.zzli()     // Catch: java.lang.Throwable -> L8e
            goto L83
        L3e:
            r4 = 0
            r6 = 0
            r7 = r6
        L41:
            int r8 = r12.zzlh()     // Catch: java.lang.Throwable -> L8e
            if (r8 == r5) goto L6f
            int r8 = r12.getTag()     // Catch: java.lang.Throwable -> L8e
            r9 = 16
            if (r8 != r9) goto L5a
            int r4 = r12.zzks()     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.measurement.zzgh r6 = r10.zzaje     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r6 = r1.zza(r13, r6, r4)     // Catch: java.lang.Throwable -> L8e
            goto L41
        L5a:
            r9 = 26
            if (r8 != r9) goto L69
            if (r6 == 0) goto L64
            r1.zza(r12, r6, r13, r3)     // Catch: java.lang.Throwable -> L8e
            goto L41
        L64:
            com.google.android.gms.internal.measurement.zzdp r7 = r12.zzkr()     // Catch: java.lang.Throwable -> L8e
            goto L41
        L69:
            boolean r8 = r12.zzli()     // Catch: java.lang.Throwable -> L8e
            if (r8 != 0) goto L41
        L6f:
            int r5 = r12.getTag()     // Catch: java.lang.Throwable -> L8e
            r8 = 12
            if (r5 != r8) goto L89
            if (r7 == 0) goto L82
            if (r6 == 0) goto L7f
            r1.zza(r7, r6, r13, r3)     // Catch: java.lang.Throwable -> L8e
            goto L82
        L7f:
            r0.zza(r2, r4, r7)     // Catch: java.lang.Throwable -> L8e
        L82:
            r4 = 1
        L83:
            if (r4 != 0) goto Lc
            r0.zzf(r11, r2)
            return
        L89:
            com.google.android.gms.internal.measurement.zzfh r12 = com.google.android.gms.internal.measurement.zzfh.zzmy()     // Catch: java.lang.Throwable -> L8e
            throw r12     // Catch: java.lang.Throwable -> L8e
        L8e:
            r12 = move-exception
            r0.zzf(r11, r2)
            goto L94
        L93:
            throw r12
        L94:
            goto L93
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgn.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzgx, com.google.android.gms.internal.measurement.zzem):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final void zzi(T t) {
        this.zzajo.zzi(t);
        this.zzajp.zzi(t);
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final boolean zzu(T t) {
        return this.zzajp.zzg(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final int zzs(T t) {
        zzhq<?, ?> zzhqVar = this.zzajo;
        int iZzy = zzhqVar.zzy(zzhqVar.zzw(t)) + 0;
        return this.zzajf ? iZzy + this.zzajp.zzg(t).zzlz() : iZzy;
    }
}
