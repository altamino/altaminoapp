package com.narvii.account.liveramp;

import ai.medialab.medialabads2.MediaLabAds;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class LiveRampHelper {
    public static final void clearLRUser() {
        setLRUserEmail(null);
        setLRUserPhone(null);
    }

    public static final void initLR(@NotNull LRUser user) {
        t.j(user, "user");
        String email = user.getEmail();
        if (email != null && !kotlin.text.t.z(email)) {
            setLRUserEmail(user.getEmail());
            return;
        }
        String phone = user.getPhone();
        if (phone != null && !kotlin.text.t.z(phone)) {
            setLRUserPhone(user.getPhone());
            return;
        }
        throw new IllegalStateException("Invalid Live Ramp User " + user);
    }

    public static final void setLRUserEmail(@Nullable String str) {
        MediaLabAds.Companion.getInstance().setUserEmail(str);
    }

    public static final void setLRUserPhone(@Nullable String str) {
        MediaLabAds.Companion.getInstance().setUserPhone(str);
    }
}
