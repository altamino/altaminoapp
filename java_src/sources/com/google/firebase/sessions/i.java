package com.google.firebase.sessions;

/* JADX INFO: loaded from: classes6.dex */
public enum i implements com.google.firebase.encoders.json.f {
    EVENT_TYPE_UNKNOWN(0),
    SESSION_START(1);

    private final int number;

    @Override // com.google.firebase.encoders.json.f
    public int getNumber() {
        return this.number;
    }

    i(int i10) {
        this.number = i10;
    }
}
