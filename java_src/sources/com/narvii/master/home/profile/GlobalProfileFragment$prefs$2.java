package com.narvii.master.home.profile;

import android.content.SharedPreferences;
import com.narvii.app.incubator.IncubatorApplication;

/* JADX INFO: loaded from: classes2.dex */
final class GlobalProfileFragment$prefs$2 extends kotlin.jvm.internal.v implements e8.a<SharedPreferences> {
    final /* synthetic */ GlobalProfileFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GlobalProfileFragment$prefs$2(GlobalProfileFragment globalProfileFragment) {
        super(0);
        this.this$0 = globalProfileFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final SharedPreferences invoke() {
        return (SharedPreferences) this.this$0.getService(IncubatorApplication.PREFS_SERVICE_KEY);
    }
}
