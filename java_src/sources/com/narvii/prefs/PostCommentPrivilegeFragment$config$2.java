package com.narvii.prefs;

import com.narvii.config.ConfigService;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes3.dex */
final class PostCommentPrivilegeFragment$config$2 extends v implements e8.a<ConfigService> {
    final /* synthetic */ PostCommentPrivilegeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PostCommentPrivilegeFragment$config$2(PostCommentPrivilegeFragment postCommentPrivilegeFragment) {
        super(0);
        this.this$0 = postCommentPrivilegeFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ConfigService invoke() {
        return (ConfigService) this.this$0.getService("config");
    }
}
