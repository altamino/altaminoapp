package com.narvii.ad;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.a0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class MediaLabAdsUtilsKt {
    @NotNull
    public static final List<View> findFullObstructions(@NotNull ViewGroup parent) {
        t.j(parent, "parent");
        ArrayList arrayList = new ArrayList();
        int childCount = parent.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = parent.getChildAt(i10);
            if (childAt instanceof ViewGroup) {
                a0.D(arrayList, findFullObstructions((ViewGroup) childAt));
            }
            if (childAt.getId() == -1 && childAt.getWidth() > 0 && childAt.getHeight() > 0) {
                t.g(childAt);
                if (childAt.getVisibility() == 0) {
                    int[] iArr = new int[2];
                    childAt.getLocationOnScreen(iArr);
                    if (iArr[0] == 0 && iArr[1] == 0) {
                        arrayList.add(childAt);
                    }
                }
            }
        }
        return arrayList;
    }
}
