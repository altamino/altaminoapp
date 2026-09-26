package com.narvii.checkin;

import com.narvii.util.EventDispatcher;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class CheckInService$eventDispatchers$2 extends v implements e8.a<EventDispatcher<CheckInService.CheckInResponseListener>> {
    public static final CheckInService$eventDispatchers$2 INSTANCE = new CheckInService$eventDispatchers$2();

    CheckInService$eventDispatchers$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final EventDispatcher<CheckInService.CheckInResponseListener> invoke() {
        return new EventDispatcher<>();
    }
}
