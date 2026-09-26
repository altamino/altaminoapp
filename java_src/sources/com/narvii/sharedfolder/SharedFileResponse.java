package com.narvii.sharedfolder;

import com.narvii.model.SharedFile;
import com.narvii.model.api.ObjectResponse;

/* JADX INFO: loaded from: classes.dex */
public class SharedFileResponse extends ObjectResponse<SharedFile> {
    public SharedFile file;

    @Override // com.narvii.model.api.ObjectResponse
    public SharedFile object() {
        return this.file;
    }
}
