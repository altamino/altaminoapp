package androidx.media3.exoplayer.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.h2;
import androidx.media3.extractor.metadata.MetadataDecoder;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class MetadataRenderer extends BaseRenderer implements Handler.Callback {
    private static final int MSG_INVOKE_RENDERER = 0;
    private static final String TAG = "MetadataRenderer";
    private final MetadataInputBuffer buffer;

    @Nullable
    private MetadataDecoder decoder;
    private final MetadataDecoderFactory decoderFactory;
    private boolean inputStreamEnded;
    private final MetadataOutput output;

    @Nullable
    private final Handler outputHandler;
    private final boolean outputMetadataEarly;
    private boolean outputStreamEnded;
    private long outputStreamOffsetUs;

    @Nullable
    private Metadata pendingMetadata;
    private long subsampleOffsetUs;

    public MetadataRenderer(MetadataOutput metadataOutput, @Nullable Looper looper) {
        this(metadataOutput, looper, MetadataDecoderFactory.DEFAULT);
    }

    private void D(Metadata metadata, List<Metadata.Entry> list) {
        for (int i10 = 0; i10 < metadata.h(); i10++) {
            Format formatR = metadata.g(i10).r();
            if (formatR == null || !this.decoderFactory.a(formatR)) {
                list.add(metadata.g(i10));
            } else {
                MetadataDecoder metadataDecoderB = this.decoderFactory.b(formatR);
                byte[] bArr = (byte[]) Assertions.e(metadata.g(i10).q());
                this.buffer.b();
                this.buffer.o(bArr.length);
                ((ByteBuffer) Util.j(this.buffer.data)).put(bArr);
                this.buffer.p();
                Metadata metadataA = metadataDecoderB.a(this.buffer);
                if (metadataA != null) {
                    D(metadataA, list);
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void r() {
        this.pendingMetadata = null;
        this.decoder = null;
        this.outputStreamOffsetUs = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j6, long j10) {
        boolean zH = true;
        while (zH) {
            I();
            zH = H(j6);
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void t(long j6, boolean z6) {
        this.pendingMetadata = null;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
    }

    public MetadataRenderer(MetadataOutput metadataOutput, @Nullable Looper looper, MetadataDecoderFactory metadataDecoderFactory) {
        this(metadataOutput, looper, metadataDecoderFactory, false);
    }

    private void F(Metadata metadata) {
        Handler handler = this.outputHandler;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            G(metadata);
        }
    }

    private void G(Metadata metadata) {
        this.output.onMetadata(metadata);
    }

    private boolean H(long j6) {
        boolean z6;
        Metadata metadata = this.pendingMetadata;
        if (metadata == null || (!this.outputMetadataEarly && metadata.presentationTimeUs > E(j6))) {
            z6 = false;
        } else {
            F(this.pendingMetadata);
            this.pendingMetadata = null;
            z6 = true;
        }
        if (this.inputStreamEnded && this.pendingMetadata == null) {
            this.outputStreamEnded = true;
        }
        return z6;
    }

    private void I() {
        if (this.inputStreamEnded || this.pendingMetadata != null) {
            return;
        }
        this.buffer.b();
        FormatHolder formatHolderM = m();
        int iA = A(formatHolderM, this.buffer, 0);
        if (iA != -4) {
            if (iA == -5) {
                this.subsampleOffsetUs = ((Format) Assertions.e(formatHolderM.format)).subsampleOffsetUs;
            }
        } else {
            if (this.buffer.h()) {
                this.inputStreamEnded = true;
                return;
            }
            MetadataInputBuffer metadataInputBuffer = this.buffer;
            metadataInputBuffer.subsampleOffsetUs = this.subsampleOffsetUs;
            metadataInputBuffer.p();
            Metadata metadataA = ((MetadataDecoder) Util.j(this.decoder)).a(this.buffer);
            if (metadataA != null) {
                ArrayList arrayList = new ArrayList(metadataA.h());
                D(metadataA, arrayList);
                if (arrayList.isEmpty()) {
                    return;
                }
                this.pendingMetadata = new Metadata(E(this.buffer.timeUs), arrayList);
            }
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int a(Format format) {
        if (this.decoderFactory.a(format)) {
            return h2.c(format.cryptoType == 0 ? 4 : 2);
        }
        return h2.c(0);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        G((Metadata) message.obj);
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void z(Format[] formatArr, long j6, long j10) {
        this.decoder = this.decoderFactory.b(formatArr[0]);
        Metadata metadata = this.pendingMetadata;
        if (metadata != null) {
            this.pendingMetadata = metadata.e((metadata.presentationTimeUs + this.outputStreamOffsetUs) - j10);
        }
        this.outputStreamOffsetUs = j10;
    }

    public MetadataRenderer(MetadataOutput metadataOutput, @Nullable Looper looper, MetadataDecoderFactory metadataDecoderFactory, boolean z6) {
        super(5);
        this.output = (MetadataOutput) Assertions.e(metadataOutput);
        this.outputHandler = looper == null ? null : Util.v(looper, this);
        this.decoderFactory = (MetadataDecoderFactory) Assertions.e(metadataDecoderFactory);
        this.outputMetadataEarly = z6;
        this.buffer = new MetadataInputBuffer();
        this.outputStreamOffsetUs = -9223372036854775807L;
    }

    private long E(long j6) {
        boolean z6;
        boolean z10 = false;
        if (j6 != -9223372036854775807L) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.g(z6);
        if (this.outputStreamOffsetUs != -9223372036854775807L) {
            z10 = true;
        }
        Assertions.g(z10);
        return j6 - this.outputStreamOffsetUs;
    }
}
