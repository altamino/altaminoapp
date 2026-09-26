package com.google.android.datatransport.cct.internal;

import android.util.JsonReader;
import android.util.JsonToken;
import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import java.io.IOException;
import java.io.Reader;

/* JADX INFO: loaded from: classes11.dex */
@AutoValue
public abstract class n {
    private static final String LOG_TAG = "LogResponseInternal";

    public abstract long c();

    static n a(long j6) {
        return new h(j6);
    }

    @NonNull
    public static n b(@NonNull Reader reader) throws IOException {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    if (jsonReader.peek() == JsonToken.STRING) {
                        n nVarA = a(Long.parseLong(jsonReader.nextString()));
                        jsonReader.close();
                        return nVarA;
                    }
                    n nVarA2 = a(jsonReader.nextLong());
                    jsonReader.close();
                    return nVarA2;
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } catch (Throwable th) {
            jsonReader.close();
            throw th;
        }
    }
}
