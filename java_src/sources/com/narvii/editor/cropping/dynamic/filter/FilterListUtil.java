package com.narvii.editor.cropping.dynamic.filter;

import android.content.Context;
import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class FilterListUtil {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final List<String> LIST = u.e("BaseFilter");

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final BaseFilter setFilter(@NotNull String type, int i10, @NotNull Context mContext) {
            t.j(type, "type");
            t.j(mContext, "mContext");
            return t.e(type, "BaseFilter") ? new BaseFilter(mContext, i10) : new BaseFilter(mContext, i10);
        }

        @NotNull
        public final List<String> getLIST() {
            return FilterListUtil.LIST;
        }
    }
}
