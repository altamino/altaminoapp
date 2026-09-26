package oa;

import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import qa.y;

/* JADX INFO: loaded from: classes11.dex */
public abstract class g implements Serializable {
    public static final int FORMAT_ID_UNKNOWN = -1;
    public static final String ID_UNKNOWN = " ";
    public static final int ITAG_NOT_AVAILABLE_OR_NOT_APPLICABLE = -1;
    private final String content;
    private final d deliveryMethod;
    private final String id;
    private final boolean isUrl;
    private final String manifestUrl;
    private final x9.m mediaFormat;

    public boolean b(g gVar) {
        x9.m mVar;
        x9.m mVar2;
        return gVar != null && (mVar = this.mediaFormat) != null && (mVar2 = gVar.mediaFormat) != null && mVar.id == mVar2.id && this.deliveryMethod == gVar.deliveryMethod && this.isUrl == gVar.isUrl;
    }

    public String c() {
        return this.content;
    }

    public x9.m d() {
        return this.mediaFormat;
    }

    public int e() {
        x9.m mVar = this.mediaFormat;
        if (mVar != null) {
            return mVar.id;
        }
        return -1;
    }

    public g(String str, String str2, boolean z6, x9.m mVar, d dVar, String str3) {
        this.id = str;
        this.content = str2;
        this.isUrl = z6;
        this.mediaFormat = mVar;
        this.deliveryMethod = dVar;
        this.manifestUrl = str3;
    }

    public static boolean a(g gVar, List<? extends g> list) {
        if (y.n(list)) {
            return false;
        }
        Iterator<? extends g> it = list.iterator();
        while (it.hasNext()) {
            if (gVar.b(it.next())) {
                return true;
            }
        }
        return false;
    }
}
