package coil.fetch;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import coil.decode.q;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;
import kotlin.jvm.internal.t;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class e implements i {

    @NotNull
    private final Uri data;

    @NotNull
    private final coil.request.m options;

    public static final class a implements i.a<Uri> {
        private final boolean c(Uri uri) {
            return t.e(uri.getScheme(), "content");
        }

        @Override // coil.fetch.i.a
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i a(@NotNull Uri uri, @NotNull coil.request.m mVar, @NotNull coil.e eVar) {
            if (!c(uri)) {
                return null;
            }
            return new e(uri, mVar);
        }
    }

    private final Bundle d() {
        coil.size.c cVarB = this.options.n().b();
        coil.size.c.a aVar = cVarB instanceof coil.size.c.a ? (coil.size.c.a) cVarB : null;
        if (aVar == null) {
            return null;
        }
        int i10 = aVar.px;
        coil.size.c cVarA = this.options.n().a();
        coil.size.c.a aVar2 = cVarA instanceof coil.size.c.a ? (coil.size.c.a) cVarA : null;
        if (aVar2 == null) {
            return null;
        }
        int i11 = aVar2.px;
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("android.content.extra.SIZE", new Point(i10, i11));
        return bundle;
    }

    @Override // coil.fetch.i
    @Nullable
    public Object a(@NotNull kotlin.coroutines.d<? super h> dVar) throws FileNotFoundException {
        InputStream inputStreamOpenInputStream;
        ContentResolver contentResolver = this.options.g().getContentResolver();
        if (b(this.data)) {
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(this.data, "r");
            inputStreamOpenInputStream = assetFileDescriptorOpenAssetFileDescriptor != null ? assetFileDescriptorOpenAssetFileDescriptor.createInputStream() : null;
            if (inputStreamOpenInputStream == null) {
                throw new IllegalStateException(("Unable to find a contact photo associated with '" + this.data + "'.").toString());
            }
        } else if (Build.VERSION.SDK_INT < 29 || !c(this.data)) {
            inputStreamOpenInputStream = contentResolver.openInputStream(this.data);
            if (inputStreamOpenInputStream == null) {
                throw new IllegalStateException(("Unable to open '" + this.data + "'.").toString());
            }
        } else {
            AssetFileDescriptor assetFileDescriptorOpenTypedAssetFile = contentResolver.openTypedAssetFile(this.data, "image/*", d(), null);
            inputStreamOpenInputStream = assetFileDescriptorOpenTypedAssetFile != null ? assetFileDescriptorOpenTypedAssetFile.createInputStream() : null;
            if (inputStreamOpenInputStream == null) {
                throw new IllegalStateException(("Unable to find a music thumbnail associated with '" + this.data + "'.").toString());
            }
        }
        return new m(q.b(Okio.buffer(Okio.source(inputStreamOpenInputStream)), this.options.g(), new coil.decode.e(this.data)), contentResolver.getType(this.data), coil.decode.f.DISK);
    }

    public e(@NotNull Uri uri, @NotNull coil.request.m mVar) {
        this.data = uri;
        this.options = mVar;
    }

    @VisibleForTesting
    public final boolean b(@NotNull Uri uri) {
        if (t.e(uri.getAuthority(), "com.android.contacts") && t.e(uri.getLastPathSegment(), "display_photo")) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    public final boolean c(@NotNull Uri uri) {
        List<String> pathSegments;
        int size;
        if (!t.e(uri.getAuthority(), "media") || (size = (pathSegments = uri.getPathSegments()).size()) < 3 || !t.e(pathSegments.get(size - 3), "audio") || !t.e(pathSegments.get(size - 2), "albums")) {
            return false;
        }
        return true;
    }
}
