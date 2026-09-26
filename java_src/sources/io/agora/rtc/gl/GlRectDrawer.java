package io.agora.rtc.gl;

import android.opengl.GLES20;
import java.nio.FloatBuffer;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class GlRectDrawer implements RendererCommon.GlDrawer {
    private static final FloatBuffer FULL_RECTANGLE_BUF = GlUtil.createFloatBuffer(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f});
    private static final FloatBuffer FULL_RECTANGLE_TEX_BUF = GlUtil.createFloatBuffer(new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f});
    private static final String OES_FRAGMENT_SHADER_STRING = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n";
    private static final String RGB_FRAGMENT_SHADER_STRING = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n";
    private static final String VERTEX_SHADER_STRING = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n";
    private static final String YUV_FRAGMENT_SHADER_STRING = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n";
    private FloatBuffer mTexCoordinate = GlUtil.createFloatBuffer(new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f});
    private FloatBuffer mPosCoordinate = GlUtil.createFloatBuffer(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f});
    private final Map<String, Shader> shaders = new IdentityHashMap();

    private float[] ComputePosVertexAttribArray(int bigWidth, int bigHeight, int smallWidth, int smallHeight) {
        float f = bigHeight == smallHeight ? -1.0f : (((bigHeight - smallHeight) * 2.0f) / bigHeight) - 1.0f;
        float f6 = bigWidth == smallWidth ? 1.0f : ((smallWidth * 2.0f) / bigWidth) - 1.0f;
        return new float[]{-1.0f, f, f6, f, -1.0f, 1.0f, f6, 1.0f};
    }

    private float[] ComputeVertexAttribArray(int srcWidth, int srcHeight, int targetWidth, int targetHeight) {
        float f = targetWidth / targetHeight;
        float f6 = srcWidth;
        float f7 = srcHeight;
        if (f6 / f7 >= f) {
            float f10 = ((f6 - (f7 * f)) / 2.0f) / f6;
            float f11 = 1.0f - f10;
            return new float[]{f10, 0.0f, f11, 0.0f, f10, 1.0f, f11, 1.0f};
        }
        float f12 = ((f7 - (f6 / f)) / 2.0f) / f7;
        float f13 = 1.0f - f12;
        return new float[]{0.0f, f12, 1.0f, f12, 0.0f, f13, 1.0f, f13};
    }

    private void prepareShader(String fragmentShader, float[] texMatrix) {
        Shader shader;
        if (this.shaders.containsKey(fragmentShader)) {
            shader = this.shaders.get(fragmentShader);
        } else {
            Shader shader2 = new Shader(fragmentShader);
            this.shaders.put(fragmentShader, shader2);
            shader2.glShader.useProgram();
            if (YUV_FRAGMENT_SHADER_STRING.equals(fragmentShader)) {
                GLES20.glUniform1i(shader2.glShader.getUniformLocation("y_tex"), 0);
                GLES20.glUniform1i(shader2.glShader.getUniformLocation("u_tex"), 1);
                GLES20.glUniform1i(shader2.glShader.getUniformLocation("v_tex"), 2);
            } else if (RGB_FRAGMENT_SHADER_STRING.equals(fragmentShader)) {
                GLES20.glUniform1i(shader2.glShader.getUniformLocation("rgb_tex"), 0);
            } else {
                if (!OES_FRAGMENT_SHADER_STRING.equals(fragmentShader)) {
                    throw new IllegalStateException("Unknown fragment shader: " + fragmentShader);
                }
                GLES20.glUniform1i(shader2.glShader.getUniformLocation("oes_tex"), 0);
            }
            GlUtil.checkNoGLES2Error("Initialize fragment shader uniform values.");
            shader2.glShader.setVertexAttribArray("in_pos", 2, FULL_RECTANGLE_BUF);
            shader2.glShader.setVertexAttribArray("in_tc", 2, FULL_RECTANGLE_TEX_BUF);
            shader = shader2;
        }
        shader.glShader.useProgram();
        GLES20.glUniformMatrix4fv(shader.texMatrixLocation, 1, false, texMatrix, 0);
    }

    @Override // io.agora.rtc.gl.RendererCommon.GlDrawer
    public void drawOes(int oesTextureId, float[] texMatrix, int frameWidth, int frameHeight, int viewportX, int viewportY, int viewportWidth, int viewportHeight) {
        prepareShader(OES_FRAGMENT_SHADER_STRING, texMatrix);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, oesTextureId);
        drawRectangle(viewportX, viewportY, viewportWidth, viewportHeight);
        GLES20.glBindTexture(36197, 0);
    }

    @Override // io.agora.rtc.gl.RendererCommon.GlDrawer
    public void drawRgb(int textureId, float[] texMatrix, int frameWidth, int frameHeight, int viewportX, int viewportY, int viewportWidth, int viewportHeight) {
        prepareShader(RGB_FRAGMENT_SHADER_STRING, texMatrix);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, textureId);
        drawRectangle(viewportX, viewportY, viewportWidth, viewportHeight);
        GLES20.glBindTexture(3553, 0);
    }

    private static class Shader {
        public final GlShader glShader;
        public final int texMatrixLocation;

        public Shader(String fragmentShader) {
            GlShader glShader = new GlShader(GlRectDrawer.VERTEX_SHADER_STRING, fragmentShader);
            this.glShader = glShader;
            this.texMatrixLocation = glShader.getUniformLocation("texMatrix");
        }
    }

    @Override // io.agora.rtc.gl.RendererCommon.GlDrawer
    public void release() {
        Iterator<Shader> it = this.shaders.values().iterator();
        while (it.hasNext()) {
            it.next().glShader.release();
        }
        this.shaders.clear();
    }

    private void drawRectangle(int x6, int y6, int width, int height) {
        GLES20.glViewport(x6, y6, width, height);
        GLES20.glDrawArrays(5, 0, 4);
    }

    @Override // io.agora.rtc.gl.RendererCommon.GlDrawer
    public void drawYuv(int[] yuvTextures, float[] texMatrix, int frameWidth, int frameHeight, int viewportX, int viewportY, int viewportWidth, int viewportHeight) {
        prepareShader(YUV_FRAGMENT_SHADER_STRING, texMatrix);
        for (int i10 = 0; i10 < 3; i10++) {
            GLES20.glActiveTexture(33984 + i10);
            GLES20.glBindTexture(3553, yuvTextures[i10]);
        }
        drawRectangle(viewportX, viewportY, viewportWidth, viewportHeight);
        for (int i11 = 0; i11 < 3; i11++) {
            GLES20.glActiveTexture(i11 + 33984);
            GLES20.glBindTexture(3553, 0);
        }
    }

    public void drawOes(int oesTextureId, float[] texMatrix, int srcWidth, int srcHeight, int x6, int y6, int dstWidth, int dstHeight, int dstWidth_ori, int dstHeight_ori) {
        this.mTexCoordinate = GlUtil.createFloatBuffer(ComputeVertexAttribArray(srcWidth, srcHeight, dstWidth_ori, dstHeight_ori));
        if (dstWidth_ori == dstWidth && dstHeight_ori == dstHeight) {
            this.mPosCoordinate = FULL_RECTANGLE_BUF;
        } else {
            this.mPosCoordinate = GlUtil.createFloatBuffer(ComputePosVertexAttribArray(dstWidth, dstHeight, dstWidth_ori, dstHeight_ori));
        }
        prepareShader(OES_FRAGMENT_SHADER_STRING, texMatrix, this.mTexCoordinate, this.mPosCoordinate);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, oesTextureId);
        drawRectangle(x6, y6, dstWidth, dstHeight);
        GLES20.glBindTexture(36197, 0);
    }

    public void drawRgb(int textureId, float[] texMatrix, int srcWidth, int srcHeight, int x6, int y6, int dstWidth, int dstHeight, int dstWidth_ori, int dstHeight_ori) {
        float[] fArrComputeVertexAttribArray = ComputeVertexAttribArray(srcWidth, srcHeight, dstWidth_ori, dstHeight_ori);
        if (dstWidth_ori == dstWidth && dstHeight_ori == dstHeight) {
            this.mPosCoordinate = FULL_RECTANGLE_BUF;
        } else {
            this.mPosCoordinate = GlUtil.createFloatBuffer(ComputePosVertexAttribArray(dstWidth, dstHeight, dstWidth_ori, dstHeight_ori));
        }
        FloatBuffer floatBufferCreateFloatBuffer = GlUtil.createFloatBuffer(fArrComputeVertexAttribArray);
        this.mTexCoordinate = floatBufferCreateFloatBuffer;
        prepareShader(RGB_FRAGMENT_SHADER_STRING, texMatrix, floatBufferCreateFloatBuffer, this.mPosCoordinate);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, textureId);
        drawRectangle(x6, y6, dstWidth, dstHeight);
        GLES20.glBindTexture(3553, 0);
    }

    private void prepareShader(String fragmentShader, float[] texMatrix, FloatBuffer texCoord, FloatBuffer posCoord) {
        Shader shader;
        if (this.shaders.containsKey(fragmentShader)) {
            shader = this.shaders.get(fragmentShader);
        } else {
            Shader shader2 = new Shader(fragmentShader);
            this.shaders.put(fragmentShader, shader2);
            shader2.glShader.useProgram();
            if (fragmentShader == YUV_FRAGMENT_SHADER_STRING) {
                GLES20.glUniform1i(shader2.glShader.getUniformLocation("y_tex"), 0);
                GLES20.glUniform1i(shader2.glShader.getUniformLocation("u_tex"), 1);
                GLES20.glUniform1i(shader2.glShader.getUniformLocation("v_tex"), 2);
            } else if (fragmentShader == RGB_FRAGMENT_SHADER_STRING) {
                GLES20.glUniform1i(shader2.glShader.getUniformLocation("rgb_tex"), 0);
            } else if (fragmentShader == OES_FRAGMENT_SHADER_STRING) {
                GLES20.glUniform1i(shader2.glShader.getUniformLocation("oes_tex"), 0);
            } else {
                throw new IllegalStateException("Unknown fragment shader: " + fragmentShader);
            }
            GlUtil.checkNoGLES2Error("Initialize fragment shader uniform values.");
            shader = shader2;
        }
        shader.glShader.setVertexAttribArray("in_pos", 2, posCoord);
        shader.glShader.setVertexAttribArray("in_tc", 2, texCoord);
        shader.glShader.useProgram();
        GLES20.glUniformMatrix4fv(shader.texMatrixLocation, 1, false, texMatrix, 0);
    }
}
