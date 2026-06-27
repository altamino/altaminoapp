package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ContextAttributes {
    public static ContextAttributes getEmpty() {
        return Impl.getEmpty();
    }

    public static class Impl extends ContextAttributes implements Serializable {
        protected static final Impl EMPTY = new Impl(Collections.emptyMap());
        protected static final Object NULL_SURROGATE = new Object();
        private static final long serialVersionUID = 1;
        protected transient Map<Object, Object> _nonShared = null;
        protected final Map<Object, Object> _shared;

        protected Impl(Map<Object, Object> map) {
            this._shared = map;
        }

        public static ContextAttributes getEmpty() {
            return EMPTY;
        }
    }
}
