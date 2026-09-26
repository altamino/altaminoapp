package com.linkedin.urls.detection;

/* JADX INFO: loaded from: classes5.dex */
public enum g {
    Default(0),
    QUOTE_MATCH(1),
    SINGLE_QUOTE_MATCH(2),
    BRACKET_MATCH(4),
    JSON(5),
    JAVASCRIPT(7),
    XML(9),
    HTML(27),
    ALLOW_SINGLE_LEVEL_DOMAIN(32);

    private int _value;

    public boolean b(g gVar) {
        int i10 = this._value;
        int i11 = gVar._value;
        return (i10 & i11) == i11;
    }

    g(int i10) {
        this._value = i10;
    }
}
