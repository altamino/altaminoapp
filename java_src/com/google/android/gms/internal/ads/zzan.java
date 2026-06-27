package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public final class zzan implements zzb {
    private final Map<String, zzao> zzbx;
    private long zzby;
    private final File zzbz;
    private final int zzca;

    public zzan(File file, int i) {
        this.zzbx = new LinkedHashMap(16, 0.75f, true);
        this.zzby = 0L;
        this.zzbz = file;
        this.zzca = i;
    }

    public zzan(File file) {
        this(file, 5242880);
    }

    @Override // com.google.android.gms.internal.ads.zzb
    public final synchronized zzc zza(String str) {
        zzao zzaoVar = this.zzbx.get(str);
        if (zzaoVar == null) {
            return null;
        }
        File fileZze = zze(str);
        try {
            zzap zzapVar = new zzap(new BufferedInputStream(zza(fileZze)), fileZze.length());
            try {
                zzao zzaoVarZzc = zzao.zzc(zzapVar);
                if (!TextUtils.equals(str, zzaoVarZzc.zzcc)) {
                    zzag.d("%s: key=%s, found=%s", fileZze.getAbsolutePath(), str, zzaoVarZzc.zzcc);
                    removeEntry(str);
                    return null;
                }
                byte[] bArrZza = zza(zzapVar, zzapVar.zzo());
                zzc zzcVar = new zzc();
                zzcVar.data = bArrZza;
                zzcVar.zza = zzaoVar.zza;
                zzcVar.zzb = zzaoVar.zzb;
                zzcVar.zzc = zzaoVar.zzc;
                zzcVar.zzd = zzaoVar.zzd;
                zzcVar.zze = zzaoVar.zze;
                List<zzl> list = zzaoVar.zzg;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (zzl zzlVar : list) {
                    treeMap.put(zzlVar.getName(), zzlVar.getValue());
                }
                zzcVar.zzf = treeMap;
                zzcVar.zzg = Collections.unmodifiableList(zzaoVar.zzg);
                return zzcVar;
            } finally {
                zzapVar.close();
            }
        } catch (IOException e) {
            zzag.d("%s: %s", fileZze.getAbsolutePath(), e.toString());
            remove(str);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzb
    public final synchronized void zza() {
        long length;
        zzap zzapVar;
        if (!this.zzbz.exists()) {
            if (!this.zzbz.mkdirs()) {
                zzag.e("Unable to create cache dir %s", this.zzbz.getAbsolutePath());
            }
            return;
        }
        File[] fileArrListFiles = this.zzbz.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            try {
                length = file.length();
                zzapVar = new zzap(new BufferedInputStream(zza(file)), length);
            } catch (IOException unused) {
                file.delete();
            }
            try {
                zzao zzaoVarZzc = zzao.zzc(zzapVar);
                zzaoVarZzc.zzcb = length;
                zza(zzaoVarZzc.zzcc, zzaoVarZzc);
                zzapVar.close();
            } catch (Throwable th) {
                zzapVar.close();
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzb
    public final synchronized void zza(String str, zzc zzcVar) {
        long j;
        if (this.zzby + zzcVar.data.length <= this.zzca || zzcVar.data.length <= this.zzca * 0.9f) {
            File fileZze = zze(str);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileZze));
                zzao zzaoVar = new zzao(str, zzcVar);
                if (!zzaoVar.zza(bufferedOutputStream)) {
                    bufferedOutputStream.close();
                    zzag.d("Failed to write header for %s", fileZze.getAbsolutePath());
                    throw new IOException();
                }
                bufferedOutputStream.write(zzcVar.data);
                bufferedOutputStream.close();
                zzaoVar.zzcb = fileZze.length();
                zza(str, zzaoVar);
                if (this.zzby >= this.zzca) {
                    if (zzag.DEBUG) {
                        zzag.v("Pruning old cache entries.", new Object[0]);
                    }
                    long j2 = this.zzby;
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    Iterator<Map.Entry<String, zzao>> it = this.zzbx.entrySet().iterator();
                    int i = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            j = j2;
                            break;
                        }
                        zzao value = it.next().getValue();
                        if (zze(value.zzcc).delete()) {
                            j = j2;
                            this.zzby -= value.zzcb;
                        } else {
                            j = j2;
                            zzag.d("Could not delete cache entry for key=%s, filename=%s", value.zzcc, zzd(value.zzcc));
                        }
                        it.remove();
                        i++;
                        if (this.zzby < this.zzca * 0.9f) {
                            break;
                        } else {
                            j2 = j;
                        }
                    }
                    if (zzag.DEBUG) {
                        zzag.v("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.zzby - j), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
                    }
                }
            } catch (IOException unused) {
                if (fileZze.delete()) {
                    return;
                }
                zzag.d("Could not clean up file %s", fileZze.getAbsolutePath());
            }
        }
    }

    private final synchronized void remove(String str) {
        boolean zDelete = zze(str).delete();
        removeEntry(str);
        if (!zDelete) {
            zzag.d("Could not delete cache entry for key=%s, filename=%s", str, zzd(str));
        }
    }

    private static String zzd(String str) {
        int length = str.length() / 2;
        String strValueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String strValueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    private final File zze(String str) {
        return new File(this.zzbz, zzd(str));
    }

    private final void zza(String str, zzao zzaoVar) {
        if (!this.zzbx.containsKey(str)) {
            this.zzby += zzaoVar.zzcb;
        } else {
            this.zzby += zzaoVar.zzcb - this.zzbx.get(str).zzcb;
        }
        this.zzbx.put(str, zzaoVar);
    }

    private final void removeEntry(String str) {
        zzao zzaoVarRemove = this.zzbx.remove(str);
        if (zzaoVarRemove != null) {
            this.zzby -= zzaoVarRemove.zzcb;
        }
    }

    private static byte[] zza(zzap zzapVar, long j) throws IOException {
        long jZzo = zzapVar.zzo();
        if (j >= 0 && j <= jZzo) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(zzapVar).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder(73);
        sb.append("streamToBytes length=");
        sb.append(j);
        sb.append(", maxLength=");
        sb.append(jZzo);
        throw new IOException(sb.toString());
    }

    private static InputStream zza(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    private static int zza(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i != -1) {
            return i;
        }
        throw new EOFException();
    }

    static void zza(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write(i >>> 24);
    }

    static int zzb(InputStream inputStream) throws IOException {
        return (zza(inputStream) << 24) | zza(inputStream) | 0 | (zza(inputStream) << 8) | (zza(inputStream) << 16);
    }

    static void zza(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    static long zzc(InputStream inputStream) throws IOException {
        return (zza(inputStream) & 255) | 0 | ((zza(inputStream) & 255) << 8) | ((zza(inputStream) & 255) << 16) | ((zza(inputStream) & 255) << 24) | ((zza(inputStream) & 255) << 32) | ((zza(inputStream) & 255) << 40) | ((zza(inputStream) & 255) << 48) | ((255 & zza(inputStream)) << 56);
    }

    static void zza(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(C.UTF8_NAME);
        zza(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    static String zza(zzap zzapVar) throws IOException {
        return new String(zza(zzapVar, zzc(zzapVar)), C.UTF8_NAME);
    }

    static List<zzl> zzb(zzap zzapVar) throws IOException {
        int iZzb = zzb((InputStream) zzapVar);
        if (iZzb < 0) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("readHeaderList size=");
            sb.append(iZzb);
            throw new IOException(sb.toString());
        }
        List<zzl> listEmptyList = iZzb == 0 ? Collections.emptyList() : new ArrayList<>();
        for (int i = 0; i < iZzb; i++) {
            listEmptyList.add(new zzl(zza(zzapVar).intern(), zza(zzapVar).intern()));
        }
        return listEmptyList;
    }
}
