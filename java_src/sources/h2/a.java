package h2;

import com.google.android.datatransport.runtime.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static final a DEFAULT_INSTANCE = new C0383a().b();
    private final String app_namespace_;
    private final b global_metrics_;
    private final List<d> log_source_metrics_;
    private final f window_;

    /* JADX INFO: renamed from: h2.a$a, reason: collision with other inner class name */
    public static final class C0383a {
        private f window_ = null;
        private List<d> log_source_metrics_ = new ArrayList();
        private b global_metrics_ = null;
        private String app_namespace_ = "";

        public C0383a c(String str) {
            this.app_namespace_ = str;
            return this;
        }

        public C0383a d(b bVar) {
            this.global_metrics_ = bVar;
            return this;
        }

        public C0383a e(f fVar) {
            this.window_ = fVar;
            return this;
        }

        public C0383a a(d dVar) {
            this.log_source_metrics_.add(dVar);
            return this;
        }

        public a b() {
            return new a(this.window_, Collections.unmodifiableList(this.log_source_metrics_), this.global_metrics_, this.app_namespace_);
        }

        C0383a() {
        }
    }

    @com.google.firebase.encoders.proto.d(tag = 4)
    public String a() {
        return this.app_namespace_;
    }

    @com.google.firebase.encoders.proto.d(tag = 3)
    public b b() {
        return this.global_metrics_;
    }

    @com.google.firebase.encoders.proto.d(tag = 2)
    public List<d> c() {
        return this.log_source_metrics_;
    }

    @com.google.firebase.encoders.proto.d(tag = 1)
    public f d() {
        return this.window_;
    }

    public static C0383a e() {
        return new C0383a();
    }

    a(f fVar, List<d> list, b bVar, String str) {
        this.window_ = fVar;
        this.log_source_metrics_ = list;
        this.global_metrics_ = bVar;
        this.app_namespace_ = str;
    }

    public byte[] f() {
        return m.a(this);
    }
}
