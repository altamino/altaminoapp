package androidx.datastore;

import android.content.Context;
import e8.a;
import java.io.File;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class DataStoreSingletonDelegate$getValue$1$1 extends v implements a<File> {
    final /* synthetic */ Context $applicationContext;
    final /* synthetic */ DataStoreSingletonDelegate<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreSingletonDelegate$getValue$1$1(Context context, DataStoreSingletonDelegate<T> dataStoreSingletonDelegate) {
        super(0);
        this.$applicationContext = context;
        this.this$0 = dataStoreSingletonDelegate;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final File invoke() {
        Context applicationContext = this.$applicationContext;
        t.i(applicationContext, "applicationContext");
        return DataStoreFile.a(applicationContext, ((DataStoreSingletonDelegate) this.this$0).fileName);
    }
}
