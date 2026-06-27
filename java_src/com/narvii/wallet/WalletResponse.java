package com.narvii.wallet;

import com.narvii.model.api.ObjectResponse;

/* loaded from: classes3.dex */
public class WalletResponse extends ObjectResponse<Wallet> {
    public Wallet wallet;

    @Override // com.narvii.model.api.ObjectResponse
    public Wallet object() {
        return this.wallet;
    }
}
