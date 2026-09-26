package androidx.constraintlayout.core.parser;

/* JADX INFO: loaded from: classes10.dex */
public class CLNumber extends CLElement {
    float value;

    public CLNumber(char[] cArr) {
        super(cArr);
        this.value = Float.NaN;
    }

    public CLNumber(float f) {
        super(null);
        this.value = f;
    }
}
