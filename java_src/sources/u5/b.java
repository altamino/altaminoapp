package u5;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import org.threeten.bp.zone.c;
import org.threeten.bp.zone.h;
import org.threeten.bp.zone.i;

/* JADX INFO: loaded from: classes10.dex */
final class b extends h {
    private final String assetPath;
    private final Context context;

    @Override // org.threeten.bp.zone.h
    protected void b() {
        InputStream inputStreamOpen = null;
        try {
            try {
                inputStreamOpen = this.context.getAssets().open(this.assetPath);
                c cVar = new c(inputStreamOpen);
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (IOException unused) {
                    }
                }
                i.e(cVar);
            } catch (IOException e) {
                throw new IllegalStateException(this.assetPath + " missing from assets", e);
            }
        } catch (Throwable th) {
            if (inputStreamOpen != null) {
                try {
                    inputStreamOpen.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    b(Context context, String str) {
        this.context = context;
        this.assetPath = str;
    }
}
