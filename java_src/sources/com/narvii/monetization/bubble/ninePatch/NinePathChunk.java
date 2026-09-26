package com.narvii.monetization.bubble.ninePatch;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import com.narvii.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes8.dex */
public class NinePathChunk {
    private static final int DIV_INFO_COUNT = 4;
    public static final int NO_COLOR = 1;
    private static final String TAG = "NinePathChunk";
    public int[] colors;
    public Rect padding = new Rect();
    public ArrayList<Div> xDivs;
    public ArrayList<Div> yDivs;

    public static int arraySum(int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        int i10 = 0;
        for (int i11 : iArr) {
            i10 += i11;
        }
        return i10;
    }

    private static int[] checkChunkDivInfo(int i10, int i11, int[] iArr) {
        if (iArr == null || iArr.length <= 1 || arraySum(iArr) == 0) {
            Log.d(TAG, "This divs info is empty");
            int i12 = i10 / 2;
            int i13 = i11 / 2;
            return new int[]{i12, i12 + 1, i13, i13 + 1};
        }
        if (iArr.length > 4) {
            int[] iArr2 = new int[4];
            for (int i14 = 0; i14 < 4; i14++) {
                iArr2[i14] = iArr[i14];
            }
            return iArr2;
        }
        int[] iArr3 = new int[4];
        int i15 = iArr[0];
        if (i15 + 1 > i10) {
            i15--;
        }
        iArr3[0] = i15;
        int i16 = iArr[0];
        if (i16 + 1 <= i10) {
            i16++;
        }
        iArr3[1] = i16;
        int i17 = iArr[1];
        iArr3[2] = i17 + 1 > i11 ? i17 - 1 : i17;
        if (i17 + 1 <= i11) {
            i17++;
        }
        iArr3[3] = i17;
        return iArr3;
    }

    public static NinePathChunk createNinePathChunk(Bitmap bitmap, int[] iArr) {
        return createNinePathChunk(bitmap, iArr, new int[0]);
    }

    private static void readDivs(int i10, ByteBuffer byteBuffer, ArrayList<Div> arrayList) {
        for (int i11 = 0; i11 < i10; i11++) {
            Div div = new Div();
            div.start = byteBuffer.getInt();
            div.stop = byteBuffer.getInt();
            arrayList.add(div);
        }
    }

    private static void setupPadding(NinePathChunk ninePathChunk, int i10, int i11, int[] iArr) {
        if (iArr != null && iArr.length == 4) {
            Rect rect = new Rect();
            ninePathChunk.padding = rect;
            rect.top = iArr[0];
            rect.left = iArr[1];
            rect.bottom = iArr[2];
            rect.right = iArr[3];
            return;
        }
        Rect rect2 = new Rect();
        ninePathChunk.padding = rect2;
        rect2.left = ninePathChunk.xDivs.get(0).start;
        ninePathChunk.padding.right = (i10 - 2) - ninePathChunk.xDivs.get(0).stop;
        ninePathChunk.padding.top = ninePathChunk.yDivs.get(0).start;
        ninePathChunk.padding.bottom = (i11 - 2) - ninePathChunk.yDivs.get(0).stop;
    }

    public static NinePathChunk createNinePathChunk(Bitmap bitmap, int[] iArr, int[] iArr2) {
        NinePathChunk ninePathChunk = new NinePathChunk();
        if (bitmap == null) {
            return ninePathChunk;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        configPathDiv(ninePathChunk, width, height, iArr);
        setupPadding(ninePathChunk, width, height, iArr2);
        setupColors(bitmap, ninePathChunk);
        return ninePathChunk;
    }

    private static ArrayList<Div> getRegions(ArrayList<Div> arrayList, int i10) {
        int i11;
        int i12;
        ArrayList<Div> arrayList2 = new ArrayList<>();
        if (arrayList != null && arrayList.size() != 0) {
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                Div div = arrayList.get(i13);
                if (i13 == 0 && (i12 = div.start) != 0) {
                    arrayList2.add(new Div(0, i12 - 1));
                }
                if (i13 > 0) {
                    arrayList2.add(new Div(arrayList.get(i13 - 1).stop, div.start - 1));
                }
                arrayList2.add(new Div(div.start, div.stop - 1));
                if (i13 == arrayList.size() - 1 && (i11 = div.stop) < i10) {
                    arrayList2.add(new Div(i11, i10 - 1));
                }
            }
        }
        return arrayList2;
    }

    public byte[] toBytes() {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate((this.xDivs.size() * 8) + 32 + (this.yDivs.size() * 8) + (this.colors.length * 4)).order(ByteOrder.nativeOrder());
        Integer num = 1;
        byteBufferOrder.put(num.byteValue());
        byteBufferOrder.put(Integer.valueOf(this.xDivs.size() * 2).byteValue());
        byteBufferOrder.put(Integer.valueOf(this.yDivs.size() * 2).byteValue());
        byteBufferOrder.put(Integer.valueOf(this.colors.length).byteValue());
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        if (this.padding == null) {
            this.padding = new Rect();
        }
        byteBufferOrder.putInt(this.padding.left);
        byteBufferOrder.putInt(this.padding.right);
        byteBufferOrder.putInt(this.padding.top);
        byteBufferOrder.putInt(this.padding.bottom);
        byteBufferOrder.putInt(0);
        for (Div div : this.xDivs) {
            byteBufferOrder.putInt(div.start);
            byteBufferOrder.putInt(div.stop);
        }
        for (Div div2 : this.yDivs) {
            byteBufferOrder.putInt(div2.start);
            byteBufferOrder.putInt(div2.stop);
        }
        for (int i10 : this.colors) {
            byteBufferOrder.putInt(i10);
        }
        return byteBufferOrder.array();
    }

