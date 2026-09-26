package androidx.media3.common;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public class ParserException extends IOException {
    public final boolean contentIsMalformed;
    public final int dataType;

    public static ParserException a(@Nullable String str, @Nullable Throwable th) {
        return new ParserException(str, th, true, 1);
    }

    public static ParserException b(@Nullable String str, @Nullable Throwable th) {
        return new ParserException(str, th, true, 0);
    }

    public static ParserException c(@Nullable String str, @Nullable Throwable th) {
        return new ParserException(str, th, true, 4);
    }

    public static ParserException d(@Nullable String str) {
        return new ParserException(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    @Nullable
    public String getMessage() {
        return super.getMessage() + "{contentIsMalformed=" + this.contentIsMalformed + ", dataType=" + this.dataType + "}";
    }

    protected ParserException(@Nullable String str, @Nullable Throwable th, boolean z6, int i10) {
        super(str, th);
        this.contentIsMalformed = z6;
        this.dataType = i10;
    }
}
