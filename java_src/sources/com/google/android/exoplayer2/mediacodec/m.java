package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.o0;

/* JADX INFO: loaded from: classes10.dex */
public class m extends com.google.android.exoplayer2.decoder.f {

    @Nullable
    public final n codecInfo;

    @Nullable
    public final String diagnosticInfo;

    public m(Throwable th, @Nullable n nVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("Decoder failed: ");
        sb.append(nVar == null ? null : nVar.name);
        super(sb.toString(), th);
        this.codecInfo = nVar;
        this.diagnosticInfo = o0.SDK_INT >= 21 ? a(th) : null;
    }

    @Nullable
    @RequiresApi
    private static String a(Throwable th) {
        if (th instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        return null;
    }
}
