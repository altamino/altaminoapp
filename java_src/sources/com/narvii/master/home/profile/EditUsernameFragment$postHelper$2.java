package com.narvii.master.home.profile;

import com.narvii.post.PostHelper;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class EditUsernameFragment$postHelper$2 extends kotlin.jvm.internal.v implements e8.a<PostHelper> {
    final /* synthetic */ EditUsernameFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EditUsernameFragment$postHelper$2(EditUsernameFragment editUsernameFragment) {
        super(0);
        this.this$0 = editUsernameFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final PostHelper invoke() {
        return new PostHelper(this.this$0);
    }
}
