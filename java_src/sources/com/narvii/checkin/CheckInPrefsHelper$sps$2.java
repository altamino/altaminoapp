package com.narvii.checkin;

import android.content.SharedPreferences;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes5.dex */
final class CheckInPrefsHelper$sps$2 extends v implements e8.a<SharedPreferences> {
    final /* synthetic */ CheckInPrefsHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CheckInPrefsHelper$sps$2(CheckInPrefsHelper checkInPrefsHelper) {
        super(0);
        this.this$0 = checkInPrefsHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final SharedPreferences invoke() {
        return this.this$0.getContext().getSharedPreferences(CheckInPrefsHelper.SHARED_PREFS_NAME, 0);
    }
}
