package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.net.Uri;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.UUID;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

@TargetApi(16)
@Deprecated
/* loaded from: classes2.dex */
public final class zzgl implements zzhn {
    private final Uri uri;
    private final Map<String, String> zzab;
    private final FileDescriptor zzacn;
    private final long zzaco;
    private final long zzacp;
    private MediaExtractor zzacq;
    private zzho[] zzacr;
    private boolean zzacs;
    private int zzact;
    private int[] zzacu;
    private boolean[] zzacv;
    private long zzacw;
    private final Context zzlj;

    public zzgl(Context context, Uri uri, Map<String, String> map, int i) {
        zzkh.checkState(zzkq.SDK_INT >= 16);
        this.zzact = 2;
        this.zzlj = (Context) zzkh.checkNotNull(context);
        this.uri = (Uri) zzkh.checkNotNull(uri);
        this.zzab = null;
        this.zzacn = null;
        this.zzaco = 0L;
        this.zzacp = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final boolean zzdh(long j) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final boolean zzdg(long j) throws IOException {
        if (!this.zzacs) {
            this.zzacq = new MediaExtractor();
            Context context = this.zzlj;
            if (context != null) {
                this.zzacq.setDataSource(context, this.uri, (Map<String, String>) null);
            } else {
                this.zzacq.setDataSource((FileDescriptor) null, 0L, 0L);
            }
            this.zzacu = new int[this.zzacq.getTrackCount()];
            int[] iArr = this.zzacu;
            this.zzacv = new boolean[iArr.length];
            this.zzacr = new zzho[iArr.length];
            for (int i = 0; i < this.zzacu.length; i++) {
                MediaFormat trackFormat = this.zzacq.getTrackFormat(i);
                this.zzacr[i] = new zzho(trackFormat.getString(IMediaFormat.KEY_MIME), trackFormat.containsKey("durationUs") ? trackFormat.getLong("durationUs") : -1L);
            }
            this.zzacs = true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final int getTrackCount() {
        zzkh.checkState(this.zzacs);
        return this.zzacu.length;
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final zzho zzo(int i) {
        zzkh.checkState(this.zzacs);
        return this.zzacr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final void zza(int i, long j) {
        zzkh.checkState(this.zzacs);
        zzkh.checkState(this.zzacu[i] == 0);
        this.zzacu[i] = 1;
        this.zzacq.selectTrack(i);
        zza(j, j != 0);
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final int zza(int i, long j, zzhk zzhkVar, zzhm zzhmVar, boolean z) {
        Map<UUID, byte[]> psshInfo;
        zzkh.checkState(this.zzacs);
        zzkh.checkState(this.zzacu[i] != 0);
        boolean[] zArr = this.zzacv;
        if (zArr[i]) {
            zArr[i] = false;
            return -5;
        }
        if (z) {
            return -2;
        }
        if (this.zzacu[i] != 2) {
            zzhkVar.zzado = zzhj.zza(this.zzacq.getTrackFormat(i));
            zzhx zzhxVar = null;
            if (zzkq.SDK_INT >= 18 && (psshInfo = this.zzacq.getPsshInfo()) != null && !psshInfo.isEmpty()) {
                zzhxVar = new zzhx(MimeTypes.VIDEO_MP4);
                zzhxVar.putAll(psshInfo);
            }
            zzhkVar.zzadp = zzhxVar;
            this.zzacu[i] = 2;
            return -4;
        }
        int sampleTrackIndex = this.zzacq.getSampleTrackIndex();
        if (sampleTrackIndex != i) {
            return sampleTrackIndex < 0 ? -1 : -2;
        }
        ByteBuffer byteBuffer = zzhmVar.zzde;
        if (byteBuffer != null) {
            int iPosition = byteBuffer.position();
            zzhmVar.size = this.zzacq.readSampleData(zzhmVar.zzde, iPosition);
            zzhmVar.zzde.position(iPosition + zzhmVar.size);
        } else {
            zzhmVar.size = 0;
        }
        zzhmVar.zzaga = this.zzacq.getSampleTime();
        zzhmVar.flags = this.zzacq.getSampleFlags() & 3;
        if (zzhmVar.zzeo()) {
            zzhmVar.zzafz.zza(this.zzacq);
        }
        this.zzacw = -1L;
        this.zzacq.advance();
        return -3;
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final void zzp(int i) {
        zzkh.checkState(this.zzacs);
        zzkh.checkState(this.zzacu[i] != 0);
        this.zzacq.unselectTrack(i);
        this.zzacv[i] = false;
        this.zzacu[i] = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final void zzdi(long j) {
        zzkh.checkState(this.zzacs);
        zza(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final long zzdu() {
        zzkh.checkState(this.zzacs);
        long cachedDuration = this.zzacq.getCachedDuration();
        if (cachedDuration == -1) {
            return -1L;
        }
        long sampleTime = this.zzacq.getSampleTime();
        if (sampleTime == -1) {
            return -3L;
        }
        return sampleTime + cachedDuration;
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final void release() {
        MediaExtractor mediaExtractor;
        zzkh.checkState(this.zzact > 0);
        int i = this.zzact - 1;
        this.zzact = i;
        if (i != 0 || (mediaExtractor = this.zzacq) == null) {
            return;
        }
        mediaExtractor.release();
        this.zzacq = null;
    }

    private final void zza(long j, boolean z) {
        if (!z && this.zzacw == j) {
            return;
        }
        this.zzacw = j;
        int i = 0;
        this.zzacq.seekTo(j, 0);
        while (true) {
            int[] iArr = this.zzacu;
            if (i >= iArr.length) {
                return;
            }
            if (iArr[i] != 0) {
                this.zzacv[i] = true;
            }
            i++;
        }
    }
}
