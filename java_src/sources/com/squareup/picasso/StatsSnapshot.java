package com.squareup.picasso;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes8.dex */
public class StatsSnapshot {
    public final long averageDownloadSize;
    public final long averageOriginalBitmapSize;
    public final long averageTransformedBitmapSize;
    public final long cacheHits;
    public final long cacheMisses;
    public final int downloadCount;
    public final int maxSize;
    public final int originalBitmapCount;
    public final int size;
    public final long timeStamp;
    public final long totalDownloadSize;
    public final long totalOriginalBitmapSize;
    public final long totalTransformedBitmapSize;
    public final int transformedBitmapCount;

    public StatsSnapshot(int i10, int i11, long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, int i12, int i13, int i14, long j17) {
        this.maxSize = i10;
        this.size = i11;
        this.cacheHits = j6;
        this.cacheMisses = j10;
        this.totalDownloadSize = j11;
        this.totalOriginalBitmapSize = j12;
        this.totalTransformedBitmapSize = j13;
        this.averageDownloadSize = j14;
        this.averageOriginalBitmapSize = j15;
        this.averageTransformedBitmapSize = j16;
        this.downloadCount = i12;
        this.originalBitmapCount = i13;
        this.transformedBitmapCount = i14;
        this.timeStamp = j17;
    }

    public void dump() {
        StringWriter stringWriter = new StringWriter();
        dump(new PrintWriter(stringWriter));
        Log.i("Picasso", stringWriter.toString());
    }

    public String toString() {
        return "StatsSnapshot{maxSize=" + this.maxSize + ", size=" + this.size + ", cacheHits=" + this.cacheHits + ", cacheMisses=" + this.cacheMisses + ", downloadCount=" + this.downloadCount + ", totalDownloadSize=" + this.totalDownloadSize + ", averageDownloadSize=" + this.averageDownloadSize + ", totalOriginalBitmapSize=" + this.totalOriginalBitmapSize + ", totalTransformedBitmapSize=" + this.totalTransformedBitmapSize + ", averageOriginalBitmapSize=" + this.averageOriginalBitmapSize + ", averageTransformedBitmapSize=" + this.averageTransformedBitmapSize + ", originalBitmapCount=" + this.originalBitmapCount + ", transformedBitmapCount=" + this.transformedBitmapCount + ", timeStamp=" + this.timeStamp + b.END_OBJ;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.maxSize);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.size);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((this.size / this.maxSize) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.cacheHits);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.cacheMisses);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.downloadCount);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.totalDownloadSize);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.averageDownloadSize);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.originalBitmapCount);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.totalOriginalBitmapSize);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.transformedBitmapCount);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.totalTransformedBitmapSize);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.averageOriginalBitmapSize);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.averageTransformedBitmapSize);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }
}
