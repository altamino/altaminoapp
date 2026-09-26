package androidx.renderscript;

import android.content.res.Resources;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes10.dex */
public class ScriptC extends Script {
    private static final String TAG = "ScriptC";

    protected ScriptC(long j6, RenderScript renderScript) {
        super(j6, renderScript);
    }

    protected ScriptC(RenderScript renderScript, Resources resources, int i10) {
        super(0L, renderScript);
        long jInternalCreate = internalCreate(renderScript, resources, i10);
        if (jInternalCreate == 0) {
            throw new RSRuntimeException("Loading of ScriptC script failed.");
        }
        setID(jInternalCreate);
    }

    private static synchronized long internalCreate(RenderScript renderScript, Resources resources, int i10) {
        byte[] bArr;
        int i11;
        InputStream inputStreamOpenRawResource = resources.openRawResource(i10);
        try {
            try {
                bArr = new byte[1024];
                i11 = 0;
                while (true) {
                    int length = bArr.length - i11;
                    if (length == 0) {
                        int length2 = bArr.length * 2;
                        byte[] bArr2 = new byte[length2];
                        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                        length = length2 - i11;
                        bArr = bArr2;
                    }
                    int i12 = inputStreamOpenRawResource.read(bArr, i11, length);
                    if (i12 <= 0) {
                        inputStreamOpenRawResource.close();
                    } else {
                        i11 += i12;
                    }
                }
            } catch (IOException unused) {
                throw new Resources.NotFoundException();
            }
        } catch (Throwable th) {
            inputStreamOpenRawResource.close();
            throw th;
        }
        return renderScript.nScriptCCreate(resources.getResourceEntryName(i10), renderScript.getApplicationContext().getCacheDir().toString(), bArr, i11);
    }

    private static synchronized long internalStringCreate(RenderScript renderScript, String str, byte[] bArr) {
        return renderScript.nScriptCCreate(str, renderScript.getApplicationContext().getCacheDir().toString(), bArr, bArr.length);
    }

    protected ScriptC(RenderScript renderScript, String str, byte[] bArr, byte[] bArr2) {
        long jInternalStringCreate;
        super(0L, renderScript);
        if (RenderScript.sPointerSize == 4) {
            jInternalStringCreate = internalStringCreate(renderScript, str, bArr);
        } else {
            jInternalStringCreate = internalStringCreate(renderScript, str, bArr2);
        }
        if (jInternalStringCreate != 0) {
            setID(jInternalStringCreate);
            return;
        }
        throw new RSRuntimeException("Loading of ScriptC script failed.");
    }
}
