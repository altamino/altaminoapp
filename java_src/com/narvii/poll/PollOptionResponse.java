package com.narvii.poll;

import com.narvii.model.PollOption;
import com.narvii.model.api.ObjectResponse;

/* loaded from: classes3.dex */
public class PollOptionResponse extends ObjectResponse<PollOption> {
    public PollOption pollOption;

    @Override // com.narvii.model.api.ObjectResponse
    public PollOption object() {
        return this.pollOption;
    }
}
