package com.narvii.poll;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.PollOption;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class PollOptionListResponse extends ListResponse<PollOption> {

    @JsonDeserialize(contentAs = PollOption.class)
    public List<PollOption> polloptList;

    @Override // com.narvii.model.api.ListResponse
    public List<PollOption> list() {
        return this.polloptList;
    }
}
