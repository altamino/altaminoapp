package com.google.firebase.appcheck.internal;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.components.y;

/* JADX INFO: loaded from: classes6.dex */
public class p {

    @VisibleForTesting
    static final String PREFS_TEMPLATE = "com.google.firebase.appcheck.store.%s";

    @VisibleForTesting
    static final String TOKEN_KEY = "com.google.firebase.appcheck.APP_CHECK_TOKEN";

    @VisibleForTesting
    static final String TOKEN_TYPE_KEY = "com.google.firebase.appcheck.TOKEN_TYPE";
    private static final com.google.firebase.appcheck.internal.util.b logger = new com.google.firebase.appcheck.internal.util.b(p.class.getSimpleName());
    private y<SharedPreferences> sharedPreferences;

    @VisibleForTesting
    enum b {
        DEFAULT_APP_CHECK_TOKEN,
        UNKNOWN_APP_CHECK_TOKEN
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object c(Context context, String str) {
        return context.getSharedPreferences(str, 0);
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$firebase$appcheck$internal$StorageHelper$TokenType;

        static {
            int[] iArr = new int[b.values().length];
            $SwitchMap$com$google$firebase$appcheck$internal$StorageHelper$TokenType = iArr;
            try {
                iArr[b.DEFAULT_APP_CHECK_TOKEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$firebase$appcheck$internal$StorageHelper$TokenType[b.UNKNOWN_APP_CHECK_TOKEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    void b() {
        this.sharedPreferences.get().edit().remove(TOKEN_KEY).remove(TOKEN_TYPE_KEY).apply();
    }

    @Nullable
    public x3.c d() {
        String string = this.sharedPreferences.get().getString(TOKEN_TYPE_KEY, null);
        String string2 = this.sharedPreferences.get().getString(TOKEN_KEY, null);
        if (string != null && string2 != null) {
            try {
                int i10 = a.$SwitchMap$com$google$firebase$appcheck$internal$StorageHelper$TokenType[b.valueOf(string).ordinal()];
                if (i10 == 1) {
                    return com.google.firebase.appcheck.internal.b.e(string2);
                }
                if (i10 == 2) {
                    return com.google.firebase.appcheck.internal.b.d(string2);
                }
                logger.d("Reached unreachable section in #retrieveAppCheckToken()");
                return null;
            } catch (IllegalArgumentException e) {
                logger.d("Failed to parse TokenType of stored token  with type [" + string + "] with exception: " + e.getMessage());
                b();
            }
        }
        return null;
    }

    public void e(@NonNull x3.c cVar) {
        if (cVar instanceof com.google.firebase.appcheck.internal.b) {
            this.sharedPreferences.get().edit().putString(TOKEN_KEY, ((com.google.firebase.appcheck.internal.b) cVar).i()).putString(TOKEN_TYPE_KEY, b.DEFAULT_APP_CHECK_TOKEN.name()).apply();
        } else {
            this.sharedPreferences.get().edit().putString(TOKEN_KEY, cVar.b()).putString(TOKEN_TYPE_KEY, b.UNKNOWN_APP_CHECK_TOKEN.name()).apply();
        }
    }

    public p(@NonNull final Context context, @NonNull String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotEmpty(str);
        final String str2 = String.format(PREFS_TEMPLATE, str);
        this.sharedPreferences = new y<>(new o4.b() { // from class: com.google.firebase.appcheck.internal.o
            @Override // o4.b
            public final Object get() {
                return p.c(context, str2);
            }
        });
    }
}
