package com.narvii.wallet;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class PaidOutLog {
    public static final int PAID_OUT_TYPE_BANK = 1;
    public static final int PAID_OUT_TYPE_PAYPAL = 2;
    public double amount;
    public double coins;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public String currencyCode;
    public String paymentAccount;
    public int paymentMethod;
    public String transactionId;
}
