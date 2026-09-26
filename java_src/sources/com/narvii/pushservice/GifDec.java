package com.narvii.pushservice;

import androidx.core.view.ViewCompat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
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

    public int read(byte[] bArr, int i10, int i11) {
        init();
        if (bArr != null) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i10, i11);
            this.rawData = byteBufferWrap;
            byteBufferWrap.rewind();
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

    protected void readContents() {
        boolean z6 = false;
        while (!z6 && !err()) {
            int i10 = read();
            if (i10 == 33) {
                int i11 = read();
                if (i11 == 1) {
                    skip();
                } else if (i11 == 249) {
                    readGraphicControlExt();
                } else if (i11 == 254) {
                    skip();
                } else if (i11 != 255) {
                    skip();
                } else {
                    readBlock();
                    String str = "";
                    for (int i12 = 0; i12 < 11; i12++) {
                        str = str + ((char) this.block[i12]);
                    }
                    if (str.equals("NETSCAPE2.0")) {
                        readNetscapeExt();
                    } else {
                        skip();
                    }
                }
            } else if (i10 == 44) {
                readBitmap();
                return;
            } else if (i10 != 59) {
                this.status = 1;
            } else {
                z6 = true;
            }
        }
    }

    protected void decodeBitmapData() {
        GifDec gifDec = this;
        System.currentTimeMillis();
        int i10 = gifDec.width * gifDec.height;
        int i11 = read();
        int i12 = 1 << i11;
        int i13 = i12 + 1;
        int i14 = i12 + 2;
        int i15 = i11 + 1;
        int i16 = (1 << i15) - 1;
        int i17 = i15;
        int i18 = i14;
        int i19 = i16;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int block = 0;
        int i24 = 0;
        int i25 = -1;
        while (i20 < i10) {
            if (i21 == 0) {
                if (i22 < i17) {
                    if (block == 0) {
                        block = readBlock();
                        if (block <= 0) {
                            return;
                        } else {
                            i24 = 0;
                        }
                    }
                    i23 += (gifDec.block[i24] & 255) << i22;
                    i22 += 8;
                    i24++;
                    block--;
                } else {
                    int i26 = i23 & i19;
                    i23 >>= i17;
                    i22 -= i17;
                    if (i26 > i18 || i26 == i13) {
                        return;
                    }
                    if (i26 == i12) {
                        i17 = i15;
                        i18 = i14;
                        i19 = i16;
                        i25 = -1;
                    } else if (i25 == -1) {
                        gifDec = this;
                        i25 = i26;
                    } else {
                        if (i18 >= 4096) {
                            return;
                        }
                        i18++;
                        if ((i18 & i19) == 0 && i18 < 4096) {
                            i17++;
                            i19 += i18;
                        }
                        i25 = i26;
                    }
                }
            }
            i21--;
            i20++;
            gifDec = this;
        }
    }

    protected void readBitmap() {
        this.currentFrame.ix = readShort();
        this.currentFrame.iy = readShort();
        this.currentFrame.iw = readShort();
        this.currentFrame.ih = readShort();
        int i10 = read();
        this.lctFlag = (i10 & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (i10 & 7) + 1);
        this.lctSize = iPow;
        GifFrame gifFrame = this.currentFrame;
        gifFrame.interlace = (i10 & 64) != 0;
        if (this.lctFlag) {
            gifFrame.lct = readColorTable(iPow);
        } else {
            gifFrame.lct = null;
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

    protected int[] readColorTable(int i10) {
        byte[] bArr = new byte[i10 * 3];
        int[] iArr = null;
        try {
            this.rawData.get(bArr);
            iArr = new int[256];
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10) {
                int i13 = bArr[i12] & 255;
                int i14 = i12 + 2;
                int i15 = bArr[i12 + 1] & 255;
                i12 += 3;
                int i16 = i11 + 1;
                iArr[i11] = (i15 << 8) | (i13 << 16) | ViewCompat.MEASURED_STATE_MASK | (bArr[i14] & 255);
                i11 = i16;
            }
        } catch (BufferUnderflowException unused) {
            this.status = 1;
        }
        return iArr;
    }

    protected void readHeader() {
        String str = "";
        for (int i10 = 0; i10 < 6; i10++) {
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
        int[] colorTable = readColorTable(this.gctSize);
        this.gct = colorTable;
        this.bgColor = colorTable[this.bgIndex];
    }

    protected int readShort() {
        return this.rawData.getShort();
    }

    protected int readBlock() {
        int i10 = read();
        this.blockSize = i10;
        int i11 = 0;
        if (i10 > 0) {
            while (true) {
                try {
                    int i12 = this.blockSize;
                    if (i11 >= i12) {
                        break;
                    }
                    int i13 = i12 - i11;
                    this.rawData.get(this.block, i11, i13);
                    i11 += i13;
                } catch (Exception unused) {
                    this.status = 1;
                }
            }
        }
        return i11;
    }

    protected void readGraphicControlExt() {
        read();
        int i10 = read();
        GifFrame gifFrame = this.currentFrame;
        int i11 = (i10 & 28) >> 2;
        gifFrame.dispose = i11;
        boolean z6 = true;
        if (i11 == 0) {
            gifFrame.dispose = 1;
        }
        if ((i10 & 1) == 0) {
            z6 = false;
        }
        gifFrame.transparency = z6;
        gifFrame.delay = readShort() * 10;
        this.currentFrame.transIndex = read();
        read();
    }

    protected void readLSD() {
        boolean z6;
        this.width = readShort();
        this.height = readShort();
        int i10 = read();
        if ((i10 & 128) != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.gctFlag = z6;
        this.gctSize = 2 << (i10 & 7);
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

    protected void skip() {
        do {
            readBlock();
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }

    protected int read() {
        try {
            return this.rawData.get() & 255;
        } catch (Exception unused) {
            this.status = 1;
            return 0;
        }
    }
}
