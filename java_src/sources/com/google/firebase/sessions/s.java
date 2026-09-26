package com.google.firebase.sessions;

/* JADX INFO: loaded from: classes6.dex */
public enum s implements com.google.firebase.encoders.json.f {
    LOG_ENVIRONMENT_UNKNOWN(0),
    LOG_ENVIRONMENT_AUTOPUSH(1),
    LOG_ENVIRONMENT_STAGING(2),
    LOG_ENVIRONMENT_PROD(3);

    private final int number;

    @Override // com.google.firebase.encoders.json.f
    public int getNumber() {
        return this.number;
    }

    s(int i10) {
        this.number = i10;
    }
}
