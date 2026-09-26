package com.narvii.wallet.optinads;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes9.dex */
class AdsContext extends ContextWrapper {
    public void attach(Context context) {
        try {
            Field declaredField = ContextWrapper.class.getDeclaredField("mBase");
            declaredField.setAccessible(true);
            declaredField.set(this, context);
        } catch (Exception unused) {
        }
    }

    public AdsContext(Context context) {
        super(context);
    }

    public View inflate(int i10, ViewGroup viewGroup) {
        return LayoutInflater.from(this).cloneInContext(this).inflate(i10, viewGroup, false);
    }
}
