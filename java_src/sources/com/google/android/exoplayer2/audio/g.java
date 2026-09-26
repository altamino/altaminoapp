package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes10.dex */
public interface g {
    public static final ByteBuffer EMPTY_BUFFER = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    public static final class a {
        public static final a NOT_SET = new a(-1, -1, -1);
        public final int bytesPerFrame;
        public final int channelCount;
        public final int encoding;
        public final int sampleRate;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.sampleRate == aVar.sampleRate && this.channelCount == aVar.channelCount && this.encoding == aVar.encoding;
        }

        public int hashCode() {
            return com.google.common.base.k.b(Integer.valueOf(this.sampleRate), Integer.valueOf(this.channelCount), Integer.valueOf(this.encoding));
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.sampleRate + ", channelCount=" + this.channelCount + ", encoding=" + this.encoding + kotlinx.serialization.json.internal.b.END_LIST;
        }

        public a(int i10, int i11, int i12) {
            int iY;
            this.sampleRate = i10;
            this.channelCount = i11;
            this.encoding = i12;
            if (com.google.android.exoplayer2.util.o0.o0(i12)) {
                iY = com.google.android.exoplayer2.util.o0.Y(i12, i11);
            } else {
                iY = -1;
            }
            this.bytesPerFrame = iY;
        }
    }

    public static final class b extends Exception {
        public b(a aVar) {
            super("Unhandled format: " + aVar);
        }
    }

    a a(a aVar) throws b;

    void flush();

    ByteBuffer getOutput();

    boolean isActive();

    boolean isEnded();

    void queueEndOfStream();

    void queueInput(ByteBuffer byteBuffer);

    void reset();
}
