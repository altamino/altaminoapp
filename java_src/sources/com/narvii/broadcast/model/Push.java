package com.narvii.broadcast.model;

/* JADX INFO: loaded from: classes5.dex */
public class Push {
    public PayloadBean payload;
    public int scheduledTime;

    public static class PayloadBean {
        public ApsBean aps;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public String f1850u;

        public static class ApsBean {
            public String alert;
        }
    }

    public Push() {
        PayloadBean payloadBean = new PayloadBean();
        this.payload = payloadBean;
        payloadBean.aps = new PayloadBean.ApsBean();
    }
}
