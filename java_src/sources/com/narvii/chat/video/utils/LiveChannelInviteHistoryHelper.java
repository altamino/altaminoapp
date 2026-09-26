package com.narvii.chat.video.utils;

import android.os.SystemClock;
import com.narvii.livelayer.LiveLayerService;
import java.util.HashMap;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class LiveChannelInviteHistoryHelper {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final w7.m<LiveChannelInviteHistoryHelper> instance$delegate = w7.o.b(w7.q.SYNCHRONIZED, LiveChannelInviteHistoryHelper$Companion$instance$2.INSTANCE);

    @NotNull
    private final HashMap<String, HashMap<String, Long>> inviteAsSpeaker;

    @NotNull
    private final HashMap<String, HashMap<String, Long>> inviteMemberHistory;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final LiveChannelInviteHistoryHelper getInstance() {
            return (LiveChannelInviteHistoryHelper) LiveChannelInviteHistoryHelper.instance$delegate.getValue();
        }
    }

    public /* synthetic */ LiveChannelInviteHistoryHelper(kotlin.jvm.internal.k kVar) {
        this();
    }

    @NotNull
    public final HashMap<String, HashMap<String, Long>> getInviteAsSpeaker() {
        return this.inviteAsSpeaker;
    }

    @NotNull
    public final HashMap<String, HashMap<String, Long>> getInviteMemberHistory() {
        return this.inviteMemberHistory;
    }

    public final boolean isInvited(@Nullable String str, @Nullable String str2) {
        HashMap<String, Long> map;
        if (str2 == null || str == null || (map = this.inviteMemberHistory.get(str)) == null || !map.containsKey(str2)) {
            return false;
        }
        Long l = map.get(str2);
        if (l == null) {
            l = 0L;
        }
        return SystemClock.elapsedRealtime() - l.longValue() < 300000;
    }

    public final boolean isInvitedAsSpeaker(@Nullable String str, @Nullable String str2) {
        HashMap<String, Long> map;
        if (str2 == null || str == null || (map = this.inviteAsSpeaker.get(str)) == null || !map.containsKey(str2)) {
            return false;
        }
        Long l = map.get(str2);
        if (l == null) {
            l = 0L;
        }
        return SystemClock.elapsedRealtime() - l.longValue() < LiveLayerService.REFRESH_INTERVAL;
    }

    private LiveChannelInviteHistoryHelper() {
        this.inviteMemberHistory = new HashMap<>();
        this.inviteAsSpeaker = new HashMap<>();
    }

    public final void addInviteAsSpeakerLog(@Nullable String str, @Nullable String str2, long j6) {
        if (str == null || str2 == null || j6 <= 0) {
            return;
        }
        HashMap<String, Long> map = this.inviteAsSpeaker.get(str);
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(str2, Long.valueOf(j6));
        this.inviteAsSpeaker.put(str, map);
    }

    public final void addInviteUserLog(@Nullable String str, @Nullable String str2, long j6) {
        if (str == null || str2 == null || j6 <= 0) {
            return;
        }
        HashMap<String, Long> map = this.inviteMemberHistory.get(str);
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(str2, Long.valueOf(j6));
        this.inviteMemberHistory.put(str, map);
    }
}
