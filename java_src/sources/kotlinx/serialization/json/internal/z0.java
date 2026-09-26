package kotlinx.serialization.json.internal;

/* JADX INFO: loaded from: classes11.dex */
public enum z0 {
    OBJ(b.BEGIN_OBJ, b.END_OBJ),
    LIST(b.BEGIN_LIST, b.END_LIST),
    MAP(b.BEGIN_OBJ, b.END_OBJ),
    POLY_OBJ(b.BEGIN_LIST, b.END_LIST);

    public final char begin;
    public final char end;

    z0(char c7, char c10) {
        this.begin = c7;
        this.end = c10;
    }
}
