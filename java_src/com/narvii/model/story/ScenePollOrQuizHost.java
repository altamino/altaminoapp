package com.narvii.model.story;

import com.narvii.model.PollAttach;
import com.narvii.model.QuizQuestion;

/* loaded from: classes3.dex */
public interface ScenePollOrQuizHost {
    boolean containsPollOrQuiz();

    PollAttach getPoll();

    QuizQuestion getQuizQuestion();

    String id();
}
