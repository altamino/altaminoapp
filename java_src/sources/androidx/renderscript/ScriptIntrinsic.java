package androidx.renderscript;

/* JADX INFO: loaded from: classes10.dex */
public abstract class ScriptIntrinsic extends Script {
    ScriptIntrinsic(long j6, RenderScript renderScript) {
        super(j6, renderScript);
        if (j6 != 0) {
        } else {
            throw new RSRuntimeException("Loading of ScriptIntrinsic failed.");
        }
    }
}
