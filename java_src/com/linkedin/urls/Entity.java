package com.linkedin.urls;

/* loaded from: classes2.dex */
public class Entity {
    private int end;
    private int start;
    private final Type type;
    private String value;

    public enum Type {
        URL,
        HASHTAG,
        CASHTAG
    }

    public Entity(int i, int i2, String str, Type type) {
        this.start = i;
        this.end = i2;
        this.value = str;
        this.type = type;
    }

    public int getStart() {
        return this.start;
    }

    public int getEnd() {
        return this.end;
    }

    public String getValue() {
        return this.value;
    }

    public Type getType() {
        return this.type;
    }
}
