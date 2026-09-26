package com.narvii.chat.screenroom;

import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class k implements Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ScreenRoomService f2031a;

    public /* synthetic */ k(ScreenRoomService screenRoomService) {
        this.f2031a = screenRoomService;
    }

    @Override // com.narvii.util.Callback
    public final void call(Object obj) {
        this.f2031a.lambda$start$4((VideoPlayListener) obj);
    }
}
