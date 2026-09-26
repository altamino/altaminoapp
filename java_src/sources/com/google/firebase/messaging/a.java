package com.google.firebase.messaging;

import androidx.core.app.NotificationCompat;
import com.narvii.chat.ChatMessageItemDetailFragment;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements k4.a {
    public static final int CODEGEN_VERSION = 2;
    public static final k4.a CONFIG = new a();

    /* JADX INFO: renamed from: com.google.firebase.messaging.a$a, reason: collision with other inner class name */
    private static final class C0259a implements j4.d<t4.a> {
        static final C0259a INSTANCE = new C0259a();
        private static final j4.c PROJECTNUMBER_DESCRIPTOR = j4.c.a("projectNumber").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
        private static final j4.c MESSAGEID_DESCRIPTOR = j4.c.a(ChatMessageItemDetailFragment.KEY_MESSAGE_ID).b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();
        private static final j4.c INSTANCEID_DESCRIPTOR = j4.c.a("instanceId").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();
        private static final j4.c MESSAGETYPE_DESCRIPTOR = j4.c.a("messageType").b(com.google.firebase.encoders.proto.a.b().c(4).a()).a();
        private static final j4.c SDKPLATFORM_DESCRIPTOR = j4.c.a("sdkPlatform").b(com.google.firebase.encoders.proto.a.b().c(5).a()).a();
        private static final j4.c PACKAGENAME_DESCRIPTOR = j4.c.a("packageName").b(com.google.firebase.encoders.proto.a.b().c(6).a()).a();
        private static final j4.c COLLAPSEKEY_DESCRIPTOR = j4.c.a("collapseKey").b(com.google.firebase.encoders.proto.a.b().c(7).a()).a();
        private static final j4.c PRIORITY_DESCRIPTOR = j4.c.a("priority").b(com.google.firebase.encoders.proto.a.b().c(8).a()).a();
        private static final j4.c TTL_DESCRIPTOR = j4.c.a("ttl").b(com.google.firebase.encoders.proto.a.b().c(9).a()).a();
        private static final j4.c TOPIC_DESCRIPTOR = j4.c.a("topic").b(com.google.firebase.encoders.proto.a.b().c(10).a()).a();
        private static final j4.c BULKID_DESCRIPTOR = j4.c.a("bulkId").b(com.google.firebase.encoders.proto.a.b().c(11).a()).a();
        private static final j4.c EVENT_DESCRIPTOR = j4.c.a(NotificationCompat.CATEGORY_EVENT).b(com.google.firebase.encoders.proto.a.b().c(12).a()).a();
        private static final j4.c ANALYTICSLABEL_DESCRIPTOR = j4.c.a("analyticsLabel").b(com.google.firebase.encoders.proto.a.b().c(13).a()).a();
        private static final j4.c CAMPAIGNID_DESCRIPTOR = j4.c.a("campaignId").b(com.google.firebase.encoders.proto.a.b().c(14).a()).a();
        private static final j4.c COMPOSERLABEL_DESCRIPTOR = j4.c.a("composerLabel").b(com.google.firebase.encoders.proto.a.b().c(15).a()).a();

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(t4.a aVar, j4.e eVar) throws IOException {
            eVar.e(PROJECTNUMBER_DESCRIPTOR, aVar.l());
            eVar.c(MESSAGEID_DESCRIPTOR, aVar.h());
            eVar.c(INSTANCEID_DESCRIPTOR, aVar.g());
            eVar.c(MESSAGETYPE_DESCRIPTOR, aVar.i());
            eVar.c(SDKPLATFORM_DESCRIPTOR, aVar.m());
            eVar.c(PACKAGENAME_DESCRIPTOR, aVar.j());
            eVar.c(COLLAPSEKEY_DESCRIPTOR, aVar.d());
            eVar.f(PRIORITY_DESCRIPTOR, aVar.k());
            eVar.f(TTL_DESCRIPTOR, aVar.o());
            eVar.c(TOPIC_DESCRIPTOR, aVar.n());
            eVar.e(BULKID_DESCRIPTOR, aVar.b());
            eVar.c(EVENT_DESCRIPTOR, aVar.f());
            eVar.c(ANALYTICSLABEL_DESCRIPTOR, aVar.a());
            eVar.e(CAMPAIGNID_DESCRIPTOR, aVar.c());
            eVar.c(COMPOSERLABEL_DESCRIPTOR, aVar.e());
        }

        private C0259a() {
        }
    }

    private static final class b implements j4.d<t4.b> {
        static final b INSTANCE = new b();
        private static final j4.c MESSAGINGCLIENTEVENT_DESCRIPTOR = j4.c.a("messagingClientEvent").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(t4.b bVar, j4.e eVar) throws IOException {
            eVar.c(MESSAGINGCLIENTEVENT_DESCRIPTOR, bVar.a());
        }

        private b() {
        }
    }

    private static final class c implements j4.d<i0> {
        static final c INSTANCE = new c();
        private static final j4.c MESSAGINGCLIENTEVENTEXTENSION_DESCRIPTOR = j4.c.d("messagingClientEventExtension");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(i0 i0Var, j4.e eVar) throws IOException {
            eVar.c(MESSAGINGCLIENTEVENTEXTENSION_DESCRIPTOR, i0Var.b());
        }

        private c() {
        }
    }

    @Override // k4.a
    public void a(k4.b<?> bVar) {
        bVar.a(i0.class, c.INSTANCE);
        bVar.a(t4.b.class, b.INSTANCE);
        bVar.a(t4.a.class, C0259a.INSTANCE);
    }

    private a() {
    }
}
