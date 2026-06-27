package com.narvii.sharedfolder;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.SharedAlbum;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class SharedAlbumListResponse extends ListResponse<SharedAlbum> {

    @JsonDeserialize(contentAs = SharedAlbum.class)
    public List<SharedAlbum> folderList;
    public int totalCount = -1;

    @Override // com.narvii.model.api.ListResponse
    public List<SharedAlbum> list() {
        return this.folderList;
    }
}
