package com.meishe.cafconvertor.cafencoder;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.meishe.cafconvertor.NvRational;
import com.meishe.cafconvertor.utils.LittleEndianOutputStream;
import com.meishe.cafconvertor.utils.Utils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class NvCafEncoder {
    private String b;
    private LittleEndianOutputStream c;
    private FileChannel d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int m;
    private int p;
    private NvCafHeaderV1 q;
    private int r;
    private int t;
    private Bitmap u;
    private final String a = "NvCafEncoder";
    private int l = 15;
    private int n = 90;
    private long o = 4096;
    private List<NvCafFrameIndexTableEntryV1> s = new ArrayList();

    public NvCafEncoder(Context context, String str, int i, int i2, int i3, NvRational nvRational, NvRational nvRational2, int i4) throws IOException {
        this.e = 1;
        this.h = 15;
        this.i = 1;
        this.j = 1;
        this.k = 1;
        this.m = 1;
        if (context == null || str == null || str.isEmpty()) {
            return;
        }
        this.b = str;
        this.f = i;
        this.g = i2;
        this.e = i3;
        if (nvRational != null) {
            this.h = nvRational.num;
            this.i = nvRational.den;
        }
        if (nvRational2 != null) {
            this.j = nvRational2.num;
            this.k = nvRational2.den;
        }
        this.m = i4;
        try {
            File file = new File(this.b);
            if (file.exists()) {
                file.delete();
            } else {
                file.createNewFile();
            }
            this.c = new LittleEndianOutputStream(this.b);
            this.d = this.c.getChannel();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.p = Utils.NV_UP_ALIGN_PO2(64, 16);
        this.r = 16;
        try {
            this.d.position(this.p + this.o);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.q = new NvCafHeaderV1();
    }

    public int getFrameCount() {
        return this.l;
    }

    public boolean writeFrameIndexTable() throws IOException {
        FileChannel fileChannel = this.d;
        if (fileChannel == null || this.c == null) {
            Log.e("NvCafEncoder", "writeFrameIndexTable: m_outStream == null");
            return false;
        }
        try {
            fileChannel.position(this.t);
            int size = this.s.size();
            for (int i = 0; i < size; i++) {
                NvCafFrameIndexTableEntryV1 nvCafFrameIndexTableEntryV1 = this.s.get(i);
                this.c.writeLong(nvCafFrameIndexTableEntryV1.a);
                this.c.writeInt(nvCafFrameIndexTableEntryV1.b);
                this.c.writeInt(nvCafFrameIndexTableEntryV1.c);
            }
            this.c.flush();
            this.c.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0089 A[PHI: r3
  0x0089: PHI (r3v8 int) = (r3v7 int), (r3v9 int) binds: [B:13:0x0081, B:15:0x0084] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean writeHeader() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishe.cafconvertor.cafencoder.NvCafEncoder.writeHeader():boolean");
    }

    public boolean writeOneImage(Bitmap bitmap, int i) throws IOException {
        String str;
        if (bitmap == null) {
            str = "writeOneImage: bitmap is null";
        } else {
            FileChannel fileChannel = this.d;
            if (fileChannel != null && this.c != null) {
                this.n = i;
                try {
                    long jPosition = fileChannel.position();
                    if ((15 & jPosition) > 0) {
                        jPosition = Utils.NV_UP_ALIGN_PO2((int) jPosition, 16);
                        this.d.position(jPosition);
                    }
                    int width = bitmap.getWidth();
                    int height = bitmap.getHeight();
                    if (this.f <= 0 || this.g <= 0) {
                        this.f = width;
                        this.g = height;
                    }
                    if (width != this.f || height != this.g) {
                        bitmap = Utils.scaleBitmap(bitmap, this.f, this.g);
                    }
                    this.u = bitmap;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    this.u.compress(Bitmap.CompressFormat.PNG, i, byteArrayOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    this.c.write(byteArray);
                    this.c.flush();
                    NvCafFrameIndexTableEntryV1 nvCafFrameIndexTableEntryV1 = new NvCafFrameIndexTableEntryV1();
                    nvCafFrameIndexTableEntryV1.b = byteArray.length;
                    nvCafFrameIndexTableEntryV1.a = jPosition;
                    nvCafFrameIndexTableEntryV1.c = 0;
                    this.s.add(nvCafFrameIndexTableEntryV1);
                    return true;
                } catch (Exception e) {
                    e.printStackTrace();
                    return false;
                }
            }
            str = "writeOneImage: m_outStream == null";
        }
        Log.e("NvCafEncoder", str);
        return false;
    }
}
