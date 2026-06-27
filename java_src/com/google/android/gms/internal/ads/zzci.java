package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.gms.internal.ads.zzbp;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
final class zzci {
    private static boolean zznj;
    private static MessageDigest zznk;
    private static final Object zznl = new Object();
    private static final Object zznm = new Object();
    static CountDownLatch zznn = new CountDownLatch(1);

    static void zzcb() {
        synchronized (zznm) {
            if (!zznj) {
                zznj = true;
                new Thread(new zzck()).start();
            }
        }
    }

    private static MessageDigest zzcc() throws InterruptedException {
        boolean zAwait;
        MessageDigest messageDigest;
        zzcb();
        try {
            zAwait = zznn.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            zAwait = false;
        }
        if (zAwait && (messageDigest = zznk) != null) {
            return messageDigest;
        }
        return null;
    }

    static String zzj(zzbp.zza zzaVar, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        byte[] bArrZza;
        byte[] byteArray = zzaVar.toByteArray();
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcrm)).booleanValue()) {
            if (zzed.zzya == null) {
                throw new GeneralSecurityException();
            }
            bArrZza = ((zzbp.zzg) zzbp.zzg.zzbk().zzn(zzdmr.zzz(zzed.zzya.zzc(byteArray, str != null ? str.getBytes() : new byte[0]))).zzb(zzbw.TINK_HYBRID).zzaya()).toByteArray();
        } else {
            Vector<byte[]> vectorZza = zza(byteArray, 255);
            if (vectorZza == null || vectorZza.size() == 0) {
                bArrZza = zza(zza(zzbp.zza.zzd.PSN_ENCODE_SIZE_FAIL).toByteArray(), str, true);
            } else {
                zzbp.zzg.zza zzaVarZzbk = zzbp.zzg.zzbk();
                Iterator<byte[]> it = vectorZza.iterator();
                while (it.hasNext()) {
                    zzaVarZzbk.zzn(zzdmr.zzz(zza(it.next(), str, false)));
                }
                zzaVarZzbk.zzo(zzdmr.zzz(zzb(byteArray)));
                bArrZza = ((zzbp.zzg) zzaVarZzbk.zzaya()).toByteArray();
            }
        }
        return zzcg.zza(bArrZza, true);
    }

    private static Vector<byte[]> zza(byte[] bArr, int i) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + 255) - 1) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 255;
            try {
                vector.add(Arrays.copyOfRange(bArr, i3, bArr.length - i3 > 255 ? i3 + 255 : bArr.length));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    private static zzbp.zza zza(zzbp.zza.zzd zzdVar) {
        zzbp.zza.C0007zza c0007zzaZzam = zzbp.zza.zzam();
        c0007zzaZzam.zzau(zzdVar.zzac());
        return (zzbp.zza) c0007zzaZzam.zzaya();
    }

    private static byte[] zza(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] bArrArray;
        int i = z ? 239 : 255;
        if (bArr.length > i) {
            bArr = zza(zzbp.zza.zzd.PSN_ENCODE_SIZE_FAIL).toByteArray();
        }
        if (bArr.length < i) {
            byte[] bArr2 = new byte[i - bArr.length];
            new SecureRandom().nextBytes(bArr2);
            bArrArray = ByteBuffer.allocate(i + 1).put((byte) bArr.length).put(bArr).put(bArr2).array();
        } else {
            bArrArray = ByteBuffer.allocate(i + 1).put((byte) bArr.length).put(bArr).array();
        }
        if (z) {
            bArrArray = ByteBuffer.allocate(256).put(zzb(bArrArray)).put(bArrArray).array();
        }
        byte[] bArr3 = new byte[256];
        for (zzcn zzcnVar : new zzcl().zzvb) {
            zzcnVar.zza(bArrArray, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new zzdmh(str.getBytes(C.UTF8_NAME)).zzy(bArr3);
        }
        return bArr3;
    }

    public static byte[] zzb(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] bArrDigest;
        synchronized (zznl) {
            MessageDigest messageDigestZzcc = zzcc();
            if (messageDigestZzcc == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            messageDigestZzcc.reset();
            messageDigestZzcc.update(bArr);
            bArrDigest = zznk.digest();
        }
        return bArrDigest;
    }

    static String zza(String str, String str2, boolean z) throws UnsupportedEncodingException {
        byte[] bArrZzb = zzb(str, str2, true);
        if (bArrZzb != null) {
            return zzcg.zza(bArrZzb, true);
        }
        return Integer.toString(7);
    }

    private static byte[] zzb(String str, String str2, boolean z) throws UnsupportedEncodingException {
        byte[] bArrZza;
        zzbp.zzc.zza zzaVarZzaw = zzbp.zzc.zzaw();
        try {
            if (str.length() < 3) {
                bArrZza = str.getBytes("ISO-8859-1");
            } else {
                bArrZza = zzcg.zza(str, true);
            }
            zzaVarZzaw.zzc(zzdmr.zzz(bArrZza));
            zzaVarZzaw.zzd(zzdmr.zzz(str2.length() < 3 ? str2.getBytes("ISO-8859-1") : zzcg.zza(str2, true)));
            return ((zzbp.zzc) ((zzdob) zzaVarZzaw.zzaya())).toByteArray();
        } catch (UnsupportedEncodingException | GeneralSecurityException unused) {
            return null;
        }
    }
}
