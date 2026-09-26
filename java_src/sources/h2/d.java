package h2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class d {
    private static final d DEFAULT_INSTANCE = new a().a();
    private final List<c> log_event_dropped_;
    private final String log_source_;

    public static final class a {
        private String log_source_ = "";
        private List<c> log_event_dropped_ = new ArrayList();

        public a b(List<c> list) {
            this.log_event_dropped_ = list;
            return this;
        }

        public a c(String str) {
            this.log_source_ = str;
            return this;
        }

        public d a() {
            return new d(this.log_source_, Collections.unmodifiableList(this.log_event_dropped_));
        }

        a() {
        }
    }

    @com.google.firebase.encoders.proto.d(tag = 2)
    public List<c> a() {
        return this.log_event_dropped_;
    }

    @com.google.firebase.encoders.proto.d(tag = 1)
    public String b() {
        return this.log_source_;
    }

    public static a c() {
        return new a();
    }

    d(String str, List<c> list) {
        this.log_source_ = str;
        this.log_event_dropped_ = list;
    }
}
