package com.narvii.util;

import e8.p;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class KUtils {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final <T> boolean isListSame(@Nullable List<? extends T> list, @Nullable List<? extends T> list2, @NotNull p<? super T, ? super T, Boolean> isObjEqual) {
            t.j(isObjEqual, "isObjEqual");
            int size = list != null ? list.size() : 0;
            int size2 = list2 != null ? list2.size() : 0;
            if (size != size2) {
                return false;
            }
            if (size == 0 && size2 == 0) {
                return true;
            }
            for (int i10 = 0; i10 < size; i10++) {
                t.g(list);
                T t5 = list.get(i10);
                t.g(list2);
                if (!isObjEqual.invoke(t5, list2.get(i10)).booleanValue()) {
                    return false;
                }
            }
            return true;
        }
    }
}
