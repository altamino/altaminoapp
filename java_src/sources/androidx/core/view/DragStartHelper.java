package androidx.core.view;

import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes7.dex */
public class DragStartHelper {
    private boolean mDragging;
    private int mLastTouchX;
    private int mLastTouchY;
    private final OnDragStartListener mListener;
    private final View.OnLongClickListener mLongClickListener = new View.OnLongClickListener() { // from class: androidx.core.view.p
        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            return this.f186a.a(view);
        }
    };
    private final View.OnTouchListener mTouchListener = new View.OnTouchListener() { // from class: androidx.core.view.q
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return this.f187a.b(view, motionEvent);
        }
    };
    private final View mView;

    public interface OnDragStartListener {
        boolean a(@NonNull View view, @NonNull DragStartHelper dragStartHelper);
    }

    public boolean a(@NonNull View view) {
        return this.mListener.a(view, this);
    }

    public DragStartHelper(@NonNull View view, @NonNull OnDragStartListener onDragStartListener) {
        this.mView = view;
        this.mListener = onDragStartListener;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0046  */
    public boolean b(@NonNull View view, @NonNull MotionEvent motionEvent) {
        int x6 = (int) motionEvent.getX();
        int y6 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action == 3) {
                        this.mDragging = false;
                    }
                } else if (MotionEventCompat.h(motionEvent, 8194) && (motionEvent.getButtonState() & 1) != 0 && !this.mDragging && (this.mLastTouchX != x6 || this.mLastTouchY != y6)) {
                    this.mLastTouchX = x6;
                    this.mLastTouchY = y6;
                    boolean zA = this.mListener.a(view, this);
                    this.mDragging = zA;
                    return zA;
                }
            } else {
                this.mDragging = false;
            }
        } else {
            this.mLastTouchX = x6;
            this.mLastTouchY = y6;
        }
        return false;
    }
}
