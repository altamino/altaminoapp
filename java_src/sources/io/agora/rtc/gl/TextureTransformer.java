package io.agora.rtc.gl;

import android.opengl.GLES20;
import android.opengl.Matrix;
import io.agora.rtc.utils.ThreadUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes6.dex */
public class TextureTransformer {
    public static final float[] IDENTITY_MATRIX;
    private static final String TAG = "TextureTransformer";
    private final GlRectDrawer drawer;
    private final ConcurrentLinkedQueue<Integer> freeSlots;
    private final int maxBufferSlot;
    private final GlTextureFrameBuffer[] textureFrameBuffer;
    private final Map<Integer, Integer> textureId2SlotMap;
    private final ThreadUtils.ThreadChecker threadChecker;

    public int copy(int srcTextureId, int format, int width, int height) {
        this.threadChecker.checkIsOnValidThread();
        Integer numPoll = this.freeSlots.poll();
        if (numPoll == null) {
            return -1;
        }
        this.textureFrameBuffer[numPoll.intValue()].setSize(width, height);
        GLES20.glBindFramebuffer(36160, this.textureFrameBuffer[numPoll.intValue()].getFrameBufferId());
        GlUtil.checkNoGLES2Error("TextureHelper.glBindFramebuffer");
        GLES20.glClear(16384);
        if (format == 10) {
            this.drawer.drawRgb(srcTextureId, IDENTITY_MATRIX, width, height, 0, 0, width, height);
        } else {
            if (format != 11) {
                throw new RuntimeException("Unknown texture type.");
            }
            this.drawer.drawOes(srcTextureId, IDENTITY_MATRIX, width, height, 0, 0, width, height);
        }
        GlUtil.checkNoGLES2Error("TextureHelper.draw");
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glFlush();
        int textureId = this.textureFrameBuffer[numPoll.intValue()].getTextureId();
        this.freeSlots.offer(this.textureId2SlotMap.get(Integer.valueOf(textureId)));
        return textureId;
    }

    static {
        float[] fArr = new float[16];
        IDENTITY_MATRIX = fArr;
        Matrix.setIdentityM(fArr, 0);
    }

    public void release() {
        this.threadChecker.checkIsOnValidThread();
        for (int i10 = 0; i10 < this.maxBufferSlot; i10++) {
            this.textureFrameBuffer[i10].release();
        }
        this.drawer.release();
    }

    public TextureTransformer(int slotCount) {
        ThreadUtils.ThreadChecker threadChecker = new ThreadUtils.ThreadChecker();
        this.threadChecker = threadChecker;
        this.textureId2SlotMap = new HashMap();
        this.freeSlots = new ConcurrentLinkedQueue<>();
        threadChecker.checkIsOnValidThread();
        this.maxBufferSlot = Math.max(slotCount, 1);
        this.textureFrameBuffer = new GlTextureFrameBuffer[slotCount];
        for (int i10 = 0; i10 < slotCount; i10++) {
            this.textureFrameBuffer[i10] = new GlTextureFrameBuffer(6408);
            this.textureId2SlotMap.put(Integer.valueOf(this.textureFrameBuffer[i10].getTextureId()), Integer.valueOf(i10));
            this.freeSlots.offer(Integer.valueOf(i10));
        }
        this.drawer = new GlRectDrawer();
    }
}
