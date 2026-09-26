package org.schabi.newpipe.extractor.localization;

import java.io.Serializable;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.Calendar;

/* JADX INFO: loaded from: classes10.dex */
public class e implements Serializable {
    private final boolean isApproximation;
    private final OffsetDateTime offsetDateTime;

    @Deprecated
    public e(Calendar calendar) {
        this(calendar, false);
    }

    public OffsetDateTime a() {
        return this.offsetDateTime;
    }

    @Deprecated
    public e(Calendar calendar, boolean z6) {
        this(OffsetDateTime.ofInstant(calendar.toInstant(), ZoneOffset.UTC), z6);
    }

    public e(OffsetDateTime offsetDateTime) {
        this(offsetDateTime, false);
    }

    public e(OffsetDateTime offsetDateTime, boolean z6) {
        this.offsetDateTime = offsetDateTime.withOffsetSameInstant(ZoneOffset.UTC);
        this.isApproximation = z6;
    }
}
