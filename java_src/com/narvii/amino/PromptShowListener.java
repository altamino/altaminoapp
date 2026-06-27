package com.narvii.amino;

/* loaded from: classes2.dex */
public interface PromptShowListener {
    boolean anyPromptShown();

    boolean isActive();

    boolean isDestroyed();

    boolean isPromptShown(int i);

    void setPromptShown(int i);

    void whenBlocking();

    void whenNotBlocking();
}
