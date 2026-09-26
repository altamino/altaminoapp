package com.narvii.livelayer.ws;

import com.narvii.model.User;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public interface LiveLayerEventListener {
    void onUserJoined(String str, List<User> list, int i10);

    void onUserLeft(String str, List<User> list, int i10);
}
