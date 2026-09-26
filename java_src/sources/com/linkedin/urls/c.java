package com.linkedin.urls;

/* JADX INFO: loaded from: classes10.dex */
public enum c {
    FRAGMENT(null),
    QUERY(FRAGMENT),
    PATH(QUERY),
    PORT(PATH),
    HOST(PORT),
    USERNAME_PASSWORD(HOST),
    SCHEME(USERNAME_PASSWORD);

    private c _nextPart;

    c(c cVar) {
        this._nextPart = cVar;
    }
}
