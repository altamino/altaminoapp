package com.narvii.scene;

/* JADX INFO: loaded from: classes9.dex */
public class ScenePlayRecord {
    public static final int TYPE_POLL = 2;
    public static final int TYPE_QUIZ = 1;
    public int interactionType;
    public boolean isAnswerRight;
    public Object result;

    public ScenePlayRecord(int i10) {
        this.interactionType = i10;
    }
}
