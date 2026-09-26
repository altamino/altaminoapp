package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes10.dex */
public class z extends l {
    public static final int TYPE_CLOSE = 3;
    public static final int TYPE_OPEN = 1;
    public static final int TYPE_READ = 2;
    public final o dataSpec;
    public final int type;

    @Deprecated
    public z(o oVar, int i10) {
        this(oVar, 2000, i10);
    }

    private static int b(int i10, int i11) {
        if (i10 == 2000 && i11 == 1) {
            return 2001;
        }
        return i10;
    }

    public z(o oVar, int i10, int i11) {
        super(b(i10, i11));
        this.dataSpec = oVar;
        this.type = i11;
    }

    @Deprecated
    public z(String str, o oVar, int i10) {
        this(str, oVar, 2000, i10);
    }

    public static z c(IOException iOException, o oVar, int i10) {
        int i11;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i11 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i11 = 1004;
        } else if (message != null && com.google.common.base.c.e(message).matches("cleartext.*not permitted.*")) {
            i11 = 2007;
        } else {
            i11 = 2001;
        }
        if (i11 == 2007) {
            return new y(iOException, oVar);
        }
        return new z(iOException, oVar, i11, i10);
    }

    public z(String str, o oVar, int i10, int i11) {
        super(str, b(i10, i11));
        this.dataSpec = oVar;
        this.type = i11;
    }

    @Deprecated
    public z(IOException iOException, o oVar, int i10) {
        this(iOException, oVar, 2000, i10);
    }

    public z(IOException iOException, o oVar, int i10, int i11) {
        super(iOException, b(i10, i11));
        this.dataSpec = oVar;
        this.type = i11;
    }

    @Deprecated
    public z(String str, IOException iOException, o oVar, int i10) {
        this(str, iOException, oVar, 2000, i10);
    }

    public z(String str, @Nullable IOException iOException, o oVar, int i10, int i11) {
        super(str, iOException, b(i10, i11));
        this.dataSpec = oVar;
        this.type = i11;
    }
}
