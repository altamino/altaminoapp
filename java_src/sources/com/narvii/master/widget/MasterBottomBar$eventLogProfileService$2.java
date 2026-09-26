package com.narvii.master.widget;

import android.content.Context;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.Utils;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes8.dex */
final class MasterBottomBar$eventLogProfileService$2 extends v implements e8.a<EventLogProfileService> {
    final /* synthetic */ Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MasterBottomBar$eventLogProfileService$2(Context context) {
        super(0);
        this.$context = context;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final EventLogProfileService invoke() {
        return (EventLogProfileService) Utils.getNVContext(this.$context).getService("eventLogProfile");
    }
}
