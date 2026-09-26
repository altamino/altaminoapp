package com.narvii.util;

import android.text.TextUtils;
import java.util.regex.Pattern;
import kotlin.jvm.internal.k;
import kotlin.text.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class CheckAminoIdUtils {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int ERROR_EXCEED = 3;
    public static final int ERROR_INVALID = 2;
    public static final int ERROR_SHORT = 4;
    public static final int VALIDATE_PASS = 1;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        private final boolean advancedValidate(String str) {
            return (t.K(str, "-", false, 2, null) || t.K(str, "_", false, 2, null) || u.P(str, "--", false, 2, null) || u.P(str, "__", false, 2, null) || u.P(str, "_-", false, 2, null) || u.P(str, "-_", false, 2, null)) ? false : true;
        }

        public static /* synthetic */ int validateAminoId$default(Companion companion, String str, int i10, int i11, int i12, Object obj) {
            if ((i12 & 2) != 0) {
                i10 = 25;
            }
            if ((i12 & 4) != 0) {
                i11 = 3;
            }
            return companion.validateAminoId(str, i10, i11);
        }

        public final int validateAminoId(@NotNull String id, int i10, int i11) {
            kotlin.jvm.internal.t.j(id, "id");
            if (TextUtils.isEmpty(id)) {
                return 4;
            }
            if (id.length() > i10) {
                return 3;
            }
            if (Pattern.compile("^[a-zA-Z0-9_\\-]+$").matcher(id).matches() && advancedValidate(id)) {
                return id.length() < i11 ? 4 : 1;
            }
            return 2;
        }
    }
}
