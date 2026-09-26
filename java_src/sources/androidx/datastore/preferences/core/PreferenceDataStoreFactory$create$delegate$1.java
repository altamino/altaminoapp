package androidx.datastore.preferences.core;

import e8.a;
import java.io.File;
import kotlin.io.n;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class PreferenceDataStoreFactory$create$delegate$1 extends v implements a<File> {
    final /* synthetic */ a<File> $produceFile;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PreferenceDataStoreFactory$create$delegate$1(a<? extends File> aVar) {
        super(0);
        this.$produceFile = aVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final File invoke() {
        File fileInvoke = this.$produceFile.invoke();
        String strR = n.r(fileInvoke);
        PreferencesSerializer preferencesSerializer = PreferencesSerializer.INSTANCE;
        if (t.e(strR, preferencesSerializer.c())) {
            return fileInvoke;
        }
        throw new IllegalStateException(("File extension for file: " + fileInvoke + " does not match required extension for Preferences file: " + preferencesSerializer.c()).toString());
    }
}
