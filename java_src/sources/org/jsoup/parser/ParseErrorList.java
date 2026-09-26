package org.jsoup.parser;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes11.dex */
public class ParseErrorList extends ArrayList<ParseError> {
    private static final int INITIAL_CAPACITY = 16;
    private final int maxSize;

    int getMaxSize() {
        return this.maxSize;
    }

    public static ParseErrorList noTracking() {
        return new ParseErrorList(0, 0);
    }

    public static ParseErrorList tracking(int i10) {
        return new ParseErrorList(16, i10);
    }

    ParseErrorList(int i10, int i11) {
        super(i10);
        this.maxSize = i11;
    }

    boolean canAddError() {
        if (size() < this.maxSize) {
            return true;
        }
        return false;
    }
}
