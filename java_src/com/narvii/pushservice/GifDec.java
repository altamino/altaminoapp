package com.narvii.pushservice;

import android.support.v4.view.ViewCompat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class GifDec {
    protected static final int MAX_STACK_SIZE = 4096;
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OPEN_ERROR = 2;
    protected int[] act;
    protected int bgColor;
    protected int bgIndex;
    protected GifFrame currentFrame;
    protected int frameCount;
    protected int framePointer;
    protected ArrayList<GifFrame> frames;
    protected int[] gct;
    protected boolean gctFlag;
    protected int gctSize;
    protected int height;
    protected boolean lctFlag;
    protected int lctSize;
    protected int pixelAspect;
    protected ByteBuffer rawData;
    protected int status;
    protected int width;
    protected int loopCount = 1;
    protected byte[] block = new byte[256];
    protected int blockSize = 0;

    /* loaded from: classes3.dex */
    private static class GifFrame {
        public int bufferFrameStart;
        public int delay;
        public int dispose;
        public int ih;
        public boolean interlace;
        public int iw;
        public int ix;
        public int iy;
        public int[] lct;
        public int transIndex;
        public boolean transparency;

        private GifFrame() {
        }
    }

    public int read(byte[] bArr, int i, int i2) {
        init();
        if (bArr != null) {
            this.rawData = ByteBuffer.wrap(bArr, i, i2);
            this.rawData.rewind();
            this.rawData.order(ByteOrder.LITTLE_ENDIAN);
            readHeader();
            if (!err()) {
                this.currentFrame = new GifFrame();
                readContents();
                if (this.frameCount <= 0) {
                    this.status = 1;
                }
            }
        } else {
            this.status = 2;
        }
        return this.status;
    }

    protected void decodeBitmapData() {
        GifDec gifDec = this;
        System.currentTimeMillis();
        int i = gifDec.width * gifDec.height;
        int i2 = read();
        int i3 = 1 << i2;
        int i4 = i3 + 1;
        int i5 = i3 + 2;
        int i6 = i2 + 1;
        int i7 = (1 << i6) - 1;
        int i8 = i6;
        int i9 = i5;
        int i10 = i7;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int block = 0;
        int i15 = 0;
        while (true) {
            int i16 = -1;
            while (i11 < i) {
                if (i12 == 0) {
                    if (i13 < i8) {
                        if (block == 0) {
                            block = readBlock();
                            if (block <= 0) {
                                return;
                            } else {
                                i15 = 0;
                            }
                        }
                        i14 += (gifDec.block[i15] & 255) << i13;
                        i13 += 8;
                        i15++;
                        block--;
                    } else {
                        int i17 = i14 & i10;
                        i14 >>= i8;
                        i13 -= i8;
                        if (i17 > i9 || i17 == i4) {
                            return;
                        }
                        if (i17 == i3) {
                            break;
                        }
                        if (i16 == -1) {
                            gifDec = this;
                            i16 = i17;
                        } else {
                            if (i9 >= 4096) {
                                return;
                            }
                            i9++;
                            if ((i9 & i10) == 0 && i9 < 4096) {
                                i8++;
                                i10 += i9;
                            }
                            i16 = i17;
                        }
                    }
                }
                i12--;
                i11++;
                gifDec = this;
            }
            return;
            i8 = i6;
            i9 = i5;
            i10 = i7;
        }
    }

    protected boolean err() {
        return this.status != 0;
    }

    protected void init() {
        this.status = 0;
        this.frameCount = 0;
        this.framePointer = -1;
        this.frames = new ArrayList<>();
        this.gct = null;
    }

    protected int read() {
        try {
            return this.rawData.get() & 255;
        } catch (Exception unused) {
            this.status = 1;
            return 0;
        }
    }

    protected int readBlock() {
        this.blockSize = read();
        int i = 0;
        if (this.blockSize > 0) {
            while (i < this.blockSize) {
                try {
                    int i2 = this.blockSize - i;
                    this.rawData.get(this.block, i, i2);
                    i += i2;
                } catch (Exception unused) {
                    this.status = 1;
                }
            }
        }
        return i;
    }

    protected int[] readColorTable(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.rawData.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                int i5 = bArr[i3] & 255;
                int i6 = i4 + 1;
                int i7 = bArr[i4] & 255;
                int i8 = i6 + 1;
                int i9 = i2 + 1;
                iArr[i2] = (i5 << 16) | ViewCompat.MEASURED_STATE_MASK | (i7 << 8) | (bArr[i6] & 255);
                i3 = i8;
                i2 = i9;
            }
        } catch (BufferUnderflowException unused) {
            this.status = 1;
        }
        return iArr;
    }

    protected void readContents() {
        boolean z = false;
        while (!z && !err()) {
            int i = read();
            if (i == 33) {
                int i2 = read();
                if (i2 == 1) {
                    skip();
                } else if (i2 == 249) {
                    readGraphicControlExt();
                } else if (i2 == 254) {
                    skip();
                } else if (i2 == 255) {
                    readBlock();
                    String str = "";
                    for (int i3 = 0; i3 < 11; i3++) {
                        str = str + ((char) this.block[i3]);
                    }
                    if (str.equals("NETSCAPE2.0")) {
                        readNetscapeExt();
                    } else {
                        skip();
                    }
                } else {
                    skip();
                }
            } else if (i == 44) {
                readBitmap();
                return;
            } else if (i != 59) {
                this.status = 1;
            } else {
                z = true;
            }
        }
    }

    protected void readHeader() {
        String str = "";
        for (int i = 0; i < 6; i++) {
            str = str + ((char) read());
        }
        if (!str.startsWith("GIF")) {
            this.status = 1;
            return;
        }
        readLSD();
        if (!this.gctFlag || err()) {
            return;
        }
        this.gct = readColorTable(this.gctSize);
        this.bgColor = this.gct[this.bgIndex];
    }

    protected void readGraphicControlExt() {
        read();
        int i = read();
        GifFrame gifFrame = this.currentFrame;
        gifFrame.dispose = (i & 28) >> 2;
        if (gifFrame.dispose == 0) {
            gifFrame.dispose = 1;
        }
        this.currentFrame.transparency = (i & 1) != 0;
        this.currentFrame.delay = readShort() * 10;
        this.currentFrame.transIndex = read();
        read();
    }

    protected void readBitmap() {
        this.currentFrame.ix = readShort();
        this.currentFrame.iy = readShort();
        this.currentFrame.iw = readShort();
        this.currentFrame.ih = readShort();
        int i = read();
        this.lctFlag = (i & 128) != 0;
        this.lctSize = (int) Math.pow(2.0d, (i & 7) + 1);
        this.currentFrame.interlace = (i & 64) != 0;
        if (this.lctFlag) {
            this.currentFrame.lct = readColorTable(this.lctSize);
        } else {
            this.currentFrame.lct = null;
        }
        this.currentFrame.bufferFrameStart = this.rawData.position();
        decodeBitmapData();
        skip();
        if (err()) {
            return;
        }
        this.frameCount++;
        this.frames.add(this.currentFrame);
    }

    protected void readLSD() {
        this.width = readShort();
        this.height = readShort();
        int i = read();
        this.gctFlag = (i & 128) != 0;
        this.gctSize = 2 << (i & 7);
        this.bgIndex = read();
        this.pixelAspect = read();
    }

    protected void readNetscapeExt() {
        do {
            readBlock();
            byte[] bArr = this.block;
            if (bArr[0] == 1) {
                this.loopCount = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }

    protected int readShort() {
        return this.rawData.getShort();
    }

    protected void skip() {
        do {
            readBlock();
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }
}
