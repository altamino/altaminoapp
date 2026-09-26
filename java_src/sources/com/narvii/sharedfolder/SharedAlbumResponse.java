package com.narvii.sharedfolder;

import com.narvii.model.SharedAlbum;
import com.narvii.model.api.ObjectResponse;

/* JADX INFO: loaded from: classes10.dex */
public class SharedAlbumResponse extends ObjectResponse<SharedAlbum> {
    public SharedAlbum folder;

    @Override // com.narvii.model.api.ObjectResponse
    public SharedAlbum object() {
        return this.folder;
    }
}
