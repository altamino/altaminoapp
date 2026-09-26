package z0;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.g;
import com.bumptech.glide.util.j;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements g {
    private final Object object;

    @Override // com.bumptech.glide.load.g
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(this.object.toString().getBytes(g.CHARSET));
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (obj instanceof b) {
            return this.object.equals(((b) obj).object);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.object.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.object + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    public b(@NonNull Object obj) {
        this.object = j.d(obj);
    }
}
