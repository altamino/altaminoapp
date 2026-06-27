package com.narvii.util;

import android.text.TextUtils;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: CheckAminoIdUtils.kt */
/* loaded from: classes3.dex */
public final class CheckAminoIdUtils {
    public static final Companion Companion = new Companion(null);
    public static final int ERROR_EXCEED = 3;
    public static final int ERROR_INVALID = 2;
    public static final int ERROR_SHORT = 4;
    public static final int VALIDATE_PASS = 1;

    /* compiled from: CheckAminoIdUtils.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ int validateAminoId$default(Companion companion, String str, int i, int i2, int i3, Object obj) {
            if ((i3 & 2) != 0) {
                i = 25;
            }
            if ((i3 & 4) != 0) {
                i2 = 3;
            }
            return companion.validateAminoId(str, i, i2);
        }

        public final int validateAminoId(String id, int i, int i2) {
            Intrinsics.checkParameterIsNotNull(id, "id");
            if (TextUtils.isEmpty(id)) {
                return 4;
            }
            if (id.length() > i) {
                return 3;
            }
            if (Pattern.compile("^[a-zA-Z0-9_\\-]+$").matcher(id).matches() && advancedValidate(id)) {
                return id.length() < i2 ? 4 : 1;
            }
            return 2;
        }

        private final boolean advancedValidate(String str) {
            return (StringsKt__StringsJVMKt.startsWith$default(str, "-", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(str, "_", false, 2, null) || StringsKt__StringsKt.contains$default(str, "--", false, 2, null) || StringsKt__StringsKt.contains$default(str, "__", false, 2, null) || StringsKt__StringsKt.contains$default(str, "_-", false, 2, null) || StringsKt__StringsKt.contains$default(str, "-_", false, 2, null)) ? false : true;
        }
    }
}
