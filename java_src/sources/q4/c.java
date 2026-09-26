package q4;

import androidx.annotation.NonNull;
import com.google.firebase.f;
import com.narvii.webview.AssetsLocalizationManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
public class c {
    private static final String AUTH_TOKEN_KEY = "AuthToken";
    private static final String EXPIRES_IN_SECONDS_KEY = "ExpiresInSecs";
    private static final String FIREBASE_INSTALLATION_ID_KEY = "Fid";
    private static final String FIS_ERROR_KEY = "FisError";
    private static final String PERSISTED_STATUS_KEY = "Status";
    private static final String REFRESH_TOKEN_KEY = "RefreshToken";
    private static final String SETTINGS_FILE_NAME_PREFIX = "PersistedInstallation";
    private static final String TOKEN_CREATION_TIME_IN_SECONDS_KEY = "TokenCreationEpochInSecs";
    private File dataFile;

    @NonNull
    private final f firebaseApp;

    public enum a {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    private File a() {
        if (this.dataFile == null) {
            synchronized (this) {
                try {
                    if (this.dataFile == null) {
                        this.dataFile = new File(this.firebaseApp.k().getFilesDir(), "PersistedInstallation." + this.firebaseApp.o() + AssetsLocalizationManager.FILE_JSON);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.dataFile;
    }

    private JSONObject c() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(a());
            while (true) {
                try {
                    int i10 = fileInputStream.read(bArr, 0, 16384);
                    if (i10 < 0) {
                        JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                        fileInputStream.close();
                        return jSONObject;
                    }
                    byteArrayOutputStream.write(bArr, 0, i10);
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        } catch (IOException | JSONException unused) {
            return new JSONObject();
        }
    }

    @NonNull
    public d b(@NonNull d dVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(FIREBASE_INSTALLATION_ID_KEY, dVar.d());
            jSONObject.put(PERSISTED_STATUS_KEY, dVar.g().ordinal());
            jSONObject.put(AUTH_TOKEN_KEY, dVar.b());
            jSONObject.put(REFRESH_TOKEN_KEY, dVar.f());
            jSONObject.put(TOKEN_CREATION_TIME_IN_SECONDS_KEY, dVar.h());
            jSONObject.put(EXPIRES_IN_SECONDS_KEY, dVar.c());
            jSONObject.put(FIS_ERROR_KEY, dVar.e());
            File fileCreateTempFile = File.createTempFile(SETTINGS_FILE_NAME_PREFIX, "tmp", this.firebaseApp.k().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (!fileCreateTempFile.renameTo(a())) {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
        return dVar;
    }

    public c(@NonNull f fVar) {
        this.firebaseApp = fVar;
    }

    @NonNull
    public d d() {
        JSONObject jSONObjectC = c();
        String strOptString = jSONObjectC.optString(FIREBASE_INSTALLATION_ID_KEY, null);
        int iOptInt = jSONObjectC.optInt(PERSISTED_STATUS_KEY, a.ATTEMPT_MIGRATION.ordinal());
        String strOptString2 = jSONObjectC.optString(AUTH_TOKEN_KEY, null);
        String strOptString3 = jSONObjectC.optString(REFRESH_TOKEN_KEY, null);
        long jOptLong = jSONObjectC.optLong(TOKEN_CREATION_TIME_IN_SECONDS_KEY, 0L);
        long jOptLong2 = jSONObjectC.optLong(EXPIRES_IN_SECONDS_KEY, 0L);
        return d.a().d(strOptString).g(a.values()[iOptInt]).b(strOptString2).f(strOptString3).h(jOptLong).c(jOptLong2).e(jSONObjectC.optString(FIS_ERROR_KEY, null)).a();
    }
}
