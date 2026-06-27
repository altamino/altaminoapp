package com.narvii.wallet;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class ProductListResponse extends ListResponse<Product> {

    @JsonDeserialize(contentAs = Product.class)
    public ArrayList<Product> productList;

    @Override // com.narvii.model.api.ListResponse
    public List<Product> list() {
        return this.productList;
    }
}
