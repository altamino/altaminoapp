package androidx.webkit;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class ProxyConfig {
    private static final String BYPASS_RULE_REMOVE_IMPLICIT = "<-loopback>";
    private static final String BYPASS_RULE_SIMPLE_NAMES = "<local>";
    private static final String DIRECT = "direct://";
    public static final String MATCH_ALL_SCHEMES = "*";
    public static final String MATCH_HTTP = "http";
    public static final String MATCH_HTTPS = "https";
    private List<String> mBypassRules;
    private List<ProxyRule> mProxyRules;
    private boolean mReverseBypass;

    public static final class ProxyRule {
        private String mSchemeFilter;
        private String mUrl;

        @RestrictTo
        public ProxyRule(@NonNull String str, @NonNull String str2) {
            this.mSchemeFilter = str;
            this.mUrl = str2;
        }

        @RestrictTo
        public ProxyRule(@NonNull String str) {
            this("*", str);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface ProxyScheme {
    }

    public boolean c() {
        return this.mReverseBypass;
    }

    @NonNull
    public List<String> a() {
        return Collections.unmodifiableList(this.mBypassRules);
    }

    @NonNull
    public List<ProxyRule> b() {
        return Collections.unmodifiableList(this.mProxyRules);
    }

    public static final class Builder {
        private List<String> mBypassRules;
        private List<ProxyRule> mProxyRules;
        private boolean mReverseBypass;

        public Builder() {
            this.mReverseBypass = false;
            this.mProxyRules = new ArrayList();
            this.mBypassRules = new ArrayList();
        }

        public Builder(@NonNull ProxyConfig proxyConfig) {
            this.mReverseBypass = false;
            this.mProxyRules = proxyConfig.b();
            this.mBypassRules = proxyConfig.a();
            this.mReverseBypass = proxyConfig.c();
        }
    }

    @RestrictTo
    public ProxyConfig(@NonNull List<ProxyRule> list, @NonNull List<String> list2, boolean z6) {
        this.mProxyRules = list;
        this.mBypassRules = list2;
        this.mReverseBypass = z6;
    }
}
