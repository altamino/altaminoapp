package com.narvii.notice;

/* JADX INFO: loaded from: classes9.dex */
public final class AggregationNoticeFragmentKt {
    public static final int INDEX_ANNOUNCEMENT = -1;
    private static boolean lastLoggedIn = false;
    private static int lastScrollPosition = 0;
    private static int lastScrollTop = 0;
    private static int lastSelectedCid = Integer.MIN_VALUE;

    public static final boolean getLastLoggedIn() {
        return lastLoggedIn;
    }

    public static final int getLastScrollPosition() {
        return lastScrollPosition;
    }

    public static final int getLastScrollTop() {
        return lastScrollTop;
    }

    public static final int getLastSelectedCid() {
        return lastSelectedCid;
    }

    public static final void setLastLoggedIn(boolean z6) {
        lastLoggedIn = z6;
    }

    public static final void setLastScrollPosition(int i10) {
        lastScrollPosition = i10;
    }

    public static final void setLastScrollTop(int i10) {
        lastScrollTop = i10;
    }

    public static final void setLastSelectedCid(int i10) {
        lastSelectedCid = i10;
    }
}
