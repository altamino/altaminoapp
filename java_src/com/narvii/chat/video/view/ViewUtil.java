package com.narvii.chat.video.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.narvii.video.ui.Utils;
import com.narvii.video.ui.VideoInfoData;

/* loaded from: classes2.dex */
public class ViewUtil {
    protected static final boolean DEBUG_ENABLED = false;
    private static final int DEFAULT_TOUCH_TIMESTAMP = -1;
    private static final int TOUCH_COOL_DOWN_TIME = 500;
    private static long mLastTouchTime = -1;

    static final boolean checkDoubleTouchEvent(MotionEvent motionEvent, View view) {
        Utils.log("dispatchTouchEvent " + mLastTouchTime + " " + motionEvent);
        if (motionEvent.getAction() == 0) {
            if (mLastTouchTime == -1 || SystemClock.elapsedRealtime() - mLastTouchTime >= 500) {
                mLastTouchTime = SystemClock.elapsedRealtime();
            } else {
                Utils.log("too many touch events " + view + " 0");
                return true;
            }
        }
        return false;
    }

    static final boolean checkDoubleKeyEvent(KeyEvent keyEvent, View view) {
        Utils.log("dispatchKeyEvent " + mLastTouchTime + " " + keyEvent);
        if (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 66) {
            if (mLastTouchTime != -1 && SystemClock.elapsedRealtime() - mLastTouchTime < 500) {
                Utils.log("too many key events " + view + " 0");
                return true;
            }
            mLastTouchTime = SystemClock.elapsedRealtime();
        }
        return false;
    }

    public static void setBackground(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    public static String composeVideoInfoString(Context context, VideoInfoData videoInfoData) {
        return videoInfoData.mWidth + "x" + videoInfoData.mHeight + ", " + videoInfoData.mFrameRate + ", " + videoInfoData.mBitRate;
    }
}
