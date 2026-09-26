package io.agora.rtc.video;

/* JADX INFO: loaded from: classes6.dex */
public class RendererCommon {

    public interface GlDrawer {
        void drawOes(int oesTextureId, float[] texMatrix, int x6, int y6, int width, int height);

        void drawRgb(int textureId, float[] texMatrix, int x6, int y6, int width, int height);

        void drawYuv(int[] yuvTextures, float[] texMatrix, int x6, int y6, int width, int height);

        void release();
    }
}
