package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.internal.shield.NoAutoExceptionHandling;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@NoAutoExceptionHandling
@SuppressLint({"EmptyCatchBlock", "CatchGeneralException", "WrongCall", "RethrownThrowableArgument"})
/* loaded from: assets/assets/audience_network.dex */
public final class MK extends View {
    private static byte[] A00;
    private static final AtomicBoolean A01;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 20);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-88, -73, -90, -72, -83, -92, -72, -83, -82, -86, -79, -87};
    }

    static {
        A01();
        A01 = new AtomicBoolean();
    }

    private final void A02() {
        super.onAttachedToWindow();
    }

    private final void A03() {
        super.onDetachedFromWindow();
    }

    private final void A04() {
        super.onFinishInflate();
    }

    private final void A05(int i) {
        super.onWindowVisibilityChanged(i);
    }

    private final void A06(int i, int i2) {
        super.onMeasure(i, i2);
    }

    private final void A07(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    private final void A08(Canvas canvas) {
        super.onDraw(canvas);
    }

    private void A09(Throwable th) {
        P7.A0E(A00(0, 12, 49), 3303, new PA(th));
    }

    public static void A0A(boolean z) {
        A01.set(z);
    }

    private final void A0B(boolean z) {
        super.onWindowFocusChanged(z);
    }

    private final void A0C(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    private final void A0D(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
    }

    private final boolean A0E() {
        return super.performClick();
    }

    private final boolean A0F(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    private final boolean A0G(int i, KeyEvent keyEvent) {
        return super.onKeyUp(i, keyEvent);
    }

    private final boolean A0H(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    private final boolean A0I(MotionEvent motionEvent) {
        return super.onTrackballEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onAttachedToWindow() throws Throwable {
        MK mk = this;
        Throwable th = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        mk.A02();
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 6;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    }
                case 4:
                    MK mk2 = mk;
                    mk2.A09(th);
                    super.onAttachedToWindow();
                    return;
                case 6:
                    throw th;
            }
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() throws Throwable {
        MK mk = this;
        Throwable th = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        mk.A03();
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 6;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    }
                case 4:
                    MK mk2 = mk;
                    mk2.A09(th);
                    super.onDetachedFromWindow();
                    return;
                case 6:
                    throw th;
            }
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) throws Throwable {
        MK mk = this;
        Throwable th = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        canvas = canvas;
                        mk.A08(canvas);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 6;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    }
                case 4:
                    MK mk2 = mk;
                    mk2.A09(th);
                    super.onDraw(canvas);
                    return;
                case 6:
                    throw th;
            }
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() throws Throwable {
        MK mk = this;
        Throwable th = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        mk.A04();
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 6;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    }
                case 4:
                    MK mk2 = mk;
                    mk2.A09(th);
                    super.onFinishInflate();
                    return;
                case 6:
                    throw th;
            }
        }
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) throws Throwable {
        MK mk = this;
        Throwable th = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        rect = rect;
                        mk.A0D(z, i, rect);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 6;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    }
                case 4:
                    MK mk2 = mk;
                    mk2.A09(th);
                    super.onFocusChanged(z, i, rect);
                    return;
                case 6:
                    throw th;
            }
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) throws Throwable {
        MK mk = this;
        Throwable th = null;
        boolean zOnKeyDown = false;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        keyEvent = keyEvent;
                        zOnKeyDown = mk.A0F(i, keyEvent);
                        c = 6;
                        break;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 7;
                            break;
                        } else {
                            c = 5;
                            break;
                        }
                    }
                case 5:
                    mk = mk;
                    keyEvent = keyEvent;
                    th = th;
                    mk.A09(th);
                    zOnKeyDown = super.onKeyDown(i, keyEvent);
                    c = 6;
                    break;
                case 6:
                    return zOnKeyDown;
                case 7:
                    throw th;
            }
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) throws Throwable {
        MK mk = this;
        Throwable th = null;
        boolean zOnKeyUp = false;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        keyEvent = keyEvent;
                        zOnKeyUp = mk.A0G(i, keyEvent);
                        c = 6;
                        break;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 7;
                            break;
                        } else {
                            c = 5;
                            break;
                        }
                    }
                case 5:
                    mk = mk;
                    keyEvent = keyEvent;
                    th = th;
                    mk.A09(th);
                    zOnKeyUp = super.onKeyUp(i, keyEvent);
                    c = 6;
                    break;
                case 6:
                    return zOnKeyUp;
                case 7:
                    throw th;
            }
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) throws Throwable {
        MK mk = this;
        Throwable th = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        mk.A0C(z, i, i2, i3, i4);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 6;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    }
                case 4:
                    MK mk2 = mk;
                    mk2.A09(th);
                    super.onLayout(z, i, i2, i3, i4);
                    return;
                case 6:
                    throw th;
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) throws Throwable {
        MK mk = this;
        Throwable th = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        mk.A06(i, i2);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 6;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    }
                case 4:
                    MK mk2 = mk;
                    mk2.A09(th);
                    super.onMeasure(i, i2);
                    return;
                case 6:
                    throw th;
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) throws Throwable {
        MK mk = this;
        Throwable th = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        mk.A07(i, i2, i3, i4);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 6;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    }
                case 4:
                    MK mk2 = mk;
                    mk2.A09(th);
                    super.onSizeChanged(i, i2, i3, i4);
                    return;
                case 6:
                    throw th;
            }
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) throws Throwable {
        MK mk = this;
        Throwable th = null;
        boolean zOnTouchEvent = false;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        motionEvent = motionEvent;
                        zOnTouchEvent = mk.A0H(motionEvent);
                        c = 6;
                        break;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 7;
                            break;
                        } else {
                            c = 5;
                            break;
                        }
                    }
                case 5:
                    mk = mk;
                    motionEvent = motionEvent;
                    th = th;
                    mk.A09(th);
                    zOnTouchEvent = super.onTouchEvent(motionEvent);
                    c = 6;
                    break;
                case 6:
                    return zOnTouchEvent;
                case 7:
                    throw th;
            }
        }
    }

    @Override // android.view.View
    public final boolean onTrackballEvent(MotionEvent motionEvent) throws Throwable {
        MK mk = this;
        Throwable th = null;
        boolean zOnTrackballEvent = false;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        motionEvent = motionEvent;
                        zOnTrackballEvent = mk.A0I(motionEvent);
                        c = 6;
                        break;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 7;
                            break;
                        } else {
                            c = 5;
                            break;
                        }
                    }
                case 5:
                    mk = mk;
                    motionEvent = motionEvent;
                    th = th;
                    mk.A09(th);
                    zOnTrackballEvent = super.onTrackballEvent(motionEvent);
                    c = 6;
                    break;
                case 6:
                    return zOnTrackballEvent;
                case 7:
                    throw th;
            }
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) throws Throwable {
        MK mk = this;
        Throwable th = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        mk.A0B(z);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 6;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    }
                case 4:
                    MK mk2 = mk;
                    mk2.A09(th);
                    super.onWindowFocusChanged(z);
                    return;
                case 6:
                    throw th;
            }
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) throws Throwable {
        MK mk = this;
        Throwable th = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        mk.A05(i);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 6;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    }
                case 4:
                    MK mk2 = mk;
                    mk2.A09(th);
                    super.onWindowVisibilityChanged(i);
                    return;
                case 6:
                    throw th;
            }
        }
    }

    @Override // android.view.View
    public final boolean performClick() throws Throwable {
        MK mk = this;
        Throwable th = null;
        boolean zPerformClick = false;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        mk = mk;
                        zPerformClick = mk.A0E();
                        c = 6;
                        break;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 7;
                            break;
                        } else {
                            c = 5;
                            break;
                        }
                    }
                case 5:
                    mk = mk;
                    th = th;
                    mk.A09(th);
                    zPerformClick = super.performClick();
                    c = 6;
                    break;
                case 6:
                    return zPerformClick;
                case 7:
                    throw th;
            }
        }
    }
}
