package com.narvii.wallet;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ApiResponse;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class OfferVendorResponse extends ApiResponse {

    @JsonDeserialize(contentAs = OfferVendor.class)
    public ArrayList<OfferVendor> vendorList;
}
