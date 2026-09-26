package com.narvii.topic.adapter;

import android.view.LayoutInflater;
import com.narvii.app.NVContext;

/* JADX INFO: loaded from: classes2.dex */
final class PostListAdapter$inflater$2 extends kotlin.jvm.internal.v implements e8.a<LayoutInflater> {
    final /* synthetic */ NVContext $ctx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PostListAdapter$inflater$2(NVContext nVContext) {
        super(0);
        this.$ctx = nVContext;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final LayoutInflater invoke() {
        return LayoutInflater.from(this.$ctx.getContext());
    }
}
