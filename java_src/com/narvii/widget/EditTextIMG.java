package com.narvii.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.SystemClock;
import android.support.v4.internal.view.SupportMenu;
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

/* loaded from: classes3.dex */
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

    public EditTextIMG(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.actionCallback = new ActionMode.Callback() { // from class: com.narvii.widget.EditTextIMG.2
            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                EditTextIMG.this.inActionMode = true;
                EditTextIMG.this.prepareActionModeTime = SystemClock.uptimeMillis();
                ActionMode.Callback callback = EditTextIMG.this.imgMode;
                if (callback != null) {
                    return callback.onPrepareActionMode(actionMode, menu);
                }
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                EditTextIMG.this.inActionMode = false;
                ActionMode.Callback callback = EditTextIMG.this.imgMode;
                if (callback != null) {
                    callback.onDestroyActionMode(actionMode);
                }
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                ActionMode.Callback callback = EditTextIMG.this.imgMode;
                if (callback != null) {
                    return callback.onCreateActionMode(actionMode, menu);
                }
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                ActionMode.Callback callback = EditTextIMG.this.imgMode;
                if (callback == null || !callback.onActionItemClicked(actionMode, menuItem)) {
                    return false;
                }
                EditTextIMG.this.dismissActionMode();
                return true;
            }
        };
        this.gestureListener = new GestureDetector.OnGestureListener() { // from class: com.narvii.widget.EditTextIMG.3
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                if (EditTextIMG.this.getCurrentStatus() != EditTextIMG.this.statusBeforeTouch) {
                    return false;
                }
                EditTextIMG.this.showActionMode();
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                if (EditTextIMG.this.inActionMode) {
                    return;
                }
                EditTextIMG.this.showActionMode();
            }
        };
        this.gestureDetector = new GestureDetector(context, this.gestureListener);
        setCustomSelectionActionModeCallback(this.actionCallback);
        setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.narvii.widget.EditTextIMG.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return false;
            }
        });
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback) {
        ActionMode actionModeStartActionMode = super.startActionMode(callback);
        if (actionModeStartActionMode != null) {
            this.actionModeRef = new WeakReference<>(actionModeStartActionMode);
        }
        return actionModeStartActionMode;
    }

    public void showActionMode() {
        if (this.inActionMode) {
            return;
        }
        startActionMode(this.actionCallback);
    }

    public boolean dismissActionMode() {
        WeakReference<ActionMode> weakReference = this.actionModeRef;
        ActionMode actionMode = weakReference == null ? null : weakReference.get();
        if (actionMode != null) {
            actionMode.finish();
            this.inActionMode = false;
            return true;
        }
        this.actionModeRef = null;
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        if (!this.inActionMode || SystemClock.uptimeMillis() - this.prepareActionModeTime > 400) {
            super.onWindowFocusChanged(z);
        }
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        if (isFocused() && !this.inTouch && i == i2 && SystemClock.uptimeMillis() - this.changedTime > 100) {
            showActionMode();
        } else if (isFocusable() && this.inTouch) {
            dismissActionMode();
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        this.changedTime = SystemClock.uptimeMillis();
        dismissActionMode();
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        if (this.inActionMode && keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 4 && dismissActionMode()) {
            return true;
        }
        return super.onKeyPreIme(i, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            return;
        }
        dismissActionMode();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            dismissActionMode();
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public long getCurrentStatus() {
        return ((((getSelectionStart() & SupportMenu.USER_MASK) << 16) | (65535 & getSelectionEnd())) << 16) | (isFocused() ? 1L : 0L);
    }
}
