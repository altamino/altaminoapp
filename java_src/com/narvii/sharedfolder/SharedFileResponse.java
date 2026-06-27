package com.narvii.sharedfolder;

import com.narvii.model.SharedFile;
import com.narvii.model.api.ObjectResponse;

/* loaded from: classes3.dex */
public class SharedFileResponse extends ObjectResponse<SharedFile> {
    public SharedFile file;

    @Override // com.narvii.model.api.ObjectResponse
    public SharedFile object() {
        return this.file;
    }
}
