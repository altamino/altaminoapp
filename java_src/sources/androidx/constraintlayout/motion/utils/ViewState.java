package androidx.constraintlayout.motion.utils;

/* JADX INFO: loaded from: classes4.dex */
public class ViewState {
    public int bottom;
    public int left;
    public int right;
    public float rotation;
    public int top;

    public int a() {
        return this.bottom - this.top;
    }

    public int b() {
        return this.right - this.left;
    }
}
