package com.narvii.poll;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes3.dex */
public class VotersSummaryResponse extends ApiResponse {

    @JsonDeserialize(contentAs = Voter.class)
    public List<Voter> votersSummary;

    public Voter getVoter(String str) {
        List<Voter> list = this.votersSummary;
        if (list == null) {
            return Voter.EMPTY;
        }
        for (Voter voter : list) {
            if (Utils.isEqualsNotNull(str, voter.polloptId)) {
                return voter;
            }
        }
        return Voter.EMPTY;
    }
}
