package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7D, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C7D extends C7C {
    private static TimeInterpolator A0B;
    private ArrayList<C8G> A0A = new ArrayList<>();
    private ArrayList<C8G> A07 = new ArrayList<>();
    private ArrayList<C7A> A09 = new ArrayList<>();
    private ArrayList<AnonymousClass79> A08 = new ArrayList<>();
    public ArrayList<ArrayList<C8G>> A01 = new ArrayList<>();
    public ArrayList<ArrayList<C7A>> A05 = new ArrayList<>();
    public ArrayList<ArrayList<AnonymousClass79>> A03 = new ArrayList<>();
    public ArrayList<C8G> A00 = new ArrayList<>();
    public ArrayList<C8G> A04 = new ArrayList<>();
    public ArrayList<C8G> A06 = new ArrayList<>();
    public ArrayList<C8G> A02 = new ArrayList<>();

    private void A01(AnonymousClass79 anonymousClass79) {
        C7D c7d = this;
        char c = anonymousClass79.A05 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7d = c7d;
                    anonymousClass79 = anonymousClass79;
                    c7d.A06(anonymousClass79, anonymousClass79.A05);
                    c = 3;
                    break;
                case 3:
                    anonymousClass79 = anonymousClass79;
                    if (anonymousClass79.A04 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c7d = c7d;
                    anonymousClass79 = anonymousClass79;
                    c7d.A06(anonymousClass79, anonymousClass79.A04);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    private void A02(final C8G c8g) {
        final View view = c8g.A0H;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.A06.add(c8g);
        viewPropertyAnimatorAnimate.setDuration(A06()).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.redexgen.X.74
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                view.setAlpha(1.0f);
                this.A02.A0Q(c8g);
                this.A02.A06.remove(c8g);
                this.A02.A0Y();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                this.A02.A0R(c8g);
            }
        }).start();
    }

    private void A03(C8G c8g) {
        if (A0B == null) {
            A0B = new ValueAnimator().getInterpolator();
        }
        c8g.A0H.animate().setInterpolator(A0B);
        A0E(c8g);
    }

    private final void A04(List<C8G> list) {
        int size = list.size() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (size < 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    list = list;
                    list.get(size).A0H.animate().cancel();
                    size--;
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A05(List<AnonymousClass79> list, C8G c8g) {
        C7D c7d = this;
        AnonymousClass79 anonymousClass79 = null;
        int size = list.size() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (size < 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7d = c7d;
                    list = list;
                    c8g = c8g;
                    anonymousClass79 = list.get(size);
                    if (!c7d.A06(anonymousClass79, c8g)) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass79 = anonymousClass79;
                    if (anonymousClass79.A05 != null) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass79 = anonymousClass79;
                    if (anonymousClass79.A04 != null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    list = list;
                    anonymousClass79 = anonymousClass79;
                    list.remove(anonymousClass79);
                    c = 7;
                    break;
                case 7:
                    size--;
                    c = 2;
                    break;
                case '\b':
                    return;
            }
        }
    }

    private boolean A06(AnonymousClass79 anonymousClass79, C8G c8g) {
        C7D c7d = this;
        boolean z = false;
        boolean z2 = false;
        char c = anonymousClass79.A04 == c8g ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass79 = anonymousClass79;
                    anonymousClass79.A04 = null;
                    c = 3;
                    break;
                case 3:
                    c7d = c7d;
                    c8g = c8g;
                    c8g.A0H.setAlpha(1.0f);
                    c8g.A0H.setTranslationX(0.0f);
                    c8g.A0H.setTranslationY(0.0f);
                    c7d.A0S(c8g, z2);
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    anonymousClass79 = anonymousClass79;
                    c8g = c8g;
                    if (anonymousClass79.A05 != c8g) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    anonymousClass79 = anonymousClass79;
                    anonymousClass79.A05 = null;
                    z2 = true;
                    c = 3;
                    break;
                case 7:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7B
    public final void A0C() {
        C7D c7d = this;
        int count = 0;
        int i = 0;
        int j = 0;
        int listCount = 0;
        ArrayList<AnonymousClass79> arrayList = null;
        ArrayList<C7A> arrayList2 = null;
        int size = 0;
        int size2 = 0;
        int size3 = 0;
        int size4 = 0;
        int size5 = 0;
        ArrayList<C8G> arrayList3 = null;
        int size6 = c7d.A09.size() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (size6 < 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7d = c7d;
                    C7A c7a = c7d.A09.get(size6);
                    C8G item = c7a.A04;
                    View view = item.A0H;
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c7d.A0O(c7a.A04);
                    c7d.A09.remove(size6);
                    size6--;
                    c = 2;
                    break;
                case 4:
                    c7d = c7d;
                    i = c7d.A0A.size() - 1;
                    c = 5;
                    break;
                case 5:
                    if (i < 0) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7d = c7d;
                    C8G item2 = c7d.A0A.get(i);
                    c7d.A0Q(item2);
                    c7d.A0A.remove(i);
                    i--;
                    c = 5;
                    break;
                case 7:
                    c7d = c7d;
                    listCount = c7d.A07.size() - 1;
                    c = '\b';
                    break;
                case '\b':
                    if (listCount < 0) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c7d = c7d;
                    C8G c8g = c7d.A07.get(listCount);
                    c8g.A0H.setAlpha(1.0f);
                    c7d.A0M(c8g);
                    c7d.A07.remove(listCount);
                    listCount--;
                    c = '\b';
                    break;
                case '\n':
                    c7d = c7d;
                    size4 = c7d.A08.size() - 1;
                    c = 11;
                    break;
                case 11:
                    if (size4 < 0) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c7d = c7d;
                    c7d.A01(c7d.A08.get(size4));
                    size4--;
                    c = 11;
                    break;
                case '\r':
                    c7d = c7d;
                    c7d.A08.clear();
                    if (!c7d.A0F()) {
                        c = 14;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 14:
                    return;
                case 15:
                    c7d = c7d;
                    count = c7d.A05.size() - 1;
                    c = 16;
                    break;
                case 16:
                    if (count < 0) {
                        c = 23;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c7d = c7d;
                    arrayList2 = c7d.A05.get(count);
                    size = arrayList2.size() - 1;
                    c = 18;
                    break;
                case 18:
                    if (size < 0) {
                        c = 22;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c7d = c7d;
                    arrayList2 = arrayList2;
                    int i2 = size;
                    C7A c7a2 = arrayList2.get(i2);
                    View view2 = c7a2.A04.A0H;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    c7d.A0O(c7a2.A04);
                    size = i2;
                    arrayList2.remove(size);
                    if (!arrayList2.isEmpty()) {
                        c = 21;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    c7d = c7d;
                    arrayList2 = arrayList2;
                    c7d.A05.remove(arrayList2);
                    c = 21;
                    break;
                case 21:
                    size--;
                    c = 18;
                    break;
                case 22:
                    count--;
                    c = 16;
                    break;
                case 23:
                    c7d = c7d;
                    size3 = c7d.A01.size() - 1;
                    c = 24;
                    break;
                case 24:
                    if (size3 < 0) {
                        c = 31;
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    c7d = c7d;
                    arrayList3 = c7d.A01.get(size3);
                    size5 = arrayList3.size() - 1;
                    c = 26;
                    break;
                case 26:
                    if (size5 < 0) {
                        c = 30;
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 27:
                    c7d = c7d;
                    arrayList3 = arrayList3;
                    C8G c8g2 = arrayList3.get(size5);
                    c8g2.A0H.setAlpha(1.0f);
                    c7d.A0M(c8g2);
                    arrayList3.remove(size5);
                    if (!arrayList3.isEmpty()) {
                        c = 29;
                        break;
                    } else {
                        c = 28;
                        break;
                    }
                case 28:
                    c7d = c7d;
                    arrayList3 = arrayList3;
                    c7d.A01.remove(arrayList3);
                    c = 29;
                    break;
                case 29:
                    size5--;
                    c = 26;
                    break;
                case 30:
                    size3--;
                    c = 24;
                    break;
                case 31:
                    c7d = c7d;
                    size2 = c7d.A03.size() - 1;
                    c = ' ';
                    break;
                case ' ':
                    if (size2 < 0) {
                        c = '\'';
                        break;
                    } else {
                        c = '!';
                        break;
                    }
                case '!':
                    c7d = c7d;
                    arrayList = c7d.A03.get(size2);
                    j = arrayList.size() - 1;
                    c = '\"';
                    break;
                case '\"':
                    if (j < 0) {
                        c = '&';
                        break;
                    } else {
                        c = '#';
                        break;
                    }
                case '#':
                    c7d = c7d;
                    arrayList = arrayList;
                    j = j;
                    c7d.A01(arrayList.get(j));
                    if (!arrayList.isEmpty()) {
                        c = '%';
                        break;
                    } else {
                        c = '$';
                        break;
                    }
                case '$':
                    c7d = c7d;
                    arrayList = arrayList;
                    c7d.A03.remove(arrayList);
                    c = '%';
                    break;
                case '%':
                    j--;
                    c = '\"';
                    break;
                case '&':
                    size2--;
                    c = ' ';
                    break;
                case '\'':
                    c7d = c7d;
                    c7d.A04(c7d.A06);
                    c7d.A04(c7d.A04);
                    c7d.A04(c7d.A00);
                    c7d.A04(c7d.A02);
                    c7d.A09();
                    c = 14;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7B
    public final void A0D() {
        final C7D c7d = this;
        Runnable runnable = null;
        boolean z = false;
        boolean z2 = false;
        final ArrayList<C7A> arrayList = null;
        final ArrayList<AnonymousClass79> arrayList2 = null;
        boolean z3 = false;
        boolean z4 = false;
        Iterator<C8G> it = null;
        Runnable mover = null;
        final ArrayList<C8G> arrayList3 = null;
        Runnable runnable2 = null;
        long jA06 = 0;
        long jA05 = 0;
        long jA04 = 0;
        char c = !c7d.A0A.isEmpty() ? (char) 2 : '+';
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    c7d = c7d;
                    if (!c7d.A09.isEmpty()) {
                        c = 4;
                        break;
                    } else {
                        c = '*';
                        break;
                    }
                case 4:
                    z2 = true;
                    c = 5;
                    break;
                case 5:
                    c7d = c7d;
                    if (!c7d.A08.isEmpty()) {
                        c = 6;
                        break;
                    } else {
                        c = ')';
                        break;
                    }
                case 6:
                    z4 = true;
                    c = 7;
                    break;
                case 7:
                    c7d = c7d;
                    if (!c7d.A07.isEmpty()) {
                        c = '\b';
                        break;
                    } else {
                        c = '(';
                        break;
                    }
                case '\b':
                    z3 = true;
                    c = '\t';
                    break;
                case '\t':
                    if (!z) {
                        c = '\n';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case '\n':
                    if (!z2) {
                        c = 11;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 11:
                    if (!z3) {
                        c = '\f';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case '\f':
                    if (!z4) {
                        c = '\r';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case '\r':
                    return;
                case 14:
                    c7d = c7d;
                    it = c7d.A0A.iterator();
                    c = 15;
                    break;
                case 15:
                    it = it;
                    if (!it.hasNext()) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c7d = c7d;
                    it = it;
                    c7d.A02(it.next());
                    c = 15;
                    break;
                case 17:
                    c7d = c7d;
                    c7d.A0A.clear();
                    if (!z2) {
                        c = 20;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    c7d = c7d;
                    arrayList = new ArrayList<>();
                    arrayList.addAll(c7d.A09);
                    c7d.A05.add(arrayList);
                    c7d.A09.clear();
                    mover = new Runnable() { // from class: com.facebook.ads.redexgen.X.71
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass71 anonymousClass71 = this;
                            Iterator it2 = arrayList.iterator();
                            char c2 = 2;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        it2 = it2;
                                        if (!it2.hasNext()) {
                                            c2 = 4;
                                            break;
                                        } else {
                                            c2 = 3;
                                            break;
                                        }
                                    case 3:
                                        anonymousClass71 = anonymousClass71;
                                        it2 = it2;
                                        C7A moveInfo = (C7A) it2.next();
                                        anonymousClass71.A00.A0b(moveInfo.A04, moveInfo.A00, moveInfo.A01, moveInfo.A02, moveInfo.A03);
                                        c2 = 2;
                                        break;
                                    case 4:
                                        AnonymousClass71 anonymousClass712 = anonymousClass71;
                                        arrayList.clear();
                                        anonymousClass712.A00.A05.remove(arrayList);
                                        return;
                                }
                            }
                        }
                    };
                    if (!z) {
                        c = '&';
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c7d = c7d;
                    arrayList = arrayList;
                    mover = (AnonymousClass71) mover;
                    C02985s.A0D(arrayList.get(0).A04.A0H, mover, c7d.A06());
                    c = 20;
                    break;
                case 20:
                    if (!z4) {
                        c = 23;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c7d = c7d;
                    arrayList2 = new ArrayList<>();
                    arrayList2.addAll(c7d.A08);
                    c7d.A03.add(arrayList2);
                    c7d.A08.clear();
                    runnable = new Runnable() { // from class: com.facebook.ads.redexgen.X.72
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass72 anonymousClass72 = this;
                            Iterator it2 = arrayList2.iterator();
                            char c2 = 2;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        it2 = it2;
                                        if (!it2.hasNext()) {
                                            c2 = 4;
                                            break;
                                        } else {
                                            c2 = 3;
                                            break;
                                        }
                                    case 3:
                                        anonymousClass72 = anonymousClass72;
                                        it2 = it2;
                                        anonymousClass72.A00.A0Z((AnonymousClass79) it2.next());
                                        c2 = 2;
                                        break;
                                    case 4:
                                        AnonymousClass72 anonymousClass722 = anonymousClass72;
                                        arrayList2.clear();
                                        anonymousClass722.A00.A03.remove(arrayList2);
                                        return;
                                }
                            }
                        }
                    };
                    if (!z) {
                        c = '%';
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    c7d = c7d;
                    arrayList2 = arrayList2;
                    runnable = (AnonymousClass72) runnable;
                    C02985s.A0D(arrayList2.get(0).A05.A0H, runnable, c7d.A06());
                    c = 23;
                    break;
                case 23:
                    if (!z3) {
                        c = '\r';
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    c7d = c7d;
                    arrayList3 = new ArrayList<>();
                    arrayList3.addAll(c7d.A07);
                    c7d.A01.add(arrayList3);
                    c7d.A07.clear();
                    runnable2 = new Runnable() { // from class: com.facebook.ads.redexgen.X.73
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass73 anonymousClass73 = this;
                            Iterator it2 = arrayList3.iterator();
                            char c2 = 2;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        it2 = it2;
                                        if (!it2.hasNext()) {
                                            c2 = 4;
                                            break;
                                        } else {
                                            c2 = 3;
                                            break;
                                        }
                                    case 3:
                                        anonymousClass73 = anonymousClass73;
                                        it2 = it2;
                                        anonymousClass73.A00.A0a((C8G) it2.next());
                                        c2 = 2;
                                        break;
                                    case 4:
                                        AnonymousClass73 anonymousClass732 = anonymousClass73;
                                        arrayList3.clear();
                                        anonymousClass732.A00.A01.remove(arrayList3);
                                        return;
                                }
                            }
                        }
                    };
                    if (!z) {
                        c = 25;
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 25:
                    if (!z2) {
                        c = 26;
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 26:
                    if (!z4) {
                        c = '\'';
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 27:
                    if (!z) {
                        c = '$';
                        break;
                    } else {
                        c = 28;
                        break;
                    }
                case 28:
                    c7d = c7d;
                    jA06 = c7d.A06();
                    c = 29;
                    break;
                case 29:
                    if (!z2) {
                        c = '#';
                        break;
                    } else {
                        c = 30;
                        break;
                    }
                case 30:
                    c7d = c7d;
                    jA05 = c7d.A05();
                    c = 31;
                    break;
                case 31:
                    if (!z4) {
                        c = '\"';
                        break;
                    } else {
                        c = ' ';
                        break;
                    }
                case ' ':
                    c7d = c7d;
                    jA04 = c7d.A04();
                    c = '!';
                    break;
                case '!':
                    arrayList3 = arrayList3;
                    runnable2 = (AnonymousClass73) runnable2;
                    C02985s.A0D(arrayList3.get(0).A0H, runnable2, jA06 + Math.max(jA05, jA04));
                    c = '\r';
                    break;
                case '\"':
                    jA04 = 0;
                    c = '!';
                    break;
                case '#':
                    jA05 = 0;
                    c = 31;
                    break;
                case '$':
                    jA06 = 0;
                    c = 29;
                    break;
                case '%':
                    runnable = (AnonymousClass72) runnable;
                    runnable.run();
                    c = 23;
                    break;
                case '&':
                    mover = (AnonymousClass71) mover;
                    mover.run();
                    c = 20;
                    break;
                case '\'':
                    runnable2 = (AnonymousClass73) runnable2;
                    runnable2.run();
                    c = '\r';
                    break;
                case '(':
                    z3 = false;
                    c = '\t';
                    break;
                case ')':
                    z4 = false;
                    c = 7;
                    break;
                case '*':
                    z2 = false;
                    c = 5;
                    break;
                case '+':
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7B
    public final void A0E(C8G c8g) {
        C7D c7d = this;
        int size = 0;
        int size2 = 0;
        ArrayList<C7A> arrayList = null;
        int size3 = 0;
        int size4 = 0;
        ArrayList<C8G> arrayList2 = null;
        View view = c8g.A0H;
        view.animate().cancel();
        int size5 = c7d.A09.size() - 1;
        int j = 2;
        while (true) {
            switch (j) {
                case 2:
                    if (size5 < 0) {
                        j = 6;
                        break;
                    } else {
                        j = 3;
                        break;
                    }
                case 3:
                    c7d = c7d;
                    c8g = c8g;
                    if (c7d.A09.get(size5).A04 != c8g) {
                        j = 5;
                        break;
                    } else {
                        j = 4;
                        break;
                    }
                case 4:
                    c7d = c7d;
                    c8g = c8g;
                    view = view;
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c7d.A0O(c8g);
                    c7d.A09.remove(size5);
                    j = 5;
                    break;
                case 5:
                    size5--;
                    j = 2;
                    break;
                case 6:
                    c7d = c7d;
                    c8g = c8g;
                    c7d.A05(c7d.A08, c8g);
                    if (!c7d.A0A.remove(c8g)) {
                        j = 8;
                        break;
                    } else {
                        j = 7;
                        break;
                    }
                case 7:
                    c7d = c7d;
                    c8g = c8g;
                    view = view;
                    view.setAlpha(1.0f);
                    c7d.A0Q(c8g);
                    j = 8;
                    break;
                case 8:
                    c7d = c7d;
                    c8g = c8g;
                    if (!c7d.A07.remove(c8g)) {
                        j = 10;
                        break;
                    } else {
                        j = 9;
                        break;
                    }
                case 9:
                    c7d = c7d;
                    c8g = c8g;
                    view = view;
                    view.setAlpha(1.0f);
                    c7d.A0M(c8g);
                    j = 10;
                    break;
                case 10:
                    c7d = c7d;
                    size2 = c7d.A03.size() - 1;
                    j = 11;
                    break;
                case 11:
                    if (size2 < 0) {
                        j = 15;
                        break;
                    } else {
                        j = 12;
                        break;
                    }
                case 12:
                    c7d = c7d;
                    c8g = c8g;
                    ArrayList<AnonymousClass79> arrayList3 = c7d.A03.get(size2);
                    c7d.A05(arrayList3, c8g);
                    if (!arrayList3.isEmpty()) {
                        j = 14;
                        break;
                    } else {
                        j = 13;
                        break;
                    }
                case 13:
                    c7d = c7d;
                    c7d.A03.remove(size2);
                    j = 14;
                    break;
                case 14:
                    size2--;
                    j = 11;
                    break;
                case 15:
                    c7d = c7d;
                    size3 = c7d.A05.size() - 1;
                    j = 16;
                    break;
                case 16:
                    if (size3 < 0) {
                        j = 24;
                        break;
                    } else {
                        j = 17;
                        break;
                    }
                case 17:
                    c7d = c7d;
                    arrayList = c7d.A05.get(size3);
                    size = arrayList.size() - 1;
                    j = 18;
                    break;
                case 18:
                    if (size < 0) {
                        j = 22;
                        break;
                    } else {
                        j = 19;
                        break;
                    }
                case 19:
                    c8g = c8g;
                    arrayList = arrayList;
                    if (arrayList.get(size).A04 != c8g) {
                        j = 23;
                        break;
                    } else {
                        j = 20;
                        break;
                    }
                case 20:
                    c7d = c7d;
                    c8g = c8g;
                    view = view;
                    arrayList = arrayList;
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c7d.A0O(c8g);
                    arrayList.remove(size);
                    if (!arrayList.isEmpty()) {
                        j = 22;
                        break;
                    } else {
                        j = 21;
                        break;
                    }
                case 21:
                    c7d = c7d;
                    c7d.A05.remove(size3);
                    j = 22;
                    break;
                case 22:
                    size3--;
                    j = 16;
                    break;
                case 23:
                    size--;
                    j = 18;
                    break;
                case 24:
                    c7d = c7d;
                    size4 = c7d.A01.size() - 1;
                    j = 25;
                    break;
                case 25:
                    if (size4 < 0) {
                        j = 30;
                        break;
                    } else {
                        j = 26;
                        break;
                    }
                case 26:
                    c7d = c7d;
                    c8g = c8g;
                    arrayList2 = c7d.A01.get(size4);
                    if (!arrayList2.remove(c8g)) {
                        j = 29;
                        break;
                    } else {
                        j = 27;
                        break;
                    }
                case 27:
                    c7d = c7d;
                    c8g = c8g;
                    view = view;
                    arrayList2 = arrayList2;
                    view.setAlpha(1.0f);
                    c7d.A0M(c8g);
                    if (!arrayList2.isEmpty()) {
                        j = 29;
                        break;
                    } else {
                        j = 28;
                        break;
                    }
                case 28:
                    c7d = c7d;
                    c7d.A01.remove(size4);
                    j = 29;
                    break;
                case 29:
                    size4--;
                    j = 25;
                    break;
                case 30:
                    C7D c7d2 = c7d;
                    C8G c8g2 = c8g;
                    c7d2.A06.remove(c8g2);
                    c7d2.A00.remove(c8g2);
                    c7d2.A02.remove(c8g2);
                    c7d2.A04.remove(c8g2);
                    c7d2.A0Y();
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7B
    public final boolean A0F() {
        C7D c7d = this;
        boolean z = false;
        char c = c7d.A07.isEmpty() ? (char) 2 : '\f';
        while (true) {
            switch (c) {
                case 2:
                    c7d = c7d;
                    if (!c7d.A08.isEmpty()) {
                        c = '\f';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7d = c7d;
                    if (!c7d.A09.isEmpty()) {
                        c = '\f';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c7d = c7d;
                    if (!c7d.A0A.isEmpty()) {
                        c = '\f';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7d = c7d;
                    if (!c7d.A04.isEmpty()) {
                        c = '\f';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7d = c7d;
                    if (!c7d.A06.isEmpty()) {
                        c = '\f';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c7d = c7d;
                    if (!c7d.A00.isEmpty()) {
                        c = '\f';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c7d = c7d;
                    if (!c7d.A02.isEmpty()) {
                        c = '\f';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c7d = c7d;
                    if (!c7d.A05.isEmpty()) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c7d = c7d;
                    if (!c7d.A01.isEmpty()) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c7d = c7d;
                    if (!c7d.A03.isEmpty()) {
                        c = '\f';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case '\f':
                    z = true;
                    c = '\r';
                    break;
                case '\r':
                    return z;
                case 14:
                    z = false;
                    c = '\r';
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7B
    public final boolean A0G(@NonNull C8G c8g, @NonNull List<Object> list) {
        C7D c7d = this;
        boolean z = false;
        char c = list.isEmpty() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7d = c7d;
                    c8g = c8g;
                    list = list;
                    if (!super.A0G(c8g, list)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7C
    public final boolean A0U(C8G c8g) {
        A03(c8g);
        c8g.A0H.setAlpha(0.0f);
        this.A07.add(c8g);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.C7C
    public final boolean A0V(C8G c8g) {
        A03(c8g);
        this.A0A.add(c8g);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.C7C
    public final boolean A0W(C8G c8g, int i, int i2, int i3, int i4) {
        C8G c8g2 = c8g;
        C7D c7d = this;
        boolean z = false;
        View view = c8g2.A0H;
        int translationX = i + ((int) c8g2.A0H.getTranslationX());
        int translationY = i2 + ((int) c8g2.A0H.getTranslationY());
        c7d.A03(c8g2);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        int deltaY = i5 == 0 ? 2 : 5;
        while (true) {
            switch (deltaY) {
                case 2:
                    if (i6 != 0) {
                        deltaY = 5;
                        break;
                    } else {
                        deltaY = 3;
                        break;
                    }
                case 3:
                    c7d = c7d;
                    c8g2 = c8g2;
                    c7d.A0O(c8g2);
                    z = false;
                    deltaY = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    if (i5 == 0) {
                        deltaY = 7;
                        break;
                    } else {
                        deltaY = 6;
                        break;
                    }
                case 6:
                    view = view;
                    int deltaY2 = -i5;
                    view.setTranslationX(deltaY2);
                    deltaY = 7;
                    break;
                case 7:
                    if (i6 == 0) {
                        deltaY = 9;
                        break;
                    } else {
                        deltaY = 8;
                        break;
                    }
                case 8:
                    view = view;
                    int deltaY3 = -i6;
                    view.setTranslationY(deltaY3);
                    deltaY = 9;
                    break;
                case 9:
                    c7d = c7d;
                    c8g2 = c8g2;
                    c7d.A09.add(new C7A(c8g2, translationX, translationY, i3, i4));
                    z = true;
                    deltaY = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7C
    public final boolean A0X(C8G c8g, C8G c8g2, int i, int i2, int i3, int i4) {
        C8G c8g3 = c8g2;
        C8G c8g4 = c8g;
        C7D c7d = this;
        int deltaX = 0;
        int i5 = 0;
        boolean zA0W = false;
        float prevTranslationX = c8g4 == c8g3 ? 2.8E-45f : 5.6E-45f;
        while (true) {
            switch (prevTranslationX) {
                case 2.8E-45f:
                    c7d = c7d;
                    c8g4 = c8g4;
                    zA0W = c7d.A0W(c8g4, i, i2, i3, i4);
                    prevTranslationX = 4.2E-45f;
                    break;
                case 4.2E-45f:
                    return zA0W;
                case 5.6E-45f:
                    c7d = c7d;
                    c8g4 = c8g4;
                    c8g3 = c8g3;
                    float translationX = c8g4.A0H.getTranslationX();
                    float translationY = c8g4.A0H.getTranslationY();
                    float prevTranslationY = c8g4.A0H.getAlpha();
                    c7d.A03(c8g4);
                    float prevTranslationX2 = i3 - i;
                    i5 = (int) (prevTranslationX2 - translationX);
                    float prevTranslationX3 = i4 - i2;
                    deltaX = (int) (prevTranslationX3 - translationY);
                    c8g4.A0H.setTranslationX(translationX);
                    c8g4.A0H.setTranslationY(translationY);
                    c8g4.A0H.setAlpha(prevTranslationY);
                    if (c8g3 == null) {
                        prevTranslationX = 8.4E-45f;
                        break;
                    } else {
                        prevTranslationX = 7.0E-45f;
                        break;
                    }
                case 7.0E-45f:
                    c7d = c7d;
                    c8g3 = c8g3;
                    c7d.A03(c8g3);
                    c8g3.A0H.setTranslationX(-i5);
                    c8g3.A0H.setTranslationY(-deltaX);
                    c8g3.A0H.setAlpha(0.0f);
                    prevTranslationX = 8.4E-45f;
                    break;
                case 8.4E-45f:
                    c7d = c7d;
                    c8g4 = c8g4;
                    c8g3 = c8g3;
                    c7d.A08.add(new AnonymousClass79(c8g4, c8g3, i, i2, i3, i4));
                    zA0W = true;
                    prevTranslationX = 4.2E-45f;
                    break;
            }
        }
    }

    public final void A0Y() {
        if (!A0F()) {
            A09();
        }
    }

    public final void A0Z(final AnonymousClass79 anonymousClass79) {
        final C7D c7d = this;
        C8G c8g = null;
        final View view = null;
        final View view2 = null;
        View view3 = null;
        float f = 0.0f;
        C8G c8g2 = anonymousClass79.A05;
        char c = c8g2 == null ? (char) 2 : (char) 11;
        while (true) {
            switch (c) {
                case 2:
                    view3 = null;
                    view = null;
                    c = 3;
                    break;
                case 3:
                    anonymousClass79 = anonymousClass79;
                    c8g = anonymousClass79.A04;
                    if (c8g == null) {
                        c = '\n';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8g = c8g;
                    view2 = c8g.A0H;
                    c = 5;
                    break;
                case 5:
                    if (view == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7d = c7d;
                    anonymousClass79 = anonymousClass79;
                    f = 0.0f;
                    final ViewPropertyAnimator duration = view.animate().setDuration(c7d.A04());
                    c7d.A02.add(anonymousClass79.A05);
                    duration.translationX(anonymousClass79.A02 - anonymousClass79.A00);
                    duration.translationY(anonymousClass79.A03 - anonymousClass79.A01);
                    duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.redexgen.X.77
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            duration.setListener(null);
                            view.setAlpha(1.0f);
                            view.setTranslationX(0.0f);
                            view.setTranslationY(0.0f);
                            this.A03.A0S(anonymousClass79.A05, true);
                            this.A03.A02.remove(anonymousClass79.A05);
                            this.A03.A0Y();
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                            this.A03.A0T(anonymousClass79.A05, true);
                        }
                    }).start();
                    c = 7;
                    break;
                case 7:
                    if (view2 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c7d = c7d;
                    anonymousClass79 = anonymousClass79;
                    final ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
                    c7d.A02.add(anonymousClass79.A04);
                    ViewPropertyAnimator newViewAnimation = viewPropertyAnimatorAnimate.translationX(f);
                    newViewAnimation.translationY(f).setDuration(c7d.A04()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.redexgen.X.78
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            viewPropertyAnimatorAnimate.setListener(null);
                            view2.setAlpha(1.0f);
                            view2.setTranslationX(0.0f);
                            view2.setTranslationY(0.0f);
                            this.A03.A0S(anonymousClass79.A04, false);
                            this.A03.A02.remove(anonymousClass79.A04);
                            this.A03.A0Y();
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                            this.A03.A0T(anonymousClass79.A04, false);
                        }
                    }).start();
                    c = '\t';
                    break;
                case '\t':
                    return;
                case '\n':
                    view2 = view3;
                    c = 5;
                    break;
                case 11:
                    c8g2 = c8g2;
                    view = c8g2.A0H;
                    c = 3;
                    break;
            }
        }
    }

    public final void A0a(final C8G c8g) {
        final View view = c8g.A0H;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.A00.add(c8g);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(A03()).setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.redexgen.X.75
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                this.A02.A0M(c8g);
                this.A02.A00.remove(c8g);
                this.A02.A0Y();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                this.A02.A0N(c8g);
            }
        }).start();
    }

    public final void A0b(C8G c8g, int i, int deltaX, int i2, int i3) {
        float f = 0.0f;
        View view = c8g.A0H;
        final int i4 = i2 - i;
        final int deltaY = i3 - deltaX;
        char c = i4 != 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    f = 0.0f;
                    view.animate().translationX(0.0f);
                    c = 3;
                    break;
                case 3:
                    if (deltaY == 0) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    view = view;
                    view.animate().translationY(f);
                    c = 5;
                    break;
                case 5:
                    final C7D c7d = this;
                    final C8G c8g2 = c8g;
                    final View view2 = view;
                    final ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
                    c7d.A04.add(c8g2);
                    ViewPropertyAnimator animation = viewPropertyAnimatorAnimate.setDuration(c7d.A05());
                    animation.setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.redexgen.X.76
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                            AnonymousClass76 anonymousClass76 = this;
                            float f2 = 0.0f;
                            char c2 = i4 != 0 ? (char) 2 : (char) 3;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        anonymousClass76 = anonymousClass76;
                                        f2 = 0.0f;
                                        view2.setTranslationX(0.0f);
                                        c2 = 3;
                                        break;
                                    case 3:
                                        anonymousClass76 = anonymousClass76;
                                        if (deltaY == 0) {
                                            c2 = 5;
                                            break;
                                        } else {
                                            c2 = 4;
                                            break;
                                        }
                                    case 4:
                                        anonymousClass76 = anonymousClass76;
                                        view2.setTranslationY(f2);
                                        c2 = 5;
                                        break;
                                    case 5:
                                        return;
                                }
                            }
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            viewPropertyAnimatorAnimate.setListener(null);
                            this.A04.A0O(c8g2);
                            this.A04.A04.remove(c8g2);
                            this.A04.A0Y();
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                            this.A04.A0P(c8g2);
                        }
                    }).start();
                    return;
            }
        }
    }
}
