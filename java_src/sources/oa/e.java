package oa;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes11.dex */
public class e implements Serializable {
    public static final e EMPTY_DESCRIPTION = new e("", 3);
    public static final int HTML = 1;
    public static final int MARKDOWN = 2;
    public static final int PLAIN_TEXT = 3;
    private final String content;
    private final int type;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.type == eVar.type && Objects.equals(this.content, eVar.content);
    }

    public int hashCode() {
        return Objects.hash(this.content, Integer.valueOf(this.type));
    }

    public e(String str, int i10) {
        this.type = i10;
        if (str == null) {
            this.content = "";
        } else {
            this.content = str;
        }
    }
}
