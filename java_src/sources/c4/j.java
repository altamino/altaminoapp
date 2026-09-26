package c4;

import android.util.Base64;
import android.util.JsonReader;
import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.f0;
import com.narvii.master.home.profile.GlobalProfileFragment;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class j {
    private static final j4.a CRASHLYTICS_REPORT_JSON_ENCODER = new com.google.firebase.encoders.json.d().j(com.google.firebase.crashlytics.internal.model.a.CONFIG).k(true).i();

    /* JADX INFO: Access modifiers changed from: private */
    interface a<T> {
        T a(@NonNull JsonReader jsonReader) throws IOException;
    }

    @NonNull
    private static <T> List<T> n(@NonNull JsonReader jsonReader, @NonNull a<T> aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(aVar.a(jsonReader));
        }
        jsonReader.endArray();
        return Collections.unmodifiableList(arrayList);
    }

    @NonNull
    public f0 L(@NonNull String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                f0 f0VarH = H(jsonReader);
                jsonReader.close();
                return f0VarH;
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    @NonNull
    public String M(@NonNull f0 f0Var) {
        return CRASHLYTICS_REPORT_JSON_ENCODER.b(f0Var);
    }

    @NonNull
    public f0.e.d j(@NonNull String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                f0.e.d dVarR = r(jsonReader);
                jsonReader.close();
                return dVarR;
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    @NonNull
    public String k(@NonNull f0.e.d dVar) {
        return CRASHLYTICS_REPORT_JSON_ENCODER.b(dVar);
    }

    @NonNull
    private static f0.e.d.f A(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.f.a aVarA = f0.e.d.f.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (!strNextName.equals("assignments")) {
                jsonReader.skipValue();
            } else {
                aVarA.b(n(jsonReader, new a() { // from class: c4.c
                    @Override // c4.j.a
                    public final Object a(JsonReader jsonReader2) {
                        return j.z(jsonReader2);
                    }
                }));
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    @NonNull
    private static f0.e.d.a.b.AbstractC0243d B(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.a.b.AbstractC0243d.AbstractC0244a abstractC0244aA = f0.e.d.a.b.AbstractC0243d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "address":
                    abstractC0244aA.b(jsonReader.nextLong());
                    break;
                case "code":
                    abstractC0244aA.c(jsonReader.nextString());
                    break;
                case "name":
                    abstractC0244aA.d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0244aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static f0.e.d.a.b.AbstractC0245e C(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.a.b.AbstractC0245e.AbstractC0246a abstractC0246aA = f0.e.d.a.b.AbstractC0245e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "frames":
                    abstractC0246aA.b(n(jsonReader, new i()));
                    break;
                case "name":
                    abstractC0246aA.d(jsonReader.nextString());
                    break;
                case "importance":
                    abstractC0246aA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0246aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static f0.d.b D(@NonNull JsonReader jsonReader) throws IOException {
        f0.d.b.a aVarA = f0.d.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (!strNextName.equals("filename")) {
                if (!strNextName.equals("contents")) {
                    jsonReader.skipValue();
                } else {
                    aVarA.b(Base64.decode(jsonReader.nextString(), 2));
                }
            } else {
                aVarA.c(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    @NonNull
    private static f0.d E(@NonNull JsonReader jsonReader) throws IOException {
        f0.d.a aVarA = f0.d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (!strNextName.equals("files")) {
                if (!strNextName.equals("orgId")) {
                    jsonReader.skipValue();
                } else {
                    aVarA.c(jsonReader.nextString());
                }
            } else {
                aVarA.b(n(jsonReader, new a() { // from class: c4.b
                    @Override // c4.j.a
                    public final Object a(JsonReader jsonReader2) {
                        return j.D(jsonReader2);
                    }
                }));
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    @NonNull
    private static f0.e.AbstractC0252e F(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.AbstractC0252e.a aVarA = f0.e.AbstractC0252e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "buildVersion":
                    aVarA.b(jsonReader.nextString());
                    break;
                case "jailbroken":
                    aVarA.c(jsonReader.nextBoolean());
                    break;
                case "version":
                    aVarA.e(jsonReader.nextString());
                    break;
                case "platform":
                    aVarA.d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static f0.e.d.a.c G(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.a.c.AbstractC0249a abstractC0249aA = f0.e.d.a.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "pid":
                    abstractC0249aA.d(jsonReader.nextInt());
                    break;
                case "processName":
                    abstractC0249aA.e(jsonReader.nextString());
                    break;
                case "defaultProcess":
                    abstractC0249aA.b(jsonReader.nextBoolean());
                    break;
                case "importance":
                    abstractC0249aA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0249aA.a();
    }

    @NonNull
    private static f0 H(@NonNull JsonReader jsonReader) throws IOException {
        f0.b bVarB = f0.b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "ndkPayload":
                    bVarB.i(E(jsonReader));
                    break;
                case "sdkVersion":
                    bVarB.k(jsonReader.nextString());
                    break;
                case "appQualitySessionId":
                    bVarB.c(jsonReader.nextString());
                    break;
                case "appExitInfo":
                    bVarB.b(m(jsonReader));
                    break;
                case "buildVersion":
                    bVarB.d(jsonReader.nextString());
                    break;
                case "gmpAppId":
                    bVarB.g(jsonReader.nextString());
                    break;
                case "installationUuid":
                    bVarB.h(jsonReader.nextString());
                    break;
                case "firebaseInstallationId":
                    bVarB.f(jsonReader.nextString());
                    break;
                case "platform":
                    bVarB.j(jsonReader.nextInt());
                    break;
                case "displayVersion":
                    bVarB.e(jsonReader.nextString());
                    break;
                case "session":
                    bVarB.l(J(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarB.a();
    }

    @NonNull
    private static f0.e.d.AbstractC0251e.b I(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.AbstractC0251e.b.a aVarA = f0.e.d.AbstractC0251e.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (!strNextName.equals(com.google.firebase.remoteconfig.internal.g.ROLLOUT_METADATA_VARIANT_ID)) {
                if (!strNextName.equals(com.google.firebase.remoteconfig.internal.g.ROLLOUT_METADATA_ID)) {
                    jsonReader.skipValue();
                } else {
                    aVarA.b(jsonReader.nextString());
                }
            } else {
                aVarA.c(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @NonNull
    private static f0.e J(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.b bVarA = f0.e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            byte b7 = -1;
            switch (strNextName.hashCode()) {
                case -2128794476:
                    if (strNextName.equals("startedAt")) {
                        b7 = 0;
                    }
                    break;
                case -1907185581:
                    if (strNextName.equals("appQualitySessionId")) {
                        b7 = 1;
                    }
                    break;
                case -1618432855:
                    if (strNextName.equals("identifier")) {
                        b7 = 2;
                    }
                    break;
                case -1606742899:
                    if (strNextName.equals("endedAt")) {
                        b7 = 3;
                    }
                    break;
                case -1335157162:
                    if (strNextName.equals("device")) {
                        b7 = 4;
                    }
                    break;
                case -1291329255:
                    if (strNextName.equals("events")) {
                        b7 = 5;
                    }
                    break;
                case 3556:
                    if (strNextName.equals("os")) {
                        b7 = 6;
                    }
                    break;
                case 96801:
                    if (strNextName.equals("app")) {
                        b7 = 7;
                    }
                    break;
                case 3599307:
                    if (strNextName.equals(GlobalProfileFragment.KEY_USER)) {
                        b7 = 8;
                    }
                    break;
                case 286956243:
                    if (strNextName.equals("generator")) {
                        b7 = 9;
                    }
                    break;
                case 1025385094:
                    if (strNextName.equals("crashed")) {
                        b7 = 10;
                    }
                    break;
                case 2047016109:
                    if (strNextName.equals("generatorType")) {
                        b7 = com.google.common.base.c.VT;
                    }
                    break;
            }
            switch (b7) {
                case 0:
                    bVarA.m(jsonReader.nextLong());
                    break;
                case 1:
                    bVarA.c(jsonReader.nextString());
                    break;
                case 2:
                    bVarA.k(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case 3:
                    bVarA.f(Long.valueOf(jsonReader.nextLong()));
                    break;
                case 4:
                    bVarA.e(q(jsonReader));
                    break;
                case 5:
                    bVarA.g(n(jsonReader, new a() { // from class: c4.a
                        @Override // c4.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.r(jsonReader2);
                        }
                    }));
                    break;
                case 6:
                    bVarA.l(F(jsonReader));
                    break;
                case 7:
                    bVarA.b(l(jsonReader));
                    break;
                case 8:
                    bVarA.n(K(jsonReader));
                    break;
                case 9:
                    bVarA.h(jsonReader.nextString());
                    break;
                case 10:
                    bVarA.d(jsonReader.nextBoolean());
                    break;
                case 11:
                    bVarA.i(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarA.a();
    }

    @NonNull
    private static f0.e.f K(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.f.a aVarA = f0.e.f.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("identifier")) {
                aVarA.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    @NonNull
    private static f0.e.a l(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.a.AbstractC0237a abstractC0237aA = f0.e.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "identifier":
                    abstractC0237aA.e(jsonReader.nextString());
                    break;
                case "developmentPlatform":
                    abstractC0237aA.b(jsonReader.nextString());
                    break;
                case "developmentPlatformVersion":
                    abstractC0237aA.c(jsonReader.nextString());
                    break;
                case "version":
                    abstractC0237aA.g(jsonReader.nextString());
                    break;
                case "installationUuid":
                    abstractC0237aA.f(jsonReader.nextString());
                    break;
                case "displayVersion":
                    abstractC0237aA.d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0237aA.a();
    }

    @NonNull
    private static f0.a m(@NonNull JsonReader jsonReader) throws IOException {
        f0.a.b bVarA = f0.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "buildIdMappingForArch":
                    bVarA.b(n(jsonReader, new a() { // from class: c4.f
                        @Override // c4.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.o(jsonReader2);
                        }
                    }));
                    break;
                case "pid":
                    bVarA.d(jsonReader.nextInt());
                    break;
                case "pss":
                    bVarA.f(jsonReader.nextLong());
                    break;
                case "rss":
                    bVarA.h(jsonReader.nextLong());
                    break;
                case "timestamp":
                    bVarA.i(jsonReader.nextLong());
                    break;
                case "processName":
                    bVarA.e(jsonReader.nextString());
                    break;
                case "reasonCode":
                    bVarA.g(jsonReader.nextInt());
                    break;
                case "traceFile":
                    bVarA.j(jsonReader.nextString());
                    break;
                case "importance":
                    bVarA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static f0.a.AbstractC0235a o(@NonNull JsonReader jsonReader) throws IOException {
        f0.a.AbstractC0235a.AbstractC0236a abstractC0236aA = f0.a.AbstractC0235a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "libraryName":
                    abstractC0236aA.d(jsonReader.nextString());
                    break;
                case "arch":
                    abstractC0236aA.b(jsonReader.nextString());
                    break;
                case "buildId":
                    abstractC0236aA.c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0236aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static f0.c p(@NonNull JsonReader jsonReader) throws IOException {
        f0.c.a aVarA = f0.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (!strNextName.equals("key")) {
                if (!strNextName.equals("value")) {
                    jsonReader.skipValue();
                } else {
                    aVarA.c(jsonReader.nextString());
                }
            } else {
                aVarA.b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    @NonNull
    private static f0.e.c q(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.c.a aVarA = f0.e.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "simulator":
                    aVarA.i(jsonReader.nextBoolean());
                    break;
                case "manufacturer":
                    aVarA.e(jsonReader.nextString());
                    break;
                case "ram":
                    aVarA.h(jsonReader.nextLong());
                    break;
                case "arch":
                    aVarA.b(jsonReader.nextInt());
                    break;
                case "diskSpace":
                    aVarA.d(jsonReader.nextLong());
                    break;
                case "cores":
                    aVarA.c(jsonReader.nextInt());
                    break;
                case "model":
                    aVarA.f(jsonReader.nextString());
                    break;
                case "state":
                    aVarA.j(jsonReader.nextInt());
                    break;
                case "modelClass":
                    aVarA.g(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static f0.e.d r(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.b bVarA = f0.e.d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "device":
                    bVarA.c(u(jsonReader));
                    break;
                case "rollouts":
                    bVarA.e(A(jsonReader));
                    break;
                case "app":
                    bVarA.b(s(jsonReader));
                    break;
                case "log":
                    bVarA.d(y(jsonReader));
                    break;
                case "type":
                    bVarA.g(jsonReader.nextString());
                    break;
                case "timestamp":
                    bVarA.f(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarA.a();
    }

    @NonNull
    private static f0.e.d.a s(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.a.AbstractC0238a abstractC0238aA = f0.e.d.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "appProcessDetails":
                    abstractC0238aA.b(n(jsonReader, new a() { // from class: c4.e
                        @Override // c4.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.G(jsonReader2);
                        }
                    }));
                    break;
                case "background":
                    abstractC0238aA.c(Boolean.valueOf(jsonReader.nextBoolean()));
                    break;
                case "execution":
                    abstractC0238aA.f(v(jsonReader));
                    break;
                case "internalKeys":
                    abstractC0238aA.g(n(jsonReader, new a() { // from class: c4.d
                        @Override // c4.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.p(jsonReader2);
                        }
                    }));
                    break;
                case "customAttributes":
                    abstractC0238aA.e(n(jsonReader, new a() { // from class: c4.d
                        @Override // c4.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.p(jsonReader2);
                        }
                    }));
                    break;
                case "uiOrientation":
                    abstractC0238aA.h(jsonReader.nextInt());
                    break;
                case "currentProcessDetails":
                    abstractC0238aA.d(G(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0238aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static f0.e.d.a.b.AbstractC0239a t(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.a.b.AbstractC0239a.AbstractC0240a abstractC0240aA = f0.e.d.a.b.AbstractC0239a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "name":
                    abstractC0240aA.c(jsonReader.nextString());
                    break;
                case "size":
                    abstractC0240aA.d(jsonReader.nextLong());
                    break;
                case "uuid":
                    abstractC0240aA.f(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case "baseAddress":
                    abstractC0240aA.b(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0240aA.a();
    }

    @NonNull
    private static f0.e.d.c u(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.c.a aVarA = f0.e.d.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "batteryLevel":
                    aVarA.b(Double.valueOf(jsonReader.nextDouble()));
                    break;
                case "batteryVelocity":
                    aVarA.c(jsonReader.nextInt());
                    break;
                case "orientation":
                    aVarA.e(jsonReader.nextInt());
                    break;
                case "diskUsed":
                    aVarA.d(jsonReader.nextLong());
                    break;
                case "ramUsed":
                    aVarA.g(jsonReader.nextLong());
                    break;
                case "proximityOn":
                    aVarA.f(jsonReader.nextBoolean());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    @NonNull
    private static f0.e.d.a.b v(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.a.b.AbstractC0241b abstractC0241bA = f0.e.d.a.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "appExitInfo":
                    abstractC0241bA.b(m(jsonReader));
                    break;
                case "threads":
                    abstractC0241bA.f(n(jsonReader, new a() { // from class: c4.g
                        @Override // c4.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.C(jsonReader2);
                        }
                    }));
                    break;
                case "signal":
                    abstractC0241bA.e(B(jsonReader));
                    break;
                case "binaries":
                    abstractC0241bA.c(n(jsonReader, new a() { // from class: c4.h
                        @Override // c4.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.t(jsonReader2);
                        }
                    }));
                    break;
                case "exception":
                    abstractC0241bA.d(w(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0241bA.a();
    }

    @NonNull
    private static f0.e.d.a.b.c w(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.a.b.c.AbstractC0242a abstractC0242aA = f0.e.d.a.b.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "frames":
                    abstractC0242aA.c(n(jsonReader, new i()));
                    break;
                case "reason":
                    abstractC0242aA.e(jsonReader.nextString());
                    break;
                case "type":
                    abstractC0242aA.f(jsonReader.nextString());
                    break;
                case "causedBy":
                    abstractC0242aA.b(w(jsonReader));
                    break;
                case "overflowCount":
                    abstractC0242aA.d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0242aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static f0.e.d.a.b.AbstractC0245e.AbstractC0247b x(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a abstractC0248aA = f0.e.d.a.b.AbstractC0245e.AbstractC0247b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "offset":
                    abstractC0248aA.d(jsonReader.nextLong());
                    break;
                case "symbol":
                    abstractC0248aA.f(jsonReader.nextString());
                    break;
                case "pc":
                    abstractC0248aA.e(jsonReader.nextLong());
                    break;
                case "file":
                    abstractC0248aA.b(jsonReader.nextString());
                    break;
                case "importance":
                    abstractC0248aA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0248aA.a();
    }

    @NonNull
    private static f0.e.d.AbstractC0250d y(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.AbstractC0250d.a aVarA = f0.e.d.AbstractC0250d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("content")) {
                aVarA.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static f0.e.d.AbstractC0251e z(@NonNull JsonReader jsonReader) throws IOException {
        f0.e.d.AbstractC0251e.a aVarA = f0.e.d.AbstractC0251e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "parameterKey":
                    aVarA.b(jsonReader.nextString());
                    break;
                case "templateVersion":
                    aVarA.e(jsonReader.nextLong());
                    break;
                case "rolloutVariant":
                    aVarA.d(I(jsonReader));
                    break;
                case "parameterValue":
                    aVarA.c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }
}
