package com.google.firebase.sessions;

/* JADX INFO: loaded from: classes.dex */
public enum d implements com.google.firebase.encoders.json.f {
    COLLECTION_UNKNOWN(0),
    COLLECTION_SDK_NOT_INSTALLED(1),
    COLLECTION_ENABLED(2),
    COLLECTION_DISABLED(3),
    COLLECTION_DISABLED_REMOTE(4),
    COLLECTION_SAMPLED(5);

    private final int number;

    @Override // com.google.firebase.encoders.json.f
    public int getNumber() {
        return this.number;
    }

    d(int i10) {
        this.number = i10;
    }
}
