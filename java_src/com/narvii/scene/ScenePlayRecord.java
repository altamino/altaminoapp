package com.narvii.scene;

/* loaded from: classes3.dex */
public class ScenePlayRecord {
    public static final int TYPE_POLL = 2;
    public static final int TYPE_QUIZ = 1;
    public int interactionType;
    public boolean isAnswerRight;
    public Object result;

    public ScenePlayRecord(int i) {
        this.interactionType = i;
    }
}
