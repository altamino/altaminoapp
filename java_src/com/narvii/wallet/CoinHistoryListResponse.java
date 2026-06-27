package com.narvii.wallet;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class CoinHistoryListResponse extends ListResponse<CoinHistory> {

    @JsonDeserialize(contentAs = CoinHistory.class)
    public ArrayList<CoinHistory> coinHistoryList;

    @Override // com.narvii.model.api.ListResponse
    public List<CoinHistory> list() {
        return this.coinHistoryList;
    }
}
