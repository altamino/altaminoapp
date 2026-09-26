package androidx.media3.exoplayer.dash.manifest;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.metadata.emsg.EventMessage;
import com.google.firebase.sessions.settings.c;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class EventStream {
    public final EventMessage[] events;
    public final long[] presentationTimesUs;
    public final String schemeIdUri;
    public final long timescale;
    public final String value;

    public String a() {
        return this.schemeIdUri + c.FORWARD_SLASH_STRING + this.value;
    }

    public EventStream(String str, String str2, long j6, long[] jArr, EventMessage[] eventMessageArr) {
        this.schemeIdUri = str;
        this.value = str2;
        this.timescale = j6;
        this.presentationTimesUs = jArr;
        this.events = eventMessageArr;
    }
}
