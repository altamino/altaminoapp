package com.fasterxml.jackson.databind.util;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ViewMatcher {

    private static final class Multi extends ViewMatcher implements Serializable {
        private static final long serialVersionUID = 1;
        private final Class<?>[] _views;

        @Override // com.fasterxml.jackson.databind.util.ViewMatcher
        public boolean isVisibleForView(Class<?> cls) {
            int length = this._views.length;
            for (int i10 = 0; i10 < length; i10++) {
                Class<?> cls2 = this._views[i10];
                if (cls == cls2 || cls2.isAssignableFrom(cls)) {
                    return true;
                }
            }
            return false;
        }

        public Multi(Class<?>[] clsArr) {
            this._views = clsArr;
        }
    }

    private static final class Single extends ViewMatcher implements Serializable {
        private static final long serialVersionUID = 1;
        private final Class<?> _view;

        @Override // com.fasterxml.jackson.databind.util.ViewMatcher
        public boolean isVisibleForView(Class<?> cls) {
            Class<?> cls2 = this._view;
            return cls == cls2 || cls2.isAssignableFrom(cls);
        }

        public Single(Class<?> cls) {
            this._view = cls;
        }
    }

    public abstract boolean isVisibleForView(Class<?> cls);

    private static final class Empty extends ViewMatcher implements Serializable {
        static final Empty instance = new Empty();
        private static final long serialVersionUID = 1;

        @Override // com.fasterxml.jackson.databind.util.ViewMatcher
        public boolean isVisibleForView(Class<?> cls) {
            return false;
        }

        private Empty() {
        }
    }

    public static ViewMatcher construct(Class<?>[] clsArr) {
        if (clsArr == null) {
            return Empty.instance;
        }
        int length = clsArr.length;
        if (length != 0) {
            return length != 1 ? new Multi(clsArr) : new Single(clsArr[0]);
        }
        return Empty.instance;
    }
}
