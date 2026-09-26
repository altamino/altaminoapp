package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface n<Model, Data> {

    public static class a<Data> {
        public final List<com.bumptech.glide.load.g> alternateKeys;
        public final com.bumptech.glide.load.data.d<Data> fetcher;
        public final com.bumptech.glide.load.g sourceKey;

        public a(@NonNull com.bumptech.glide.load.g gVar, @NonNull com.bumptech.glide.load.data.d<Data> dVar) {
            this(gVar, Collections.emptyList(), dVar);
        }

        public a(@NonNull com.bumptech.glide.load.g gVar, @NonNull List<com.bumptech.glide.load.g> list, @NonNull com.bumptech.glide.load.data.d<Data> dVar) {
            this.sourceKey = (com.bumptech.glide.load.g) com.bumptech.glide.util.j.d(gVar);
            this.alternateKeys = (List) com.bumptech.glide.util.j.d(list);
            this.fetcher = (com.bumptech.glide.load.data.d) com.bumptech.glide.util.j.d(dVar);
        }
    }

    @Nullable
    a<Data> a(@NonNull Model model, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar);

    boolean b(@NonNull Model model);
}
