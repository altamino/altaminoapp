package com.google.android.exoplayer2.decoder;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
public class k extends h {
    public static final int COLORSPACE_BT2020 = 3;
    public static final int COLORSPACE_BT601 = 1;
    public static final int COLORSPACE_BT709 = 2;
    public static final int COLORSPACE_UNKNOWN = 0;
    public int colorspace;

    @Nullable
    public ByteBuffer data;
    public int decoderPrivate;

    @Nullable
    public a2 format;
    public int height;
    public int mode;
    private final h.a<k> owner;

    @Nullable
    public ByteBuffer supplementalData;
    public int width;

    @Nullable
    public ByteBuffer[] yuvPlanes;

    @Nullable
    public int[] yuvStrides;

    @Override // com.google.android.exoplayer2.decoder.h
    public void l() {
        this.owner.a(this);
    }

    public k(h.a<k> aVar) {
        this.owner = aVar;
    }
}
