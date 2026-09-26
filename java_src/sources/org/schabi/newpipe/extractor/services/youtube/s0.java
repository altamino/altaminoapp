package org.schabi.newpipe.extractor.services.youtube;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class s0 extends x9.s {
    private static final List<org.schabi.newpipe.extractor.localization.i> SUPPORTED_LANGUAGES = org.schabi.newpipe.extractor.localization.i.i("en-GB");
    private static final List<org.schabi.newpipe.extractor.localization.a> SUPPORTED_COUNTRIES = org.schabi.newpipe.extractor.localization.a.b("DZ", "AR", "AU", "AT", "AZ", "BH", "BD", "BY", "BE", "BO", "BA", "BR", "BG", "KH", "CA", "CL", "CO", "CR", "HR", "CY", "CZ", "DK", "DO", "EC", "EG", "SV", "EE", "FI", "FR", "GE", "DE", "GH", "GR", "GT", "HN", "HK", "HU", "IS", "IN", "ID", "IQ", "IE", "IL", "IT", "JM", "JP", "JO", "KZ", "KE", "KW", "LA", "LV", "LB", "LY", "LI", "LT", "LU", "MY", "MT", "MX", "ME", "MA", "NP", "NL", "NZ", "NI", "NG", "MK", "NO", "OM", "PK", "PA", "PG", "PY", "PE", "PH", "PL", "PT", "PR", "QA", "RO", "RU", "SA", "SN", "RS", "SG", "SK", "SI", "ZA", "KR", "ES", "LK", "SE", "CH", "TW", "TZ", "TH", "TN", "TR", "UG", "UA", "AE", "GB", "US", "UY", "VE", "VN", "YE", "ZW");

    public s0(int i10) {
        super(i10, "YouTube", Arrays.asList(x9.s.b.a.AUDIO, x9.s.b.a.VIDEO, x9.s.b.a.LIVE, x9.s.b.a.COMMENTS));
    }

    @Override // x9.s
    public List<org.schabi.newpipe.extractor.localization.a> j() {
        return SUPPORTED_COUNTRIES;
    }

    @Override // x9.s
    public List<org.schabi.newpipe.extractor.localization.i> k() {
        return SUPPORTED_LANGUAGES;
    }

    @Override // x9.s
    public oa.h h(org.schabi.newpipe.extractor.linkhandler.a aVar) {
        return new ma.h0(this, aVar);
    }

    @Override // x9.s
    public org.schabi.newpipe.extractor.linkhandler.d a() {
        return na.a.n();
    }

    @Override // x9.s
    public org.schabi.newpipe.extractor.linkhandler.d e() {
        return na.b.n();
    }

    @Override // x9.s
    public org.schabi.newpipe.extractor.linkhandler.b i() {
        return na.d.l();
    }
}
