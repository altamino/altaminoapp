package q7;

import java.nio.charset.MalformedInputException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class c extends MalformedInputException {

    @NotNull
    private final String _message;

    @Override // java.nio.charset.MalformedInputException, java.lang.Throwable
    @Nullable
    public String getMessage() {
        return this._message;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull String message) {
        super(0);
        t.j(message, "message");
        this._message = message;
    }
}
