package com.narvii.livelayer.ws;

import com.narvii.model.User;
import java.util.List;

/* loaded from: classes3.dex */
public interface LiveLayerEventListener {
    void onUserJoined(String str, List<User> list, int i);

    void onUserLeft(String str, List<User> list, int i);
}
