package com.narvii.util;

import java.util.List;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: KUtils.kt */
/* loaded from: classes3.dex */
public final class KUtils {
    public static final Companion Companion = new Companion(null);

    /* compiled from: KUtils.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final <T> boolean isListSame(List<? extends T> list, List<? extends T> list2, Function2<? super T, ? super T, Boolean> isObjEqual) {
            Intrinsics.checkParameterIsNotNull(isObjEqual, "isObjEqual");
            int size = list != null ? list.size() : 0;
            int size2 = list2 != null ? list2.size() : 0;
            if (size != size2) {
                return false;
            }
            if (size == 0 && size2 == 0) {
                return true;
            }
            for (int i = 0; i < size; i++) {
                if (list == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                T t = list.get(i);
                if (list2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (!isObjEqual.invoke(t, list2.get(i)).booleanValue()) {
                    return false;
                }
            }
            return true;
        }
    }
}
