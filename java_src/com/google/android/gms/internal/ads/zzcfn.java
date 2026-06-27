package com.google.android.gms.internal.ads;

import android.support.v4.app.NotificationCompat;
import android.util.JsonWriter;
import com.google.android.gms.common.util.Clock;
import com.narvii.comment.list.CommentListFragment;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzcfn {
    private final Clock zzbsa;

    public zzcfn(Clock clock) {
        this.zzbsa = clock;
    }

    public final void zza(List<Object> list, String str, String str2, Object... objArr) throws IOException {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcqg)).booleanValue()) {
            long jCurrentTimeMillis = this.zzbsa.currentTimeMillis();
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            try {
                jsonWriter.beginObject();
                jsonWriter.name("timestamp").value(jCurrentTimeMillis);
                jsonWriter.name(CommentListFragment.COMMENT_KEY_SOURCE).value(str);
                jsonWriter.name(NotificationCompat.CATEGORY_EVENT).value(str2);
                jsonWriter.name("components").beginArray();
                Iterator<Object> it = list.iterator();
                while (it.hasNext()) {
                    jsonWriter.value(it.next().toString());
                }
                jsonWriter.endArray();
                jsonWriter.name("params").beginArray();
                int length = objArr.length;
                for (int i = 0; i < length; i++) {
                    Object obj = objArr[i];
                    jsonWriter.value(obj != null ? obj.toString() : null);
                }
                jsonWriter.endArray();
                jsonWriter.endObject();
                jsonWriter.flush();
                jsonWriter.close();
            } catch (IOException e) {
                zzbad.zzc("unable to log", e);
            }
            String strValueOf = String.valueOf(stringWriter.toString());
            zzbad.zzeo(strValueOf.length() != 0 ? "AD-DBG ".concat(strValueOf) : new String("AD-DBG "));
        }
    }
}
