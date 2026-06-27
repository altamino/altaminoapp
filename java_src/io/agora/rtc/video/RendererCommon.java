package io.agora.rtc.video;

/* loaded from: classes4.dex */
public class RendererCommon {

    public interface GlDrawer {
        void drawOes(int i, float[] fArr, int i2, int i3, int i4, int i5);

        void drawRgb(int i, float[] fArr, int i2, int i3, int i4, int i5);

        void drawYuv(int[] iArr, float[] fArr, int i, int i2, int i3, int i4);

        void release();
    }
}
