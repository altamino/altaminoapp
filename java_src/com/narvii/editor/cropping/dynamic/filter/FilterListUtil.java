package com.narvii.editor.cropping.dynamic.filter;

import android.content.Context;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FilterListUtil.kt */
/* loaded from: classes2.dex */
public final class FilterListUtil {
    public static final Companion Companion = new Companion(null);
    private static final List<String> LIST = CollectionsKt__CollectionsJVMKt.listOf("BaseFilter");

    /* compiled from: FilterListUtil.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List<String> getLIST() {
            return FilterListUtil.LIST;
        }

        public final BaseFilter setFilter(String type, int i, Context mContext) {
            Intrinsics.checkParameterIsNotNull(type, "type");
            Intrinsics.checkParameterIsNotNull(mContext, "mContext");
            if (type.hashCode() == 793213385 && type.equals("BaseFilter")) {
                return new BaseFilter(mContext, i);
            }
            return new BaseFilter(mContext, i);
        }
    }
}
