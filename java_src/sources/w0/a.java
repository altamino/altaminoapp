package w0;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;
import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
public class a implements k<File, File> {
    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull File file, @NonNull i iVar) {
        return true;
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public v<File> b(@NonNull File file, int i10, int i11, @NonNull i iVar) {
        return new b(file);
    }
}
