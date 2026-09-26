package com.google.android.exoplayer2.video.spherical;

import android.opengl.GLES20;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.o;
import com.narvii.editor.cropping.dynamic.filter.BaseFilter;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes10.dex */
final class g {
    private static final String FRAGMENT_SHADER = "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n";
    private static final String TAG = "ProjectionRenderer";
    private static final String VERTEX_SHADER = "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n";

    @Nullable
    private a leftMeshData;
    private int mvpMatrixHandle;
    private int positionHandle;
    private n program;

    @Nullable
    private a rightMeshData;
    private int stereoMode;
    private int texCoordsHandle;
    private int textureHandle;
    private int uTexMatrixHandle;
    private static final float[] TEX_MATRIX_WHOLE = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    private static final float[] TEX_MATRIX_TOP = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};
    private static final float[] TEX_MATRIX_BOTTOM = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};
    private static final float[] TEX_MATRIX_LEFT = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    private static final float[] TEX_MATRIX_RIGHT = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    private static class a {
        private final int drawMode;
        private final FloatBuffer textureBuffer;
        private final FloatBuffer vertexBuffer;
        private final int vertexCount;

        public a(e.b bVar) {
            this.vertexCount = bVar.a();
            this.vertexBuffer = o.e(bVar.vertices);
            this.textureBuffer = o.e(bVar.textureCoords);
            int i10 = bVar.mode;
            if (i10 != 1) {
                if (i10 != 2) {
                    this.drawMode = 4;
                    return;
                } else {
                    this.drawMode = 6;
                    return;
                }
            }
            this.drawMode = 5;
        }
    }

    public static boolean c(e eVar) {
        e.a aVar = eVar.leftMesh;
        e.a aVar2 = eVar.rightMesh;
        return aVar.b() == 1 && aVar.a(0).textureId == 0 && aVar2.b() == 1 && aVar2.a(0).textureId == 0;
    }

    public void a(int i10, float[] fArr, boolean z6) {
        float[] fArr2;
        a aVar = z6 ? this.rightMeshData : this.leftMeshData;
        if (aVar == null) {
            return;
        }
        int i11 = this.stereoMode;
        if (i11 == 1) {
            fArr2 = z6 ? TEX_MATRIX_BOTTOM : TEX_MATRIX_TOP;
        } else if (i11 == 2) {
            fArr2 = z6 ? TEX_MATRIX_RIGHT : TEX_MATRIX_LEFT;
        } else {
            fArr2 = TEX_MATRIX_WHOLE;
        }
        GLES20.glUniformMatrix3fv(this.uTexMatrixHandle, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(this.mvpMatrixHandle, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i10);
        GLES20.glUniform1i(this.textureHandle, 0);
        try {
            o.b();
        } catch (o.a e) {
            Log.e(TAG, "Failed to bind uniforms", e);
        }
        GLES20.glVertexAttribPointer(this.positionHandle, 3, 5126, false, 12, (Buffer) aVar.vertexBuffer);
        try {
            o.b();
        } catch (o.a e2) {
            Log.e(TAG, "Failed to load position data", e2);
        }
        GLES20.glVertexAttribPointer(this.texCoordsHandle, 2, 5126, false, 8, (Buffer) aVar.textureBuffer);
        try {
            o.b();
        } catch (o.a e6) {
            Log.e(TAG, "Failed to load texture data", e6);
        }
        GLES20.glDrawArrays(aVar.drawMode, 0, aVar.vertexCount);
        try {
            o.b();
        } catch (o.a e7) {
            Log.e(TAG, "Failed to render", e7);
        }
    }

    public void b() {
        try {
            n nVar = new n(VERTEX_SHADER, FRAGMENT_SHADER);
            this.program = nVar;
            this.mvpMatrixHandle = nVar.j("uMvpMatrix");
            this.uTexMatrixHandle = this.program.j("uTexMatrix");
            this.positionHandle = this.program.e(BaseFilter.aPosition);
            this.texCoordsHandle = this.program.e("aTexCoords");
            this.textureHandle = this.program.j("uTexture");
        } catch (o.a e) {
            Log.e(TAG, "Failed to initialize the program", e);
        }
    }

    g() {
    }

    public void d(e eVar) {
        if (!c(eVar)) {
            return;
        }
        this.stereoMode = eVar.stereoMode;
        a aVar = new a(eVar.leftMesh.a(0));
        this.leftMeshData = aVar;
        if (!eVar.singleMesh) {
            aVar = new a(eVar.rightMesh.a(0));
        }
        this.rightMeshData = aVar;
    }
}
