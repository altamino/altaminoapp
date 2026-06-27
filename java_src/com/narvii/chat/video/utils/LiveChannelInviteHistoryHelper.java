package com.narvii.chat.video.utils;

import android.os.SystemClock;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: LiveChannelInviteHistoryHelper.kt */
/* loaded from: classes2.dex */
public final class LiveChannelInviteHistoryHelper {
    public static final Companion Companion = new Companion(null);
    private static final Lazy instance$delegate = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<LiveChannelInviteHistoryHelper>() { // from class: com.narvii.chat.video.utils.LiveChannelInviteHistoryHelper$Companion$instance$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final LiveChannelInviteHistoryHelper invoke() {
            return new LiveChannelInviteHistoryHelper(null);
        }
    });
    private final HashMap<String, HashMap<String, Long>> inviteAsSpeaker;
    private final HashMap<String, HashMap<String, Long>> inviteMemberHistory;

    private LiveChannelInviteHistoryHelper() {
        this.inviteMemberHistory = new HashMap<>();
        this.inviteAsSpeaker = new HashMap<>();
    }

    public /* synthetic */ LiveChannelInviteHistoryHelper(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: LiveChannelInviteHistoryHelper.kt */
    public static final class Companion {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Companion.class), "instance", "getInstance()Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;"))};

        public final LiveChannelInviteHistoryHelper getInstance() {
            Lazy lazy = LiveChannelInviteHistoryHelper.instance$delegate;
            Companion companion = LiveChannelInviteHistoryHelper.Companion;
            KProperty kProperty = $$delegatedProperties[0];
            return (LiveChannelInviteHistoryHelper) lazy.getValue();
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final HashMap<String, HashMap<String, Long>> getInviteMemberHistory() {
        return this.inviteMemberHistory;
    }

    public final HashMap<String, HashMap<String, Long>> getInviteAsSpeaker() {
        return this.inviteAsSpeaker;
    }

    public final void addInviteUserLog(String str, String str2, long j) {
        if (str == null || str2 == null || j <= 0) {
            return;
        }
        HashMap<String, Long> map = this.inviteMemberHistory.get(str);
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(str2, Long.valueOf(j));
        this.inviteMemberHistory.put(str, map);
    }

    public final boolean isInvited(String str, String str2) {
        HashMap<String, Long> map;
        if (str2 == null || str == null || (map = this.inviteMemberHistory.get(str)) == null || !map.containsKey(str2)) {
            return false;
        }
        Long l = map.get(str2);
        if (l == null) {
            l = 0L;
        }
        Intrinsics.checkExpressionValueIsNotNull(l, "inThreadUserList[uid] ?: 0");
        return SystemClock.elapsedRealtime() - l.longValue() < ((long) 300000);
    }

    public final void addInviteAsSpeakerLog(String str, String str2, long j) {
        if (str == null || str2 == null || j <= 0) {
            return;
        }
        HashMap<String, Long> map = this.inviteAsSpeaker.get(str);
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(str2, Long.valueOf(j));
        this.inviteAsSpeaker.put(str, map);
    }

    public final boolean isInvitedAsSpeaker(String str, String str2) {
        HashMap<String, Long> map;
        if (str2 == null || str == null || (map = this.inviteAsSpeaker.get(str)) == null || !map.containsKey(str2)) {
            return false;
        }
        Long l = map.get(str2);
        if (l == null) {
            l = 0L;
        }
        Intrinsics.checkExpressionValueIsNotNull(l, "inviteMap[uid] ?: 0");
        return SystemClock.elapsedRealtime() - l.longValue() < ((long) 180000);
    }
}
