package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzdpq<T> implements zzdqb<T> {
    private final zzdpk zzhju;
    private final boolean zzhjv;
    private final zzdqt<?, ?> zzhke;
    private final zzdnp<?> zzhkf;

    private zzdpq(zzdqt<?, ?> zzdqtVar, zzdnp<?> zzdnpVar, zzdpk zzdpkVar) {
        this.zzhke = zzdqtVar;
        this.zzhjv = zzdnpVar.zzm(zzdpkVar);
        this.zzhkf = zzdnpVar;
        this.zzhju = zzdpkVar;
    }

    static <T> zzdpq<T> zza(zzdqt<?, ?> zzdqtVar, zzdnp<?> zzdnpVar, zzdpk zzdpkVar) {
        return new zzdpq<>(zzdqtVar, zzdnpVar, zzdpkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqb
    public final T newInstance() {
        return (T) this.zzhju.zzaxu().zzaxz();
    }

    @Override // com.google.android.gms.internal.ads.zzdqb
    public final boolean equals(T t, T t2) {
        if (!this.zzhke.zzao(t).equals(this.zzhke.zzao(t2))) {
            return false;
        }
        if (this.zzhjv) {
            return this.zzhkf.zzy(t).equals(this.zzhkf.zzy(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdqb
    public final int hashCode(T t) {
        int iHashCode = this.zzhke.zzao(t).hashCode();
        return this.zzhjv ? (iHashCode * 53) + this.zzhkf.zzy(t).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzdqb
    public final void zzd(T t, T t2) {
        zzdqd.zza(this.zzhke, t, t2);
        if (this.zzhjv) {
            zzdqd.zza(this.zzhkf, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqb
    public final void zza(T t, zzdro zzdroVar) throws IOException {
        Iterator it = this.zzhkf.zzy(t).iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzdnu zzdnuVar = (zzdnu) entry.getKey();
            if (zzdnuVar.zzaxm() != zzdrn.MESSAGE || zzdnuVar.zzaxn() || zzdnuVar.zzaxo()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof zzdop) {
                zzdroVar.zzb(zzdnuVar.zzac(), ((zzdop) entry).zzayn().zzavf());
            } else {
                zzdroVar.zzb(zzdnuVar.zzac(), entry.getValue());
            }
        }
        zzdqt<?, ?> zzdqtVar = this.zzhke;
        zzdqtVar.zzc(zzdqtVar.zzao(t), zzdroVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00aa A[EDGE_INSN: B:61:0x00aa->B:37:0x00aa BREAK  A[LOOP:1: B:21:0x0064->B:65:0x0064], SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzdqb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.ads.zzdmo r14) throws java.io.IOException {
        /*
            r9 = this;
            r0 = r10
            com.google.android.gms.internal.ads.zzdob r0 = (com.google.android.gms.internal.ads.zzdob) r0
            com.google.android.gms.internal.ads.zzdqu r1 = r0.zzhhd
            com.google.android.gms.internal.ads.zzdqu r2 = com.google.android.gms.internal.ads.zzdqu.zzazz()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.ads.zzdqu r1 = com.google.android.gms.internal.ads.zzdqu.zzbaa()
            r0.zzhhd = r1
        L11:
            com.google.android.gms.internal.ads.zzdob$zzc r10 = (com.google.android.gms.internal.ads.zzdob.zzc) r10
            com.google.android.gms.internal.ads.zzdns<java.lang.Object> r0 = r10.zzhhj
            boolean r0 = r0.isImmutable()
            if (r0 == 0) goto L25
            com.google.android.gms.internal.ads.zzdns<java.lang.Object> r0 = r10.zzhhj
            java.lang.Object r0 = r0.clone()
            com.google.android.gms.internal.ads.zzdns r0 = (com.google.android.gms.internal.ads.zzdns) r0
            r10.zzhhj = r0
        L25:
            com.google.android.gms.internal.ads.zzdns<java.lang.Object> r10 = r10.zzhhj
            r10 = 0
            r0 = r10
        L29:
            if (r12 >= r13) goto Lb5
            int r4 = com.google.android.gms.internal.ads.zzdmn.zza(r11, r12, r14)
            int r2 = r14.zzhcl
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L62
            r12 = r2 & 7
            if (r12 != r3) goto L5d
            com.google.android.gms.internal.ads.zzdnp<?> r12 = r9.zzhkf
            com.google.android.gms.internal.ads.zzdno r0 = r14.zzhco
            com.google.android.gms.internal.ads.zzdpk r3 = r9.zzhju
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.zza(r0, r3, r5)
            r0 = r12
            com.google.android.gms.internal.ads.zzdob$zzd r0 = (com.google.android.gms.internal.ads.zzdob.zzd) r0
            if (r0 != 0) goto L54
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = com.google.android.gms.internal.ads.zzdmn.zza(r2, r3, r4, r5, r6, r7)
            goto L29
        L54:
            com.google.android.gms.internal.ads.zzdpx.zzazg()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L5d:
            int r12 = com.google.android.gms.internal.ads.zzdmn.zza(r2, r11, r4, r13, r14)
            goto L29
        L62:
            r12 = 0
            r2 = r10
        L64:
            if (r4 >= r13) goto Laa
            int r4 = com.google.android.gms.internal.ads.zzdmn.zza(r11, r4, r14)
            int r5 = r14.zzhcl
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L8c
            r8 = 3
            if (r6 == r8) goto L76
            goto La1
        L76:
            if (r0 != 0) goto L83
            if (r7 != r3) goto La1
            int r4 = com.google.android.gms.internal.ads.zzdmn.zze(r11, r4, r14)
            java.lang.Object r2 = r14.zzhcn
            com.google.android.gms.internal.ads.zzdmr r2 = (com.google.android.gms.internal.ads.zzdmr) r2
            goto L64
        L83:
            com.google.android.gms.internal.ads.zzdpx.zzazg()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L8c:
            if (r7 != 0) goto La1
            int r4 = com.google.android.gms.internal.ads.zzdmn.zza(r11, r4, r14)
            int r12 = r14.zzhcl
            com.google.android.gms.internal.ads.zzdnp<?> r0 = r9.zzhkf
            com.google.android.gms.internal.ads.zzdno r5 = r14.zzhco
            com.google.android.gms.internal.ads.zzdpk r6 = r9.zzhju
            java.lang.Object r0 = r0.zza(r5, r6, r12)
            com.google.android.gms.internal.ads.zzdob$zzd r0 = (com.google.android.gms.internal.ads.zzdob.zzd) r0
            goto L64
        La1:
            r6 = 12
            if (r5 == r6) goto Laa
            int r4 = com.google.android.gms.internal.ads.zzdmn.zza(r5, r11, r4, r13, r14)
            goto L64
        Laa:
            if (r2 == 0) goto Lb2
            int r12 = r12 << 3
            r12 = r12 | r3
            r1.zzc(r12, r2)
        Lb2:
            r12 = r4
            goto L29
        Lb5:
            if (r12 != r13) goto Lb8
            return
        Lb8:
            com.google.android.gms.internal.ads.zzdok r10 = com.google.android.gms.internal.ads.zzdok.zzayj()
            goto Lbe
        Lbd:
            throw r10
        Lbe:
            goto Lbd
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpq.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzdmo):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[LOOP:0: B:46:0x000c->B:54:?, LOOP_END, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzdqb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r11, com.google.android.gms.internal.ads.zzdqa r12, com.google.android.gms.internal.ads.zzdno r13) throws java.io.IOException {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.zzdqt<?, ?> r0 = r10.zzhke
            com.google.android.gms.internal.ads.zzdnp<?> r1 = r10.zzhkf
            java.lang.Object r2 = r0.zzap(r11)
            com.google.android.gms.internal.ads.zzdns r3 = r1.zzz(r11)
        Lc:
            int r4 = r12.zzaws()     // Catch: java.lang.Throwable -> L8e
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 != r5) goto L19
            r0.zzg(r11, r2)
            return
        L19:
            int r4 = r12.getTag()     // Catch: java.lang.Throwable -> L8e
            r6 = 11
            if (r4 == r6) goto L3e
            r5 = r4 & 7
            r6 = 2
            if (r5 != r6) goto L39
            com.google.android.gms.internal.ads.zzdpk r5 = r10.zzhju     // Catch: java.lang.Throwable -> L8e
            int r4 = r4 >>> 3
            java.lang.Object r4 = r1.zza(r13, r5, r4)     // Catch: java.lang.Throwable -> L8e
            if (r4 == 0) goto L34
            r1.zza(r12, r4, r13, r3)     // Catch: java.lang.Throwable -> L8e
            goto L82
        L34:
            boolean r4 = r0.zza(r2, r12)     // Catch: java.lang.Throwable -> L8e
            goto L83
        L39:
            boolean r4 = r12.zzawt()     // Catch: java.lang.Throwable -> L8e
            goto L83
        L3e:
            r4 = 0
            r6 = 0
            r7 = r6
        L41:
            int r8 = r12.zzaws()     // Catch: java.lang.Throwable -> L8e
            if (r8 == r5) goto L6f
            int r8 = r12.getTag()     // Catch: java.lang.Throwable -> L8e
            r9 = 16
            if (r8 != r9) goto L5a
            int r4 = r12.zzawd()     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.ads.zzdpk r6 = r10.zzhju     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r6 = r1.zza(r13, r6, r4)     // Catch: java.lang.Throwable -> L8e
            goto L41
        L5a:
            r9 = 26
            if (r8 != r9) goto L69
            if (r6 == 0) goto L64
            r1.zza(r12, r6, r13, r3)     // Catch: java.lang.Throwable -> L8e
            goto L41
        L64:
            com.google.android.gms.internal.ads.zzdmr r7 = r12.zzawc()     // Catch: java.lang.Throwable -> L8e
            goto L41
        L69:
            boolean r8 = r12.zzawt()     // Catch: java.lang.Throwable -> L8e
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
            r0.zzg(r11, r2)
            return
        L89:
            com.google.android.gms.internal.ads.zzdok r12 = com.google.android.gms.internal.ads.zzdok.zzayh()     // Catch: java.lang.Throwable -> L8e
            throw r12     // Catch: java.lang.Throwable -> L8e
        L8e:
            r12 = move-exception
            r0.zzg(r11, r2)
            goto L94
        L93:
            throw r12
        L94:
            goto L93
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpq.zza(java.lang.Object, com.google.android.gms.internal.ads.zzdqa, com.google.android.gms.internal.ads.zzdno):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdqb
    public final void zzaa(T t) {
        this.zzhke.zzaa(t);
        this.zzhkf.zzaa(t);
    }

    @Override // com.google.android.gms.internal.ads.zzdqb
    public final boolean zzam(T t) {
        return this.zzhkf.zzy(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.ads.zzdqb
    public final int zzak(T t) {
        zzdqt<?, ?> zzdqtVar = this.zzhke;
        int iZzaq = zzdqtVar.zzaq(zzdqtVar.zzao(t)) + 0;
        return this.zzhjv ? iZzaq + this.zzhkf.zzy(t).zzaxk() : iZzaq;
    }
}
