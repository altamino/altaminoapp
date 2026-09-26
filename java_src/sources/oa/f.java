package oa;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public final class f implements Serializable {
    private final int durationPerFrame;
    private final int frameHeight;
    private final int frameWidth;
    private final int framesPerPageX;
    private final int framesPerPageY;
    private final int totalCount;
    private final List<String> urls;

    public f(List<String> list, int i10, int i11, int i12, int i13, int i14, int i15) {
        this.urls = list;
        this.totalCount = i12;
        this.durationPerFrame = i13;
        this.frameWidth = i10;
        this.frameHeight = i11;
        this.framesPerPageX = i14;
        this.framesPerPageY = i15;
    }
}
