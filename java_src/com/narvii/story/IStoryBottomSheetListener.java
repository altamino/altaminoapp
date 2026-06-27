package com.narvii.story;

/* loaded from: classes3.dex */
public interface IStoryBottomSheetListener {
    public static final int TYPE_COMMENT = 1;
    public static final int TYPE_VOTE = 0;

    void onBottomSheetHide();

    void onBottomSheetShow(int i);
}
