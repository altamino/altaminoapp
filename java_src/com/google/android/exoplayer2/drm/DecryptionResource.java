package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.DecryptionResource;

/* loaded from: classes.dex */
public abstract class DecryptionResource<T extends DecryptionResource<T>> {
    private final Owner<T> owner;
    private int referenceCount = 0;

    public interface Owner<T extends DecryptionResource<T>> {
    }

    public DecryptionResource(Owner<T> owner) {
        this.owner = owner;
    }
}
