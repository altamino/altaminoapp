package kotlin.reflect;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import z7.a;
import z7.b;

/* JADX INFO: loaded from: classes5.dex */
public interface KParameter extends KAnnotatedElement {

    public static final class DefaultImpls {
        public static /* synthetic */ void isVararg$annotations() {
        }
    }

    public enum Kind {
        INSTANCE,
        EXTENSION_RECEIVER,
        VALUE;

        private static final /* synthetic */ a $ENTRIES = b.a(values());

        @NotNull
        public static a<Kind> getEntries() {
            return $ENTRIES;
        }
    }

    int getIndex();

    @NotNull
    Kind getKind();

    @Nullable
    String getName();

    @NotNull
    KType getType();

    boolean isOptional();

    boolean isVararg();
}
