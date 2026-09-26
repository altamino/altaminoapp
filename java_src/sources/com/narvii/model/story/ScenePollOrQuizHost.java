package com.narvii.model.story;

import com.narvii.model.PollAttach;
import com.narvii.model.QuizQuestion;

/* JADX INFO: loaded from: classes10.dex */
public interface ScenePollOrQuizHost {
    boolean containsPollOrQuiz();

    PollAttach getPoll();

    QuizQuestion getQuizQuestion();

    String id();
}
