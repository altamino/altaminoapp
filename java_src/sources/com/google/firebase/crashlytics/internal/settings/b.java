package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.w;
import com.narvii.broadcast.DeliveryTimePickerFragment;
import com.narvii.invite.InviteMembersFragment;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
class b implements h {
    static d b(w wVar) {
        return new d(wVar.a() + ((long) DeliveryTimePickerFragment.ONE_HOUR), new d.b(8, 4), new d.a(true, false, false), 0, InviteMembersFragment.SECOND_HOUR, 10.0d, 1.2d, 60);
    }

    b() {
    }

    @Override // com.google.firebase.crashlytics.internal.settings.h
    public d a(w wVar, JSONObject jSONObject) {
        return b(wVar);
    }
}
