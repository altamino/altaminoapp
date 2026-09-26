package androidx.media3.exoplayer.video.spherical;

import android.opengl.GLES20;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.media3.common.util.GlProgram;
import androidx.media3.common.util.GlUtil;
import com.narvii.editor.cropping.dynamic.filter.BaseFilter;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes10.dex */
final class ProjectionRenderer {
    private static final String FRAGMENT_SHADER = "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n";
    private static final String TAG = "ProjectionRenderer";
    private static final String VERTEX_SHADER = "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n";

    @Nullable
    private MeshData leftMeshData;
    private int mvpMatrixHandle;
    private int positionHandle;
    private GlProgram program;

    @Nullable
    private MeshData rightMeshData;
    private int stereoMode;
    private int texCoordsHandle;
    private int textureHandle;
    private int uTexMatrixHandle;
    private static final float[] TEX_MATRIX_WHOLE = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    private static final float[] TEX_MATRIX_TOP = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};
    private static final float[] TEX_MATRIX_BOTTOM = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};
    private static final float[] TEX_MATRIX_LEFT = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    private static final float[] TEX_MATRIX_RIGHT = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    private static class MeshData {
        private final int drawMode;
        private final FloatBuffer textureBuffer;
        private final FloatBuffer vertexBuffer;
        private final int vertexCount;

        public MeshData(Projection.SubMesh subMesh) {
            this.vertexCount = subMesh.a();
            this.vertexBuffer = GlUtil.g(subMesh.vertices);
            this.textureBuffer = GlUtil.g(subMesh.textureCoords);
            int i10 = subMesh.mode;
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

    public static boolean c(Projection projection) {
        Projection.Mesh mesh = projection.leftMesh;
        Projection.Mesh mesh2 = projection.rightMesh;
        return mesh.b() == 1 && mesh.a(0).textureId == 0 && mesh2.b() == 1 && mesh2.a(0).textureId == 0;
    }

    public void a(int i10, float[] fArr, boolean z6) {
        float[] fArr2;
        MeshData meshData = z6 ? this.rightMeshData : this.leftMeshData;
        if (meshData == null) {
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
            GlUtil.d();
        } catch (GlUtil.GlException e) {
            Log.e(TAG, "Failed to bind uniforms", e);
        }
        GLES20.glVertexAttribPointer(this.positionHandle, 3, 5126, false, 12, (Buffer) meshData.vertexBuffer);
        try {
            GlUtil.d();
        } catch (GlUtil.GlException e2) {
            Log.e(TAG, "Failed to load position data", e2);
        }
        GLES20.glVertexAttribPointer(this.texCoordsHandle, 2, 5126, false, 8, (Buffer) meshData.textureBuffer);
        try {
            GlUtil.d();
        } catch (GlUtil.GlException e6) {
            Log.e(TAG, "Failed to load texture data", e6);
        }
        GLES20.glDrawArrays(meshData.drawMode, 0, meshData.vertexCount);
        try {
            GlUtil.d();
        } catch (GlUtil.GlException e7) {
            Log.e(TAG, "Failed to render", e7);
        }
    }

    public void b() {
        try {
            GlProgram glProgram = new GlProgram(VERTEX_SHADER, FRAGMENT_SHADER);
            this.program = glProgram;
            this.mvpMatrixHandle = glProgram.j("uMvpMatrix");
            this.uTexMatrixHandle = this.program.j("uTexMatrix");
            this.positionHandle = this.program.e(BaseFilter.aPosition);
            this.texCoordsHandle = this.program.e("aTexCoords");
            this.textureHandle = this.program.j("uTexture");
        } catch (GlUtil.GlException e) {
            Log.e(TAG, "Failed to initialize the program", e);
        }
    }

    ProjectionRenderer() {
    }

    public void d(Projection projection) {
        if (!c(projection)) {
            return;
        }
        this.stereoMode = projection.stereoMode;
        MeshData meshData = new MeshData(projection.leftMesh.a(0));
        this.leftMeshData = meshData;
        if (!projection.singleMesh) {
            meshData = new MeshData(projection.rightMesh.a(0));
        }
        this.rightMeshData = meshData;
    }
}
