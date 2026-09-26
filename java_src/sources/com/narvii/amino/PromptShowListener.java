package com.narvii.amino;

/* JADX INFO: loaded from: classes4.dex */
public interface PromptShowListener {
    boolean anyPromptShown();

    boolean isActive();

    boolean isDestroyed();

    boolean isPromptShown(int i10);

    void setPromptShown(int i10);

    void whenBlocking();

    void whenNotBlocking();
}
