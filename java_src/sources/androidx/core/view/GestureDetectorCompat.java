package androidx.core.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class GestureDetectorCompat {
    private final GestureDetectorCompatImpl mImpl;

    interface GestureDetectorCompatImpl {
        boolean onTouchEvent(MotionEvent motionEvent);
    }

    static class GestureDetectorCompatImplBase implements GestureDetectorCompatImpl {
        private static final int LONG_PRESS = 2;
        private static final int SHOW_PRESS = 1;
        private static final int TAP = 3;
        private boolean mAlwaysInBiggerTapRegion;
        private boolean mAlwaysInTapRegion;
        MotionEvent mCurrentDownEvent;
        boolean mDeferConfirmSingleTap;
        GestureDetector.OnDoubleTapListener mDoubleTapListener;
        private int mDoubleTapSlopSquare;
        private float mDownFocusX;
        private float mDownFocusY;
        private final Handler mHandler;
        private boolean mInLongPress;
        private boolean mIsDoubleTapping;
        private boolean mIsLongpressEnabled;
        private float mLastFocusX;
        private float mLastFocusY;
        final GestureDetector.OnGestureListener mListener;
        private int mMaximumFlingVelocity;
        private int mMinimumFlingVelocity;
        private MotionEvent mPreviousUpEvent;
        boolean mStillDown;
        private int mTouchSlopSquare;
        private VelocityTracker mVelocityTracker;
        private static final int TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
        private static final int DOUBLE_TAP_TIMEOUT = ViewConfiguration.getDoubleTapTimeout();

        private class GestureHandler extends Handler {
            final /* synthetic */ GestureDetectorCompatImplBase this$0;

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i10 = message.what;
                if (i10 == 1) {
                    GestureDetectorCompatImplBase gestureDetectorCompatImplBase = this.this$0;
                    gestureDetectorCompatImplBase.mListener.onShowPress(gestureDetectorCompatImplBase.mCurrentDownEvent);
                    return;
                }
                if (i10 == 2) {
                    this.this$0.c();
                    return;
                }
                if (i10 != 3) {
                    throw new RuntimeException("Unknown message " + message);
                }
                GestureDetectorCompatImplBase gestureDetectorCompatImplBase2 = this.this$0;
                GestureDetector.OnDoubleTapListener onDoubleTapListener = gestureDetectorCompatImplBase2.mDoubleTapListener;
                if (onDoubleTapListener != null) {
                    if (gestureDetectorCompatImplBase2.mStillDown) {
                        gestureDetectorCompatImplBase2.mDeferConfirmSingleTap = true;
                    } else {
                        onDoubleTapListener.onSingleTapConfirmed(gestureDetectorCompatImplBase2.mCurrentDownEvent);
                    }
                }
            }
        }

        private void a() {
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
            this.mIsDoubleTapping = false;
            this.mStillDown = false;
            this.mAlwaysInTapRegion = false;
            this.mAlwaysInBiggerTapRegion = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mInLongPress) {
                this.mInLongPress = false;
            }
        }

        private void b() {
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mIsDoubleTapping = false;
            this.mAlwaysInTapRegion = false;
            this.mAlwaysInBiggerTapRegion = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mInLongPress) {
                this.mInLongPress = false;
            }
        }

        private boolean d(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            if (!this.mAlwaysInBiggerTapRegion || motionEvent3.getEventTime() - motionEvent2.getEventTime() > DOUBLE_TAP_TIMEOUT) {
                return false;
            }
            int x6 = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
            int y6 = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
            return (x6 * x6) + (y6 * y6) < this.mDoubleTapSlopSquare;
        }

        void c() {
            this.mHandler.removeMessages(3);
            this.mDeferConfirmSingleTap = false;
            this.mInLongPress = true;
            this.mListener.onLongPress(this.mCurrentDownEvent);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z6;
            int actionIndex;
            int i10;
            boolean zOnDoubleTap;
            MotionEvent motionEvent2;
            boolean zOnFling;
            GestureDetector.OnDoubleTapListener onDoubleTapListener;
            int action = motionEvent.getAction();
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            this.mVelocityTracker.addMovement(motionEvent);
            int i11 = action & 255;
            if (i11 == 6) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (z6) {
                actionIndex = motionEvent.getActionIndex();
            } else {
                actionIndex = -1;
            }
            int pointerCount = motionEvent.getPointerCount();
            float x6 = 0.0f;
            float y6 = 0.0f;
            for (int i12 = 0; i12 < pointerCount; i12++) {
                if (actionIndex != i12) {
                    x6 += motionEvent.getX(i12);
                    y6 += motionEvent.getY(i12);
                }
            }
            if (z6) {
                i10 = pointerCount - 1;
            } else {
                i10 = pointerCount;
            }
            float f = i10;
            float f6 = x6 / f;
            float f7 = y6 / f;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 != 5) {
                                if (i11 != 6) {
                                    return false;
                                }
                                this.mLastFocusX = f6;
                                this.mDownFocusX = f6;
                                this.mLastFocusY = f7;
                                this.mDownFocusY = f7;
                                this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
                                int actionIndex2 = motionEvent.getActionIndex();
                                int pointerId = motionEvent.getPointerId(actionIndex2);
                                float xVelocity = this.mVelocityTracker.getXVelocity(pointerId);
                                float yVelocity = this.mVelocityTracker.getYVelocity(pointerId);
                                for (int i13 = 0; i13 < pointerCount; i13++) {
                                    if (i13 != actionIndex2) {
                                        int pointerId2 = motionEvent.getPointerId(i13);
                                        if ((this.mVelocityTracker.getXVelocity(pointerId2) * xVelocity) + (this.mVelocityTracker.getYVelocity(pointerId2) * yVelocity) < 0.0f) {
                                            this.mVelocityTracker.clear();
                                            return false;
                                        }
                                    }
                                }
                                return false;
                            }
                            this.mLastFocusX = f6;
                            this.mDownFocusX = f6;
                            this.mLastFocusY = f7;
                            this.mDownFocusY = f7;
                            b();
                            return false;
                        }
                        a();
                        return false;
                    }
                    if (this.mInLongPress) {
                        return false;
                    }
                    float f10 = this.mLastFocusX - f6;
                    float f11 = this.mLastFocusY - f7;
                    if (this.mIsDoubleTapping) {
                        return this.mDoubleTapListener.onDoubleTapEvent(motionEvent);
                    }
                    if (this.mAlwaysInTapRegion) {
                        int i14 = (int) (f6 - this.mDownFocusX);
                        int i15 = (int) (f7 - this.mDownFocusY);
                        int i16 = (i14 * i14) + (i15 * i15);
                        if (i16 > this.mTouchSlopSquare) {
                            zOnFling = this.mListener.onScroll(this.mCurrentDownEvent, motionEvent, f10, f11);
                            this.mLastFocusX = f6;
                            this.mLastFocusY = f7;
                            this.mAlwaysInTapRegion = false;
                            this.mHandler.removeMessages(3);
                            this.mHandler.removeMessages(1);
                            this.mHandler.removeMessages(2);
                        } else {
                            zOnFling = false;
                        }
                        if (i16 > this.mTouchSlopSquare) {
                            this.mAlwaysInBiggerTapRegion = false;
                        }
                    } else {
                        if (Math.abs(f10) < 1.0f && Math.abs(f11) < 1.0f) {
                            return false;
                        }
                        boolean zOnScroll = this.mListener.onScroll(this.mCurrentDownEvent, motionEvent, f10, f11);
                        this.mLastFocusX = f6;
                        this.mLastFocusY = f7;
                        return zOnScroll;
                    }
                } else {
                    this.mStillDown = false;
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    if (this.mIsDoubleTapping) {
                        zOnFling = this.mDoubleTapListener.onDoubleTapEvent(motionEvent);
                    } else {
                        if (this.mInLongPress) {
                            this.mHandler.removeMessages(3);
                            this.mInLongPress = false;
                        } else if (this.mAlwaysInTapRegion) {
                            boolean zOnSingleTapUp = this.mListener.onSingleTapUp(motionEvent);
                            if (this.mDeferConfirmSingleTap && (onDoubleTapListener = this.mDoubleTapListener) != null) {
                                onDoubleTapListener.onSingleTapConfirmed(motionEvent);
                            }
                            zOnFling = zOnSingleTapUp;
                        } else {
                            VelocityTracker velocityTracker = this.mVelocityTracker;
                            int pointerId3 = motionEvent.getPointerId(0);
                            velocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
                            float yVelocity2 = velocityTracker.getYVelocity(pointerId3);
                            float xVelocity2 = velocityTracker.getXVelocity(pointerId3);
                            if (Math.abs(yVelocity2) > this.mMinimumFlingVelocity || Math.abs(xVelocity2) > this.mMinimumFlingVelocity) {
                                zOnFling = this.mListener.onFling(this.mCurrentDownEvent, motionEvent, xVelocity2, yVelocity2);
                            }
                        }
                        zOnFling = false;
                    }
                    MotionEvent motionEvent3 = this.mPreviousUpEvent;
                    if (motionEvent3 != null) {
                        motionEvent3.recycle();
                    }
                    this.mPreviousUpEvent = motionEventObtain;
                    VelocityTracker velocityTracker2 = this.mVelocityTracker;
                    if (velocityTracker2 != null) {
                        velocityTracker2.recycle();
                        this.mVelocityTracker = null;
                    }
                    this.mIsDoubleTapping = false;
                    this.mDeferConfirmSingleTap = false;
                    this.mHandler.removeMessages(1);
                    this.mHandler.removeMessages(2);
                }
                return zOnFling;
            }
            if (this.mDoubleTapListener != null) {
                boolean zHasMessages = this.mHandler.hasMessages(3);
                if (zHasMessages) {
                    this.mHandler.removeMessages(3);
                }
                MotionEvent motionEvent4 = this.mCurrentDownEvent;
                if (motionEvent4 != null && (motionEvent2 = this.mPreviousUpEvent) != null && zHasMessages && d(motionEvent4, motionEvent2, motionEvent)) {
                    this.mIsDoubleTapping = true;
                    zOnDoubleTap = this.mDoubleTapListener.onDoubleTap(this.mCurrentDownEvent) | this.mDoubleTapListener.onDoubleTapEvent(motionEvent);
                } else {
                    this.mHandler.sendEmptyMessageDelayed(3, DOUBLE_TAP_TIMEOUT);
                    zOnDoubleTap = false;
                }
            } else {
                zOnDoubleTap = false;
            }
            this.mLastFocusX = f6;
            this.mDownFocusX = f6;
            this.mLastFocusY = f7;
            this.mDownFocusY = f7;
            MotionEvent motionEvent5 = this.mCurrentDownEvent;
            if (motionEvent5 != null) {
                motionEvent5.recycle();
            }
            this.mCurrentDownEvent = MotionEvent.obtain(motionEvent);
            this.mAlwaysInTapRegion = true;
            this.mAlwaysInBiggerTapRegion = true;
            this.mStillDown = true;
            this.mInLongPress = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mIsLongpressEnabled) {
                this.mHandler.removeMessages(2);
                this.mHandler.sendEmptyMessageAtTime(2, this.mCurrentDownEvent.getDownTime() + ((long) TAP_TIMEOUT) + ((long) ViewConfiguration.getLongPressTimeout()));
            }
            this.mHandler.sendEmptyMessageAtTime(1, this.mCurrentDownEvent.getDownTime() + ((long) TAP_TIMEOUT));
            return zOnDoubleTap | this.mListener.onDown(motionEvent);
        }
    }

    static class GestureDetectorCompatImplJellybeanMr2 implements GestureDetectorCompatImpl {
        private final GestureDetector mDetector;

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.mDetector.onTouchEvent(motionEvent);
        }

        GestureDetectorCompatImplJellybeanMr2(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.mDetector = new GestureDetector(context, onGestureListener, handler);
        }
    }

    public GestureDetectorCompat(@NonNull Context context, @NonNull GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public GestureDetectorCompat(@NonNull Context context, @NonNull GestureDetector.OnGestureListener onGestureListener, @Nullable Handler handler) {
        this.mImpl = new GestureDetectorCompatImplJellybeanMr2(context, onGestureListener, handler);
    }

    public boolean a(@NonNull MotionEvent motionEvent) {
        return this.mImpl.onTouchEvent(motionEvent);
    }
}
