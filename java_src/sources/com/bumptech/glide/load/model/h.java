package com.bumptech.glide.load.model;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface h {

    @Deprecated
    public static final h NONE = new a();
    public static final h DEFAULT = new j.a().a();

    Map<String, String> getHeaders();

    class a implements h {
        a() {
        }

        @Override // com.bumptech.glide.load.model.h
        public Map<String, String> getHeaders() {
            return Collections.emptyMap();
        }
    }
}
