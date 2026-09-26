package kotlin.text;

import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class h {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int b(Iterable<? extends f> iterable) {
        Iterator<? extends f> it = iterable.iterator();
        int value = 0;
        while (it.hasNext()) {
            value |= it.next().getValue();
        }
        return value;
    }
}