    private static void configPathDiv(NinePathChunk ninePathChunk, int i10, int i11, int[] iArr) {
        int[] iArrCheckChunkDivInfo = checkChunkDivInfo(i10, i11, iArr);
        Div div = new Div();
        div.start = iArrCheckChunkDivInfo[0];
        div.stop = iArrCheckChunkDivInfo[1];
        Div div2 = new Div();
        div2.start = iArrCheckChunkDivInfo[2];
        div2.stop = iArrCheckChunkDivInfo[3];
        ArrayList<Div> arrayList = new ArrayList<>();
        ninePathChunk.xDivs = arrayList;
        arrayList.add(div);
        ArrayList<Div> arrayList2 = new ArrayList<>();
        ninePathChunk.yDivs = arrayList2;
        arrayList2.add(div2);
    }

    public static NinePathChunk deserialisze(byte[] bArr) {
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.nativeOrder());
        NinePathChunk ninePathChunk = new NinePathChunk();
        if (byteBufferOrder.get() == 0) {
            return null;
        }
        byte b7 = byteBufferOrder.get();
        byte b10 = byteBufferOrder.get();
        ninePathChunk.colors = new int[byteBufferOrder.get()];
        byteBufferOrder.getInt();
        byteBufferOrder.getInt();
        ninePathChunk.padding.left = byteBufferOrder.getInt();
        ninePathChunk.padding.right = byteBufferOrder.getInt();
        ninePathChunk.padding.top = byteBufferOrder.getInt();
        ninePathChunk.padding.bottom = byteBufferOrder.getInt();
        byteBufferOrder.getInt();
        int i10 = b7 >> 1;
        ArrayList<Div> arrayList = new ArrayList<>(i10);
        ninePathChunk.xDivs = arrayList;
        readDivs(i10, byteBufferOrder, arrayList);
        int i11 = b10 >> 1;
        ArrayList<Div> arrayList2 = new ArrayList<>(i11);
        ninePathChunk.yDivs = arrayList2;
        readDivs(i11, byteBufferOrder, arrayList2);
        int i12 = 0;
        while (true) {
            int[] iArr = ninePathChunk.colors;
            if (i12 < iArr.length) {
                iArr[i12] = byteBufferOrder.getInt();
                i12++;
            } else {
                return ninePathChunk;
            }
        }
    }

    private static boolean hasSameColor(Bitmap bitmap, int i10, int i11, int i12, int i13) {
        if (i10 >= bitmap.getWidth() && bitmap.getWidth() > 0) {
            i10 = bitmap.getWidth() - 1;
        }
        if (i12 >= bitmap.getHeight() && bitmap.getHeight() > 0) {
            i12 = bitmap.getHeight() - 1;
        }
        if (i11 >= bitmap.getWidth() && bitmap.getWidth() > 0) {
            i11 = bitmap.getWidth() - 1;
        }
        if (i13 >= bitmap.getHeight() && bitmap.getHeight() > 0) {
            i13 = bitmap.getHeight() - 1;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i12 < 0) {
            i12 = 0;
        }
        int pixel = bitmap.getPixel(i10, i12);
        while (i10 <= i11) {
            for (int i14 = i12; i14 <= i13; i14++) {
                if (pixel != bitmap.getPixel(i10, i14)) {
                    return false;
                }
            }
            i10++;
        }
        return true;
    }

    private static boolean isTransparent(int i10) {
        if (Color.alpha(i10) == 0) {
            return true;
        }
        return false;
    }

    private static void setupColors(Bitmap bitmap, NinePathChunk ninePathChunk) {
        int width = bitmap.getWidth() - 2;
        int height = bitmap.getHeight() - 2;
        ArrayList<Div> regions = getRegions(ninePathChunk.xDivs, width);
        ArrayList<Div> regions2 = getRegions(ninePathChunk.yDivs, height);
        ninePathChunk.colors = new int[regions.size() * regions2.size()];
        int i10 = 0;
        for (Div div : regions2) {
            for (Div div2 : regions) {
                int width2 = div2.start + 1;
                int height2 = div.start + 1;
                if (hasSameColor(bitmap, width2, div2.stop + 1, height2, div.stop + 1)) {
                    if (width2 >= bitmap.getWidth() && bitmap.getWidth() > 0) {
                        width2 = bitmap.getWidth() - 1;
                    }
                    if (height2 >= bitmap.getHeight() && bitmap.getHeight() > 0) {
                        height2 = bitmap.getHeight() - 1;
                    }
                    if (width2 < 0) {
                        width2 = 0;
                    }
                    if (height2 < 0) {
                        height2 = 0;
                    }
                    int pixel = bitmap.getPixel(width2, height2);
                    if (isTransparent(pixel)) {
                        pixel = 0;
                    }
                    ninePathChunk.colors[i10] = pixel;
                } else {
                    ninePathChunk.colors[i10] = 1;
                }
                i10++;
            }
        }
    }
}
