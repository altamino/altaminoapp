package com.narvii.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public class EditTextIMG extends EditTextLink {
    private final ActionMode.Callback actionCallback;
    private WeakReference<ActionMode> actionModeRef;
    private long changedTime;
    private GestureDetector gestureDetector;
    private final GestureDetector.OnGestureListener gestureListener;
    public ActionMode.Callback imgMode;
    private boolean inActionMode;
    private boolean inTouch;
    private long prepareActionModeTime;
    private long statusBeforeTouch;

    public boolean dismissActionMode() {
        WeakReference<ActionMode> weakReference = this.actionModeRef;
        ActionMode actionMode = weakReference == null ? null : weakReference.get();
        if (actionMode == null) {
            this.actionModeRef = null;
            return false;
        }
        actionMode.finish();
        this.inActionMode = false;
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i10, KeyEvent keyEvent) {
        if (this.inActionMode && keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 4 && dismissActionMode()) {
            return true;
        }
        return super.onKeyPreIme(i10, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z6) {
        if (!this.inActionMode || SystemClock.uptimeMillis() - this.prepareActionModeTime > 400) {
            super.onWindowFocusChanged(z6);
        }
    }

    public void showActionMode() {
        if (this.inActionMode) {
            return;
        }
        startActionMode(this.actionCallback);
    }

    public EditTextIMG(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ActionMode.Callback callback = new ActionMode.Callback() { // from class: com.narvii.widget.EditTextIMG.2
            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                ActionMode.Callback callback2 = EditTextIMG.this.imgMode;
                if (callback2 == null || !callback2.onActionItemClicked(actionMode, menuItem)) {
                    return false;
                }
                EditTextIMG.this.dismissActionMode();
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                ActionMode.Callback callback2 = EditTextIMG.this.imgMode;
                if (callback2 != null) {
                    return callback2.onCreateActionMode(actionMode, menu);
                }
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                EditTextIMG.this.inActionMode = false;
                ActionMode.Callback callback2 = EditTextIMG.this.imgMode;
                if (callback2 != null) {
                    callback2.onDestroyActionMode(actionMode);
                }
            }

            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                EditTextIMG.this.inActionMode = true;
                EditTextIMG.this.prepareActionModeTime = SystemClock.uptimeMillis();
                ActionMode.Callback callback2 = EditTextIMG.this.imgMode;
                if (callback2 != null) {
                    return callback2.onPrepareActionMode(actionMode, menu);
                }
                return true;
            }
        };
        this.actionCallback = callback;
        GestureDetector.OnGestureListener onGestureListener = new GestureDetector.OnGestureListener() { // from class: com.narvii.widget.EditTextIMG.3
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                if (EditTextIMG.this.inActionMode) {
                    return;
                }
                EditTextIMG.this.showActionMode();
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                if (EditTextIMG.this.getCurrentStatus() != EditTextIMG.this.statusBeforeTouch) {
                    return false;
                }
                EditTextIMG.this.showActionMode();
                return false;
            }
        };
        this.gestureListener = onGestureListener;
        this.gestureDetector = new GestureDetector(context, onGestureListener);
        setCustomSelectionActionModeCallback(callback);
        setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.narvii.widget.EditTextIMG.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getCurrentStatus() {
        return (((((long) (getSelectionStart() & 65535)) << 16) | ((long) (65535 & getSelectionEnd()))) << 16) | (isFocused() ? 1L : 0L);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z6, int i10, Rect rect) {
        super.onFocusChanged(z6, i10, rect);
        if (!z6) {
            dismissActionMode();
        }
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i10, int i11) {
        super.onSelectionChanged(i10, i11);
        if (isFocused() && !this.inTouch && i10 == i11 && SystemClock.uptimeMillis() - this.changedTime > 100) {
            showActionMode();
        } else if (isFocusable() && this.inTouch) {
            dismissActionMode();
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        this.changedTime = SystemClock.uptimeMillis();
        dismissActionMode();
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.inTouch = true;
            this.statusBeforeTouch = getCurrentStatus();
        }
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            this.inTouch = false;
        }
        this.gestureDetector.onTouchEvent(motionEvent);
        return zOnTouchEvent;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 != 0) {
            dismissActionMode();
        }
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback) {
        ActionMode actionModeStartActionMode = super.startActionMode(callback);
        if (actionModeStartActionMode != null) {
            this.actionModeRef = new WeakReference<>(actionModeStartActionMode);
        }
        return actionModeStartActionMode;
    }
}
