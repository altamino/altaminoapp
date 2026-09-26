package h8;

import java.util.Random;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends h8.a {

    @NotNull
    private final a implStorage = new a();

    public static final class a extends ThreadLocal<Random> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Random initialValue() {
            return new Random();
        }

        a() {
        }
    }

    @Override // h8.a
    @NotNull
    public Random j() {
        Random random = this.implStorage.get();
        t.i(random, "get(...)");
        return random;
    }
}
