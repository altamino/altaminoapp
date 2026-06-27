package com.narvii.chat.setting.helper;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.util.Utils;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatWaitingListService.kt */
/* loaded from: classes.dex */
public final class ChatWaitingListServiceKt {
    /* JADX WARN: Removed duplicated region for block: B:25:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void doJoinCancelIfInWaitingList(com.narvii.app.NVContext r6, com.narvii.pushservice.PushPayload r7) {
        /*
            java.lang.String r0 = "ctx"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r6, r0)
            if (r7 == 0) goto L6b
            java.lang.String r7 = r7.threadId
            if (r7 == 0) goto L6b
            java.lang.String r0 = "signalling"
            java.lang.Object r0 = r6.getService(r0)
            com.narvii.chat.signalling.SignallingService r0 = (com.narvii.chat.signalling.SignallingService) r0
            com.narvii.chat.signalling.SignallingChannel r0 = r0.getChannelByThread(r7)
            if (r0 == 0) goto L6b
            int r1 = r0.ndcId
            java.lang.String r2 = "account"
            java.lang.Object r2 = r6.getService(r2)
            com.narvii.account.AccountService r2 = (com.narvii.account.AccountService) r2
            com.narvii.model.User r2 = r2.getUserProfile(r1)
            java.util.List<com.narvii.model.User> r0 = r0.userWaitList
            if (r0 == 0) goto L55
            java.util.Iterator r0 = r0.iterator()
        L30:
            boolean r3 = r0.hasNext()
            r4 = 0
            if (r3 == 0) goto L4b
            java.lang.Object r3 = r0.next()
            r5 = r3
            com.narvii.model.User r5 = (com.narvii.model.User) r5
            java.lang.String r5 = r5.uid
            if (r2 == 0) goto L44
            java.lang.String r4 = r2.uid
        L44:
            boolean r4 = com.narvii.util.Utils.isEqualsNotNull(r5, r4)
            if (r4 == 0) goto L30
            goto L4c
        L4b:
            r3 = r4
        L4c:
            com.narvii.model.User r3 = (com.narvii.model.User) r3
            if (r3 == 0) goto L55
            java.lang.String r0 = r3.uid
            if (r0 == 0) goto L55
            goto L57
        L55:
            java.lang.String r0 = ""
        L57:
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L6b
            java.lang.String r2 = "rtc"
            java.lang.Object r6 = r6.getService(r2)
            com.narvii.chat.rtc.RtcService r6 = (com.narvii.chat.rtc.RtcService) r6
            com.narvii.chat.setting.helper.ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1 r2 = new com.narvii.util.Callback<com.narvii.chat.signalling.SignallingChannel>() { // from class: com.narvii.chat.setting.helper.ChatWaitingListServiceKt.doJoinCancelIfInWaitingList.1
                static {
                    /*
                        com.narvii.chat.setting.helper.ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1 r0 = new com.narvii.chat.setting.helper.ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.narvii.chat.setting.helper.ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1) com.narvii.chat.setting.helper.ChatWaitingListServiceKt.doJoinCancelIfInWaitingList.1.INSTANCE com.narvii.chat.setting.helper.ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.setting.helper.ChatWaitingListServiceKt.AnonymousClass1.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.setting.helper.ChatWaitingListServiceKt.AnonymousClass1.<init>():void");
                }

                @Override // com.narvii.util.Callback
                public final void call(com.narvii.chat.signalling.SignallingChannel r1) {
                    /*
                        r0 = this;
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.setting.helper.ChatWaitingListServiceKt.AnonymousClass1.call(com.narvii.chat.signalling.SignallingChannel):void");
                }

                @Override // com.narvii.util.Callback
                public /* bridge */ /* synthetic */ void call(com.narvii.chat.signalling.SignallingChannel r1) {
                    /*
                        r0 = this;
                        com.narvii.chat.signalling.SignallingChannel r1 = (com.narvii.chat.signalling.SignallingChannel) r1
                        r0.call(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.setting.helper.ChatWaitingListServiceKt.AnonymousClass1.call(java.lang.Object):void");
                }
            }
            r6.waitListJoinCancel(r1, r7, r0, r2)
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.setting.helper.ChatWaitingListServiceKt.doJoinCancelIfInWaitingList(com.narvii.app.NVContext, com.narvii.pushservice.PushPayload):void");
    }

    public static final boolean isCurrentUserInWaitingList(NVContext ctx, List<? extends User> list) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Object service = ctx.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService<AccountService>(\"account\")");
        User userProfile = ((AccountService) service).getUserProfile();
        if (list == null) {
            return false;
        }
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (Utils.isEqualsNotNull(((User) it.next()).uid, userProfile != null ? userProfile.uid : null)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean isCurrentUserSpeaker(com.narvii.app.NVContext r7) {
        /*
            java.lang.String r0 = "ctx"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r7, r0)
            java.lang.String r0 = "account"
            java.lang.Object r0 = r7.getService(r0)
            java.lang.String r1 = "ctx.getService<AccountService>(\"account\")"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            com.narvii.account.AccountService r0 = (com.narvii.account.AccountService) r0
            com.narvii.model.User r0 = r0.getUserProfile()
            java.lang.String r1 = "rtc"
            java.lang.Object r7 = r7.getService(r1)
            com.narvii.chat.rtc.RtcService r7 = (com.narvii.chat.rtc.RtcService) r7
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r1)
            java.util.Collection r7 = r7.getMainChannelChannelUserList()
            r1 = 1
            r2 = 0
            if (r7 == 0) goto L7b
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.Iterator r7 = r7.iterator()
        L33:
            boolean r4 = r7.hasNext()
            if (r4 == 0) goto L4f
            java.lang.Object r4 = r7.next()
            r5 = r4
            com.narvii.chat.signalling.ChannelUser r5 = (com.narvii.chat.signalling.ChannelUser) r5
            java.lang.String r6 = "it"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r6)
            boolean r5 = r5.isSpeaker()
            if (r5 == 0) goto L33
            r3.add(r4)
            goto L33
        L4f:
            boolean r7 = r3.isEmpty()
            if (r7 == 0) goto L57
        L55:
            r7 = 0
            goto L78
        L57:
            java.util.Iterator r7 = r3.iterator()
        L5b:
            boolean r3 = r7.hasNext()
            if (r3 == 0) goto L55
            java.lang.Object r3 = r7.next()
            com.narvii.chat.signalling.ChannelUser r3 = (com.narvii.chat.signalling.ChannelUser) r3
            java.lang.String r3 = r3.uid()
            if (r0 == 0) goto L70
            java.lang.String r4 = r0.uid
            goto L71
        L70:
            r4 = 0
        L71:
            boolean r3 = com.narvii.util.Utils.isEqualsNotNull(r3, r4)
            if (r3 == 0) goto L5b
            r7 = 1
        L78:
            if (r7 != r1) goto L7b
            goto L7c
        L7b:
            r1 = 0
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.setting.helper.ChatWaitingListServiceKt.isCurrentUserSpeaker(com.narvii.app.NVContext):boolean");
    }
}
