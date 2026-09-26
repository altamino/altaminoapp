package com.narvii.topic.adapter;

import com.narvii.app.NVContext;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class PostListAdapter$proxyAdapter$2 extends kotlin.jvm.internal.v implements e8.a<PostListAdapter.PostSectionAdapter> {
    final /* synthetic */ NVContext $ctx;
    final /* synthetic */ PostListAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PostListAdapter$proxyAdapter$2(PostListAdapter postListAdapter, NVContext nVContext) {
        super(0);
        this.this$0 = postListAdapter;
        this.$ctx = nVContext;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final PostListAdapter.PostSectionAdapter invoke() {
        return new PostListAdapter.PostSectionAdapter(this.this$0, this.$ctx);
    }
}
