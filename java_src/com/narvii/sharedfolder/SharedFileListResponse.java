package com.narvii.sharedfolder;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.SharedFile;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class SharedFileListResponse extends ListResponse<SharedFile> {

    @JsonDeserialize(contentAs = SharedFile.class)
    public List<SharedFile> fileList;
    public int totalCount = -1;

    @Override // com.narvii.model.api.ListResponse
    public List<SharedFile> list() {
        return this.fileList;
    }
}
