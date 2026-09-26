package com.narvii.account.verifyaccount;

import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.util.JacksonUtils;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class SetPasswordFragment$oldIdentityValidationNode$2 extends v implements e8.a<ObjectNode> {
    final /* synthetic */ SetPasswordFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SetPasswordFragment$oldIdentityValidationNode$2(SetPasswordFragment setPasswordFragment) {
        super(0);
        this.this$0 = setPasswordFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @Nullable
    public final ObjectNode invoke() {
        String oldIdentity = this.this$0.getOldIdentity();
        if (oldIdentity == null) {
            return null;
        }
        SetPasswordFragment setPasswordFragment = this.this$0;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("identity", oldIdentity);
        objectNodeCreateObjectNode.put("type", setPasswordFragment.getOldIdentityType());
        if (setPasswordFragment.getOldIdentityType() == 1) {
            objectNodeCreateObjectNode.put("level", 2);
        } else {
            objectNodeCreateObjectNode.put("level", 1);
        }
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode2.put("code", setPasswordFragment.getOldCode());
        l0 l0Var = l0.INSTANCE;
        objectNodeCreateObjectNode.put("data", objectNodeCreateObjectNode2);
        return objectNodeCreateObjectNode;
    }
}
