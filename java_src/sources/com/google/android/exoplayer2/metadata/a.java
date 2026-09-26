package com.google.android.exoplayer2.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.util.o0;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import r2.b;
import r2.c;
import r2.d;
import r2.e;

/* JADX INFO: loaded from: classes9.dex */
public final class a extends f implements Handler.Callback {
    private static final int MSG_INVOKE_RENDERER = 0;
    private static final String TAG = "MetadataRenderer";
    private final d buffer;

    @Nullable
    private b decoder;
    private final c decoderFactory;
    private boolean inputStreamEnded;
    private final e output;

    @Nullable
    private final Handler outputHandler;
    private final boolean outputMetadataEarly;
    private boolean outputStreamEnded;
    private long outputStreamOffsetUs;

    @Nullable
    private Metadata pendingMetadata;
    private long subsampleOffsetUs;

    public a(e eVar, @Nullable Looper looper) {
        this(eVar, looper, c.DEFAULT);
    }

    private void z(Metadata metadata, List<Metadata.Entry> list) {
        for (int i10 = 0; i10 < metadata.h(); i10++) {
            a2 a2VarR = metadata.g(i10).r();
            if (a2VarR == null || !this.decoderFactory.a(a2VarR)) {
                list.add(metadata.g(i10));
            } else {
                b bVarB = this.decoderFactory.b(a2VarR);
                byte[] bArr = (byte[]) com.google.android.exoplayer2.util.a.e(metadata.g(i10).q());
                this.buffer.b();
                this.buffer.n(bArr.length);
                ((ByteBuffer) o0.j(this.buffer.data)).put(bArr);
                this.buffer.o();
                Metadata metadataA = bVarB.a(this.buffer);
                if (metadataA != null) {
                    z(metadataA, list);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.m3, com.google.android.exoplayer2.o3
    public String getName() {
        return TAG;
    }

    @Override // com.google.android.exoplayer2.m3
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // com.google.android.exoplayer2.m3
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.f
    protected void p() {
        this.pendingMetadata = null;
        this.decoder = null;
        this.outputStreamOffsetUs = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.f
    protected void r(long j6, boolean z6) {
        this.pendingMetadata = null;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
    }

    @Override // com.google.android.exoplayer2.m3
    public void render(long j6, long j10) {
        boolean zD = true;
        while (zD) {
            E();
            zD = D(j6);
        }
    }

    public a(e eVar, @Nullable Looper looper, c cVar) {
        this(eVar, looper, cVar, false);
    }

    private void B(Metadata metadata) {
        Handler handler = this.outputHandler;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            C(metadata);
        }
    }

    private void C(Metadata metadata) {
        this.output.n(metadata);
    }

    private boolean D(long j6) {
        boolean z6;
        Metadata metadata = this.pendingMetadata;
        if (metadata == null || (!this.outputMetadataEarly && metadata.presentationTimeUs > A(j6))) {
            z6 = false;
        } else {
            B(this.pendingMetadata);
            this.pendingMetadata = null;
            z6 = true;
        }
        if (this.inputStreamEnded && this.pendingMetadata == null) {
            this.outputStreamEnded = true;
        }
        return z6;
    }

    private void E() {
        if (this.inputStreamEnded || this.pendingMetadata != null) {
            return;
        }
        this.buffer.b();
        b2 b2VarK = k();
        int iW = w(b2VarK, this.buffer, 0);
        if (iW != -4) {
            if (iW == -5) {
                this.subsampleOffsetUs = ((a2) com.google.android.exoplayer2.util.a.e(b2VarK.format)).subsampleOffsetUs;
            }
        } else {
            if (this.buffer.h()) {
                this.inputStreamEnded = true;
                return;
            }
            d dVar = this.buffer;
            dVar.subsampleOffsetUs = this.subsampleOffsetUs;
            dVar.o();
            Metadata metadataA = ((b) o0.j(this.decoder)).a(this.buffer);
            if (metadataA != null) {
                ArrayList arrayList = new ArrayList(metadataA.h());
                z(metadataA, arrayList);
                if (arrayList.isEmpty()) {
                    return;
                }
                this.pendingMetadata = new Metadata(A(this.buffer.timeUs), arrayList);
            }
        }
    }

    @Override // com.google.android.exoplayer2.o3
    public int a(a2 a2Var) {
        if (this.decoderFactory.a(a2Var)) {
            return n3.a(a2Var.cryptoType == 0 ? 4 : 2);
        }
        return n3.a(0);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        C((Metadata) message.obj);
        return true;
    }

    @Override // com.google.android.exoplayer2.f
    protected void v(a2[] a2VarArr, long j6, long j10) {
        this.decoder = this.decoderFactory.b(a2VarArr[0]);
        Metadata metadata = this.pendingMetadata;
        if (metadata != null) {
            this.pendingMetadata = metadata.e((metadata.presentationTimeUs + this.outputStreamOffsetUs) - j10);
        }
        this.outputStreamOffsetUs = j10;
    }

    public a(e eVar, @Nullable Looper looper, c cVar, boolean z6) {
        super(5);
        this.output = (e) com.google.android.exoplayer2.util.a.e(eVar);
        this.outputHandler = looper == null ? null : o0.t(looper, this);
        this.decoderFactory = (c) com.google.android.exoplayer2.util.a.e(cVar);
        this.outputMetadataEarly = z6;
        this.buffer = new d();
        this.outputStreamOffsetUs = -9223372036854775807L;
    }

    private long A(long j6) {
        boolean z6;
        boolean z10 = false;
        if (j6 != -9223372036854775807L) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.g(z6);
        if (this.outputStreamOffsetUs != -9223372036854775807L) {
            z10 = true;
        }
        com.google.android.exoplayer2.util.a.g(z10);
        return j6 - this.outputStreamOffsetUs;
    }
}
