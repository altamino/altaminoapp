package g2;

import android.content.Context;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes11.dex */
final class c extends h {
    private final Context applicationContext;
    private final String backendName;
    private final m2.a monotonicClock;
    private final m2.a wallClock;

    @Override // g2.h
    public Context b() {
        return this.applicationContext;
    }

    @Override // g2.h
    @NonNull
    public String c() {
        return this.backendName;
    }

    @Override // g2.h
    public m2.a d() {
        return this.monotonicClock;
    }

    @Override // g2.h
    public m2.a e() {
        return this.wallClock;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.applicationContext.equals(hVar.b()) && this.wallClock.equals(hVar.e()) && this.monotonicClock.equals(hVar.d()) && this.backendName.equals(hVar.c());
    }

    public int hashCode() {
        return ((((((this.applicationContext.hashCode() ^ 1000003) * 1000003) ^ this.wallClock.hashCode()) * 1000003) ^ this.monotonicClock.hashCode()) * 1000003) ^ this.backendName.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.applicationContext + ", wallClock=" + this.wallClock + ", monotonicClock=" + this.monotonicClock + ", backendName=" + this.backendName + "}";
    }

    c(Context context, m2.a aVar, m2.a aVar2, String str) {
        if (context != null) {
            this.applicationContext = context;
            if (aVar != null) {
                this.wallClock = aVar;
                if (aVar2 != null) {
                    this.monotonicClock = aVar2;
                    if (str != null) {
                        this.backendName = str;
                        return;
                    }
                    throw new NullPointerException("Null backendName");
                }
                throw new NullPointerException("Null monotonicClock");
            }
            throw new NullPointerException("Null wallClock");
        }
        throw new NullPointerException("Null applicationContext");
    }
}
