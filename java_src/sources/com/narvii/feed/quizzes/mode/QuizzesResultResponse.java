package com.narvii.feed.quizzes.mode;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.CurrentQuizzesResult;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class QuizzesResultResponse extends ListResponse<QuizzesResultWrapper> {
    public boolean quizInBestQuizzes;
    public int quizPlayedTimes;
    public CurrentQuizzesResult quizResultOfCurrentUser;

    @JsonDeserialize(contentAs = QuizzesResultWrapper.class)
    public List<QuizzesResultWrapper> quizResultRankingList;

    @Override // com.narvii.model.api.ListResponse
    public List<QuizzesResultWrapper> list() {
        return this.quizResultRankingList;
    }
}
