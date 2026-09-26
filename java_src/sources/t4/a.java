package t4;

/* JADX INFO: loaded from: classes9.dex */
public final class a {
    private static final a DEFAULT_INSTANCE = new C0497a().a();
    private final String analytics_label_;
    private final long bulk_id_;
    private final long campaign_id_;
    private final String collapse_key_;
    private final String composer_label_;
    private final b event_;
    private final String instance_id_;
    private final String message_id_;
    private final c message_type_;
    private final String package_name_;
    private final int priority_;
    private final long project_number_;
    private final d sdk_platform_;
    private final String topic_;
    private final int ttl_;

    /* JADX INFO: renamed from: t4.a$a, reason: collision with other inner class name */
    public static final class C0497a {
        private long project_number_ = 0;
        private String message_id_ = "";
        private String instance_id_ = "";
        private c message_type_ = c.UNKNOWN;
        private d sdk_platform_ = d.UNKNOWN_OS;
        private String package_name_ = "";
        private String collapse_key_ = "";
        private int priority_ = 0;
        private int ttl_ = 0;
        private String topic_ = "";
        private long bulk_id_ = 0;
        private b event_ = b.UNKNOWN_EVENT;
        private String analytics_label_ = "";
        private long campaign_id_ = 0;
        private String composer_label_ = "";

        public C0497a b(String str) {
            this.analytics_label_ = str;
            return this;
        }

        public C0497a c(String str) {
            this.collapse_key_ = str;
            return this;
        }

        public C0497a d(String str) {
            this.composer_label_ = str;
            return this;
        }

        public C0497a e(b bVar) {
            this.event_ = bVar;
            return this;
        }

        public C0497a f(String str) {
            this.instance_id_ = str;
            return this;
        }

        public C0497a g(String str) {
            this.message_id_ = str;
            return this;
        }

        public C0497a h(c cVar) {
            this.message_type_ = cVar;
            return this;
        }

        public C0497a i(String str) {
            this.package_name_ = str;
            return this;
        }

        public C0497a j(long j6) {
            this.project_number_ = j6;
            return this;
        }

        public C0497a k(d dVar) {
            this.sdk_platform_ = dVar;
            return this;
        }

        public C0497a l(String str) {
            this.topic_ = str;
            return this;
        }

        public C0497a m(int i10) {
            this.ttl_ = i10;
            return this;
        }

        public a a() {
            return new a(this.project_number_, this.message_id_, this.instance_id_, this.message_type_, this.sdk_platform_, this.package_name_, this.collapse_key_, this.priority_, this.ttl_, this.topic_, this.bulk_id_, this.event_, this.analytics_label_, this.campaign_id_, this.composer_label_);
        }

        C0497a() {
        }
    }

    a(long j6, String str, String str2, c cVar, d dVar, String str3, String str4, int i10, int i11, String str5, long j10, b bVar, String str6, long j11, String str7) {
        this.project_number_ = j6;
        this.message_id_ = str;
        this.instance_id_ = str2;
        this.message_type_ = cVar;
        this.sdk_platform_ = dVar;
        this.package_name_ = str3;
        this.collapse_key_ = str4;
        this.priority_ = i10;
        this.ttl_ = i11;
        this.topic_ = str5;
        this.bulk_id_ = j10;
        this.event_ = bVar;
        this.analytics_label_ = str6;
        this.campaign_id_ = j11;
        this.composer_label_ = str7;
    }

    @com.google.firebase.encoders.proto.d(tag = 13)
    public String a() {
        return this.analytics_label_;
    }

    @com.google.firebase.encoders.proto.d(tag = 11)
    public long b() {
        return this.bulk_id_;
    }

    @com.google.firebase.encoders.proto.d(tag = 14)
    public long c() {
        return this.campaign_id_;
    }

    @com.google.firebase.encoders.proto.d(tag = 7)
    public String d() {
        return this.collapse_key_;
    }

    @com.google.firebase.encoders.proto.d(tag = 15)
    public String e() {
        return this.composer_label_;
    }

    @com.google.firebase.encoders.proto.d(tag = 12)
    public b f() {
        return this.event_;
    }

    @com.google.firebase.encoders.proto.d(tag = 3)
    public String g() {
        return this.instance_id_;
    }

    @com.google.firebase.encoders.proto.d(tag = 2)
    public String h() {
        return this.message_id_;
    }

    @com.google.firebase.encoders.proto.d(tag = 4)
    public c i() {
        return this.message_type_;
    }

    @com.google.firebase.encoders.proto.d(tag = 6)
    public String j() {
        return this.package_name_;
    }

    @com.google.firebase.encoders.proto.d(tag = 8)
    public int k() {
        return this.priority_;
    }

    @com.google.firebase.encoders.proto.d(tag = 1)
    public long l() {
        return this.project_number_;
    }

    @com.google.firebase.encoders.proto.d(tag = 5)
    public d m() {
        return this.sdk_platform_;
    }

    @com.google.firebase.encoders.proto.d(tag = 10)
    public String n() {
        return this.topic_;
    }

    @com.google.firebase.encoders.proto.d(tag = 9)
    public int o() {
        return this.ttl_;
    }

    public enum b implements com.google.firebase.encoders.proto.c {
        UNKNOWN_EVENT(0),
        MESSAGE_DELIVERED(1),
        MESSAGE_OPEN(2);

        private final int number_;

        @Override // com.google.firebase.encoders.proto.c
        public int getNumber() {
            return this.number_;
        }

        b(int i10) {
            this.number_ = i10;
        }
    }

    public enum c implements com.google.firebase.encoders.proto.c {
        UNKNOWN(0),
        DATA_MESSAGE(1),
        TOPIC(2),
        DISPLAY_NOTIFICATION(3);

        private final int number_;

        @Override // com.google.firebase.encoders.proto.c
        public int getNumber() {
            return this.number_;
        }

        c(int i10) {
            this.number_ = i10;
        }
    }

    public enum d implements com.google.firebase.encoders.proto.c {
        UNKNOWN_OS(0),
        ANDROID(1),
        IOS(2),
        WEB(3);

        private final int number_;

        @Override // com.google.firebase.encoders.proto.c
        public int getNumber() {
            return this.number_;
        }

        d(int i10) {
            this.number_ = i10;
        }
    }

    public static C0497a p() {
        return new C0497a();
    }
}
