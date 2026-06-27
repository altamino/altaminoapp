package com.narvii.notice;

/* compiled from: AggregationNoticeFragment.kt */
/* loaded from: classes3.dex */
public final class AggregationNoticeFragmentKt {
    public static final int INDEX_ANNOUNCEMENT = -1;
    private static boolean lastLoggedIn = false;
    private static int lastScrollPosition = 0;
    private static int lastScrollTop = 0;
    private static int lastSelectedCid = Integer.MIN_VALUE;

    public static final int getLastScrollPosition() {
        return lastScrollPosition;
    }

    public static final void setLastScrollPosition(int i) {
        lastScrollPosition = i;
    }

    public static final int getLastScrollTop() {
        return lastScrollTop;
    }

    public static final void setLastScrollTop(int i) {
        lastScrollTop = i;
    }

    public static final int getLastSelectedCid() {
        return lastSelectedCid;
    }

    public static final void setLastSelectedCid(int i) {
        lastSelectedCid = i;
    }

    public static final boolean getLastLoggedIn() {
        return lastLoggedIn;
    }

    public static final void setLastLoggedIn(boolean z) {
        lastLoggedIn = z;
    }
}
