package androidx.datastore.core;

import e8.a;
import java.io.File;
import java.util.Set;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class SingleProcessDataStore$file$2 extends v implements a<File> {
    final /* synthetic */ SingleProcessDataStore<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SingleProcessDataStore$file$2(SingleProcessDataStore<T> singleProcessDataStore) {
        super(0);
        this.this$0 = singleProcessDataStore;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final File invoke() {
        File file = (File) ((SingleProcessDataStore) this.this$0).produceFile.invoke();
        String it = file.getAbsolutePath();
        SingleProcessDataStore.Companion companion = SingleProcessDataStore.Companion;
        synchronized (companion.b()) {
            if (!(!companion.a().contains(it))) {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + file + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
            Set<String> setA = companion.a();
            t.i(it, "it");
            setA.add(it);
        }
        return file;
    }
}
