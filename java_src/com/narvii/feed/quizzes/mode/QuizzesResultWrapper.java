package com.narvii.feed.quizzes.mode;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.AuthorGetter;
import com.narvii.model.CurrentQuizzesResult;
import com.narvii.model.NVObject;
import com.narvii.model.User;

/* loaded from: classes2.dex */
public class QuizzesResultWrapper extends NVObject implements AuthorGetter {
    public float beatRate;
    public boolean hellIsFinished;
    public int highestMode;
    public int highestScore;
    public boolean isFinished;
    public int latestMode;
    public int latestScore;
    public CurrentQuizzesResult quizResult;

    @JsonProperty("author")
    @JsonDeserialize(contentAs = User.class)
    public User userProfile;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 99;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        User user = this.userProfile;
        if (user == null) {
            return null;
        }
        return user.id();
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user = this.userProfile;
        if (user == null) {
            return null;
        }
        return user.id();
    }

    @Override // com.narvii.model.AuthorGetter
    public User getAuthor() {
        return this.userProfile;
    }
}
