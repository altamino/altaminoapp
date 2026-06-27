package com.narvii.util;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

/* loaded from: classes3.dex */
public class SoftKeyboard {
    public static void hideSoftKeyboard(Context context) {
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
            if (context instanceof Activity) {
                View currentFocus = ((Activity) context).getCurrentFocus();
                if (currentFocus == null) {
                    currentFocus = ((Activity) context).findViewById(R.id.content);
                }
                inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
            }
        } catch (Exception e) {
            Log.e("fail to hide keyboard", e);
        }
    }

    public static void hideSoftKeyboard(EditText editText) {
        try {
            ((InputMethodManager) editText.getContext().getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
        } catch (Exception e) {
            Log.e("fail to hide keyboard", e);
        }
    }

    public static void showSoftKeyboard(EditText editText) {
        if (editText == null) {
            return;
        }
        if (!editText.isFocused()) {
            editText.requestFocus();
        }
        try {
            ((InputMethodManager) editText.getContext().getSystemService("input_method")).showSoftInput(editText, 1);
        } catch (Exception e) {
            Log.e("fail to open keyboard", e);
        }
    }

    public static class KeyboardObserver implements ViewTreeObserver.OnGlobalLayoutListener {
        Callback<Boolean> listener;
        ViewTreeObserver observer;
        View rootView;
        int visible;

        KeyboardObserver(View view, Callback<Boolean> callback) {
            this.observer = view.getViewTreeObserver();
            this.rootView = view.getRootView();
            this.visible = isKeyboardShown(view.getRootView());
            this.listener = callback;
        }

        void register() {
            this.observer.addOnGlobalLayoutListener(this);
        }

        public void dispose() {
            if (this.observer.isAlive()) {
                this.observer.removeGlobalOnLayoutListener(this);
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int iIsKeyboardShown = isKeyboardShown(this.rootView);
            if (iIsKeyboardShown != this.visible) {
                this.visible = iIsKeyboardShown;
                this.listener.call(Boolean.valueOf(iIsKeyboardShown == 1));
            }
        }

        private int isKeyboardShown(View view) {
            if (view.getBottom() == 0) {
                return -1;
            }
            Rect rect = new Rect();
            view.getWindowVisibleDisplayFrame(rect);
            return view.getBottom() - rect.bottom > rect.height() / 6 ? 1 : 0;
        }
    }

    public static KeyboardObserver observeKeyboard(View view, Callback<Boolean> callback) {
        KeyboardObserver keyboardObserver = new KeyboardObserver(view, callback);
        keyboardObserver.register();
        return keyboardObserver;
    }
}
