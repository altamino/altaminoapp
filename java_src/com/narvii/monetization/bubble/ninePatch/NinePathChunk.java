package com.narvii.monetization.bubble.ninePatch;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import com.narvii.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class NinePathChunk {
    private static final int DIV_INFO_COUNT = 4;
    public static final int NO_COLOR = 1;
    private static final String TAG = "NinePathChunk";
    public int[] colors;
    public Rect padding = new Rect();
    public ArrayList<Div> xDivs;
    public ArrayList<Div> yDivs;

    public static NinePathChunk createNinePathChunk(Bitmap bitmap, int[] iArr) {
        return createNinePathChunk(bitmap, iArr, new int[0]);
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

    private static int[] checkChunkDivInfo(int i, int i2, int[] iArr) {
        if (iArr == null || iArr.length <= 1 || arraySum(iArr) == 0) {
            Log.d(TAG, "This divs info is empty");
            int i3 = i / 2;
            int i4 = i2 / 2;
            return new int[]{i3, i3 + 1, i4, i4 + 1};
        }
        if (iArr.length > 4) {
            int[] iArr2 = new int[4];
            for (int i5 = 0; i5 < 4; i5++) {
                iArr2[i5] = iArr[i5];
            }
            return iArr2;
        }
        int[] iArr3 = new int[4];
        iArr3[0] = iArr[0] + 1 > i ? iArr[0] - 1 : iArr[0];
        iArr3[1] = iArr[0] + 1 > i ? iArr[0] : iArr[0] + 1;
        iArr3[2] = iArr[1] + 1 > i2 ? iArr[1] - 1 : iArr[1];
        iArr3[3] = iArr[1] + 1 > i2 ? iArr[1] : iArr[1] + 1;
        return iArr3;
    }

    public static int arraySum(int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        return i;
    }

    private static void setupPadding(NinePathChunk ninePathChunk, int i, int i2, int[] iArr) {
        if (iArr == null || iArr.length != 4) {
            ninePathChunk.padding = new Rect();
            ninePathChunk.padding.left = ninePathChunk.xDivs.get(0).start;
            ninePathChunk.padding.right = (i - 2) - ninePathChunk.xDivs.get(0).stop;
            ninePathChunk.padding.top = ninePathChunk.yDivs.get(0).start;
            ninePathChunk.padding.bottom = (i2 - 2) - ninePathChunk.yDivs.get(0).stop;
            return;
        }
        ninePathChunk.padding = new Rect();
        Rect rect = ninePathChunk.padding;
        rect.top = iArr[0];
        rect.left = iArr[1];
        rect.bottom = iArr[2];
        rect.right = iArr[3];
    }

    private static void setupColors(Bitmap bitmap, NinePathChunk ninePathChunk) {
        int width = bitmap.getWidth() - 2;
        int height = bitmap.getHeight() - 2;
        ArrayList<Div> regions = getRegions(ninePathChunk.xDivs, width);
        ArrayList<Div> regions2 = getRegions(ninePathChunk.yDivs, height);
        ninePathChunk.colors = new int[regions.size() * regions2.size()];
        Iterator<Div> it = regions2.iterator();
        int i = 0;
        while (it.hasNext()) {
            Div next = it.next();
            Iterator<Div> it2 = regions.iterator();
            while (it2.hasNext()) {
                Div next2 = it2.next();
                int width2 = next2.start + 1;
                int height2 = next.start + 1;
                if (hasSameColor(bitmap, width2, next2.stop + 1, height2, next.stop + 1)) {
                    if (width2 >= bitmap.getWidth()) {
                        width2 = bitmap.getWidth() - 1;
                    }
                    if (height2 >= bitmap.getHeight()) {
                        height2 = bitmap.getHeight() - 1;
                    }
                    int pixel = bitmap.getPixel(width2, height2);
                    if (isTransparent(pixel)) {
                        pixel = 0;
                    }
                    ninePathChunk.colors[i] = pixel;
                } else {
                    ninePathChunk.colors[i] = 1;
                }
                i++;
            }
        }
    }

    private static ArrayList<Div> getRegions(ArrayList<Div> arrayList, int i) {
        int i2;
        int i3;
        ArrayList<Div> arrayList2 = new ArrayList<>();
        if (arrayList != null && arrayList.size() != 0) {
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                Div div = arrayList.get(i4);
                if (i4 == 0 && (i3 = div.start) != 0) {
                    arrayList2.add(new Div(0, i3 - 1));
                }
                if (i4 > 0) {
                    arrayList2.add(new Div(arrayList.get(i4 - 1).stop, div.start - 1));
                }
                arrayList2.add(new Div(div.start, div.stop - 1));
                if (i4 == arrayList.size() - 1 && (i2 = div.stop) < i) {
                    arrayList2.add(new Div(i2, i - 1));
                }
            }
        }
        return arrayList2;
    }

    private static boolean hasSameColor(Bitmap bitmap, int i, int i2, int i3, int i4) {
        if (i >= bitmap.getWidth()) {
            i = bitmap.getWidth() - 1;
        }
        if (i3 >= bitmap.getHeight()) {
            i3 = bitmap.getHeight() - 1;
        }
        if (i2 >= bitmap.getWidth()) {
            i2 = bitmap.getWidth() - 1;
        }
        if (i4 >= bitmap.getHeight()) {
            i4 = bitmap.getHeight() - 1;
        }
        try {
            int pixel = bitmap.getPixel(i, i3);
            while (i <= i2) {
                for (int i5 = i3; i5 <= i4; i5++) {
                    if (pixel != bitmap.getPixel(i, i5)) {
                        return false;
                    }
                }
                i++;
            }
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    private static void configPathDiv(NinePathChunk ninePathChunk, int i, int i2, int[] iArr) {
        int[] iArrCheckChunkDivInfo = checkChunkDivInfo(i, i2, iArr);
        Div div = new Div();
        div.start = iArrCheckChunkDivInfo[0];
        div.stop = iArrCheckChunkDivInfo[1];
        Div div2 = new Div();
        div2.start = iArrCheckChunkDivInfo[2];
        div2.stop = iArrCheckChunkDivInfo[3];
        ninePathChunk.xDivs = new ArrayList<>();
        ninePathChunk.xDivs.add(div);
        ninePathChunk.yDivs = new ArrayList<>();
        ninePathChunk.yDivs.add(div2);
    }

    public static NinePathChunk deserialisze(byte[] bArr) {
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.nativeOrder());
        NinePathChunk ninePathChunk = new NinePathChunk();
        if (byteBufferOrder.get() == 0) {
            return null;
        }
        byte b = byteBufferOrder.get();
        byte b2 = byteBufferOrder.get();
        ninePathChunk.colors = new int[byteBufferOrder.get()];
        byteBufferOrder.getInt();
        byteBufferOrder.getInt();
        ninePathChunk.padding.left = byteBufferOrder.getInt();
        ninePathChunk.padding.right = byteBufferOrder.getInt();
        ninePathChunk.padding.top = byteBufferOrder.getInt();
        ninePathChunk.padding.bottom = byteBufferOrder.getInt();
        byteBufferOrder.getInt();
        int i = b >> 1;
        ninePathChunk.xDivs = new ArrayList<>(i);
        readDivs(i, byteBufferOrder, ninePathChunk.xDivs);
        int i2 = b2 >> 1;
        ninePathChunk.yDivs = new ArrayList<>(i2);
        readDivs(i2, byteBufferOrder, ninePathChunk.yDivs);
        int i3 = 0;
        while (true) {
            int[] iArr = ninePathChunk.colors;
            if (i3 >= iArr.length) {
                return ninePathChunk;
            }
            iArr[i3] = byteBufferOrder.getInt();
            i3++;
        }
    }

    private static void readDivs(int i, ByteBuffer byteBuffer, ArrayList<Div> arrayList) {
        for (int i2 = 0; i2 < i; i2++) {
            Div div = new Div();
            div.start = byteBuffer.getInt();
            div.stop = byteBuffer.getInt();
            arrayList.add(div);
        }
    }

    public byte[] toBytes() {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate((this.xDivs.size() * 2 * 4) + 32 + (this.yDivs.size() * 2 * 4) + (this.colors.length * 4)).order(ByteOrder.nativeOrder());
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
        Iterator<Div> it = this.xDivs.iterator();
        while (it.hasNext()) {
            Div next = it.next();
            byteBufferOrder.putInt(next.start);
            byteBufferOrder.putInt(next.stop);
        }
        Iterator<Div> it2 = this.yDivs.iterator();
        while (it2.hasNext()) {
            Div next2 = it2.next();
            byteBufferOrder.putInt(next2.start);
            byteBufferOrder.putInt(next2.stop);
        }
        for (int i : this.colors) {
            byteBufferOrder.putInt(i);
        }
        return byteBufferOrder.array();
    }

    private static boolean isTransparent(int i) {
        return Color.alpha(i) == 0;
    }
}
