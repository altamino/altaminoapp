package androidx.media;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcelable;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo
public interface AudioAttributesImpl extends VersionedParcelable {

    public interface Builder {
        @NonNull
        Builder a(int i10);

        @NonNull
        Builder b(int i10);

        @NonNull
        AudioAttributesImpl build();
    }

    int a();

    int b();

    int c();

    @Nullable
    Object d();

    int getContentType();
}
