package com.facebook.ads.redexgen.X;

import android.R;
import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.Stack;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5f, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C5f {
    private C5f() {
    }

    @Nullable
    public static Float A00(View view) {
        View viewFindViewById = null;
        Float fA01 = null;
        Activity activityA00 = NR.A00();
        char c = activityA00 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return fA01;
                case 3:
                    activityA00 = activityA00;
                    viewFindViewById = activityA00.findViewById(R.id.content);
                    if (viewFindViewById != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    activityA00 = activityA00;
                    viewFindViewById = activityA00.getWindow().getDecorView().findViewById(R.id.content);
                    c = 5;
                    break;
                case 5:
                    viewFindViewById = viewFindViewById;
                    if (viewFindViewById == null) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    view = view;
                    if (view == null) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    view = view;
                    if (view.getId() == -1) {
                        c = 2;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    view = view;
                    viewFindViewById = viewFindViewById;
                    if (viewFindViewById.findViewById(view.getId()) != null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    fA01 = Float.valueOf(-1.0f);
                    c = 2;
                    break;
                case '\n':
                    view = view;
                    viewFindViewById = viewFindViewById;
                    fA01 = A01(viewFindViewById, view);
                    c = 2;
                    break;
            }
        }
    }

    @VisibleForTesting
    @Nullable
    private static Float A01(View view, View leaf) {
        Float fValueOf = null;
        Iterator<View> it = null;
        Set<Rect> uncoveredSurfaces = null;
        Iterator<Rect> it2 = null;
        List<View> listA02 = null;
        Iterator<Rect> it3 = null;
        Rect rect = null;
        View next = null;
        Rect rect2 = null;
        Set<Rect> hashSet = null;
        int iWidth = 0;
        int iWidth2 = 0;
        char c = view != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    leaf = leaf;
                    if (leaf != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    fValueOf = null;
                    c = 4;
                    break;
                case 4:
                    return fValueOf;
                case 5:
                    leaf = leaf;
                    if (leaf.getVisibility() == 0) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    fValueOf = Float.valueOf(0.0f);
                    c = 4;
                    break;
                case 7:
                    view = view;
                    leaf = leaf;
                    listA02 = A02(view, leaf);
                    if (!listA02.isEmpty()) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    fValueOf = Float.valueOf(1.0f);
                    c = 4;
                    break;
                case '\t':
                    leaf = leaf;
                    rect = new Rect();
                    if (!leaf.getGlobalVisibleRect(rect)) {
                        c = '\n';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case '\n':
                    fValueOf = Float.valueOf(0.0f);
                    c = 4;
                    break;
                case 11:
                    listA02 = listA02;
                    rect = rect;
                    iWidth2 = rect.width() * rect.height();
                    uncoveredSurfaces = new HashSet<>();
                    uncoveredSurfaces.add(rect);
                    it = listA02.iterator();
                    c = '\f';
                    break;
                case '\f':
                    it = it;
                    if (!it.hasNext()) {
                        c = 19;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    it = it;
                    next = it.next();
                    rect2 = new Rect();
                    if (!(next instanceof S6)) {
                        c = 14;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case 14:
                    next = next;
                    rect2 = rect2;
                    if (!next.getGlobalVisibleRect(rect2)) {
                        c = '\f';
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    uncoveredSurfaces = (HashSet) uncoveredSurfaces;
                    hashSet = new HashSet<>();
                    it2 = uncoveredSurfaces.iterator();
                    c = 16;
                    break;
                case 16:
                    it2 = it2;
                    if (!it2.hasNext()) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    rect2 = rect2;
                    hashSet = (HashSet) hashSet;
                    it2 = it2;
                    hashSet.addAll(A03(it2.next(), rect2));
                    c = 16;
                    break;
                case 18:
                    hashSet = (HashSet) hashSet;
                    uncoveredSurfaces = hashSet;
                    c = '\f';
                    break;
                case 19:
                    uncoveredSurfaces = (HashSet) uncoveredSurfaces;
                    iWidth = 0;
                    it3 = uncoveredSurfaces.iterator();
                    c = 20;
                    break;
                case 20:
                    it3 = it3;
                    if (!it3.hasNext()) {
                        c = 22;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    it3 = it3;
                    Rect next2 = it3.next();
                    iWidth += next2.width() * next2.height();
                    c = 20;
                    break;
                case 22:
                    fValueOf = Float.valueOf(iWidth / iWidth2);
                    c = 4;
                    break;
            }
        }
    }

    private static List<View> A02(View view, View view2) {
        View view3 = null;
        int childCount = 0;
        ViewGroup viewGroup = null;
        LinkedList linkedList = new LinkedList();
        Stack stack = new Stack();
        stack.push(view);
        boolean z = false;
        int i = 2;
        while (true) {
            switch (i) {
                case 2:
                    stack = stack;
                    boolean isRelevant = stack.empty();
                    if (!isRelevant) {
                        i = 3;
                        break;
                    } else {
                        i = 14;
                        break;
                    }
                case 3:
                    stack = stack;
                    view3 = (View) stack.pop();
                    if (view3.getVisibility() != 0) {
                        i = 2;
                        break;
                    } else {
                        i = 4;
                        break;
                    }
                case 4:
                    view2 = view2;
                    view3 = view3;
                    if (view3 != view2) {
                        i = 6;
                        break;
                    } else {
                        i = 5;
                        break;
                    }
                case 5:
                    z = true;
                    i = 2;
                    break;
                case 6:
                    view3 = view3;
                    if (!(view3 instanceof ViewGroup)) {
                        i = 7;
                        break;
                    } else {
                        i = 11;
                        break;
                    }
                case 7:
                    if (!z) {
                        i = 8;
                        break;
                    } else {
                        i = 10;
                        break;
                    }
                case 8:
                    if (Build.VERSION.SDK_INT < 21) {
                        i = 2;
                        break;
                    } else {
                        i = 9;
                        break;
                    }
                case 9:
                    view2 = view2;
                    view3 = view3;
                    if (view3.getZ() <= view2.getZ()) {
                        i = 2;
                        break;
                    } else {
                        i = 10;
                        break;
                    }
                case 10:
                    linkedList = linkedList;
                    view3 = view3;
                    linkedList.add(view3);
                    i = 2;
                    break;
                case 11:
                    view3 = view3;
                    viewGroup = (ViewGroup) view3;
                    childCount = viewGroup.getChildCount() - 1;
                    i = 12;
                    break;
                case 12:
                    if (childCount < 0) {
                        i = 2;
                        break;
                    } else {
                        i = 13;
                        break;
                    }
                case 13:
                    stack = stack;
                    viewGroup = viewGroup;
                    stack.push(viewGroup.getChildAt(childCount));
                    childCount--;
                    i = 12;
                    break;
                case 14:
                    return linkedList;
            }
        }
    }

    @VisibleForTesting
    private static Set<Rect> A03(Rect rect, Rect rect2) {
        Iterator it = null;
        HashSet hashSet = null;
        Rect rect3 = null;
        HashSet hashSet2 = new HashSet();
        char c = !rect2.intersect(rect) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    rect = rect;
                    hashSet2 = hashSet2;
                    hashSet2.add(rect);
                    c = 3;
                    break;
                case 3:
                    return hashSet2;
                case 4:
                    rect = rect;
                    rect2 = rect2;
                    hashSet2 = hashSet2;
                    hashSet2.add(new Rect(rect.left, rect.top, rect2.left, rect.bottom));
                    hashSet2.add(new Rect(rect2.left, rect.top, rect2.right, rect2.top));
                    hashSet2.add(new Rect(rect2.right, rect.top, rect.right, rect.bottom));
                    hashSet2.add(new Rect(rect2.left, rect2.bottom, rect2.right, rect.bottom));
                    hashSet = new HashSet();
                    it = hashSet2.iterator();
                    c = 5;
                    break;
                case 5:
                    it = it;
                    if (!it.hasNext()) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    it = it;
                    rect3 = (Rect) it.next();
                    if (rect3.width() <= 0) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    rect3 = rect3;
                    if (rect3.height() <= 0) {
                        c = 5;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    hashSet = hashSet;
                    rect3 = rect3;
                    hashSet.add(rect3);
                    c = 5;
                    break;
                case '\t':
                    hashSet = hashSet;
                    hashSet2 = hashSet;
                    c = 3;
                    break;
            }
        }
    }
}
