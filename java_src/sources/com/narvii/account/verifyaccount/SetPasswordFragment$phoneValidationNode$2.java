package com.narvii.account.verifyaccount;

import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.util.JacksonUtils;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class SetPasswordFragment$phoneValidationNode$2 extends v implements e8.a<ObjectNode> {
    final /* synthetic */ SetPasswordFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SetPasswordFragment$phoneValidationNode$2(SetPasswordFragment setPasswordFragment) {
        super(0);
        this.this$0 = setPasswordFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ObjectNode invoke() {
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        SetPasswordFragment setPasswordFragment = this.this$0;
        objectNodeCreateObjectNode.put("identity", setPasswordFragment.getPhone());
        objectNodeCreateObjectNode.put("type", 8);
        objectNodeCreateObjectNode.put("level", 1);
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode2.put("code", setPasswordFragment.getStringParam(SetPasswordFragment.KEY_LAST_VERIFY_CODE));
        l0 l0Var = l0.INSTANCE;
        objectNodeCreateObjectNode.put("data", objectNodeCreateObjectNode2);
        return objectNodeCreateObjectNode;
    }
}
