package com.narvii.broadcast.model;

/* loaded from: classes2.dex */
public class Push {
    public PayloadBean payload = new PayloadBean();
    public int scheduledTime;

    public static class PayloadBean {
        public ApsBean aps;
        public String u;

        public static class ApsBean {
            public String alert;
        }
    }

    public Push() {
        this.payload.aps = new PayloadBean.ApsBean();
    }
}
