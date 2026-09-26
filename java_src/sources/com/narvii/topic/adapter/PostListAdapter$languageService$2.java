package com.narvii.topic.adapter;

import com.narvii.language.ContentLanguageService;

/* JADX INFO: loaded from: classes2.dex */
final class PostListAdapter$languageService$2 extends kotlin.jvm.internal.v implements e8.a<ContentLanguageService> {
    final /* synthetic */ PostListAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PostListAdapter$languageService$2(PostListAdapter postListAdapter) {
        super(0);
        this.this$0 = postListAdapter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ContentLanguageService invoke() {
        return (ContentLanguageService) this.this$0.getService("content_language");
    }
}
