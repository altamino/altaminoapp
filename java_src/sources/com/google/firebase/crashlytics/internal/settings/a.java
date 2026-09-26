package com.google.firebase.crashlytics.internal.settings;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class a {
    private static final String SETTINGS_CACHE_FILENAME = "com.crashlytics.settings.json";
    private final File cachedSettingsFile;

    private File a() {
        return this.cachedSettingsFile;
    }

    public JSONObject b() throws Throwable {
        Throwable th;
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        com.google.firebase.crashlytics.internal.g.f().b("Checking for cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File fileA = a();
                if (fileA.exists()) {
                    fileInputStream = new FileInputStream(fileA);
                    try {
                        jSONObject = new JSONObject(com.google.firebase.crashlytics.internal.common.i.A(fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e) {
                        e = e;
                        com.google.firebase.crashlytics.internal.g.f().e("Failed to fetch cached settings", e);
                        com.google.firebase.crashlytics.internal.common.i.f(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } else {
                    com.google.firebase.crashlytics.internal.g.f().i("Settings file does not exist.");
                    jSONObject = null;
                }
                com.google.firebase.crashlytics.internal.common.i.f(fileInputStream2, "Error while closing settings cache file.");
                return jSONObject;
            } catch (Throwable th2) {
                th = th2;
                com.google.firebase.crashlytics.internal.common.i.f(null, "Error while closing settings cache file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            com.google.firebase.crashlytics.internal.common.i.f(null, "Error while closing settings cache file.");
            throw th;
        }
    }

    public void c(long j6, JSONObject jSONObject) throws Throwable {
        com.google.firebase.crashlytics.internal.g.f().i("Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter = null;
            try {
                try {
                    jSONObject.put("expires_at", j6);
                    FileWriter fileWriter2 = new FileWriter(a());
                    try {
                        fileWriter2.write(jSONObject.toString());
                        fileWriter2.flush();
                        com.google.firebase.crashlytics.internal.common.i.f(fileWriter2, "Failed to close settings writer.");
                    } catch (Exception e) {
                        e = e;
                        fileWriter = fileWriter2;
                        com.google.firebase.crashlytics.internal.g.f().e("Failed to cache settings", e);
                        com.google.firebase.crashlytics.internal.common.i.f(fileWriter, "Failed to close settings writer.");
                    } catch (Throwable th) {
                        th = th;
                        fileWriter = fileWriter2;
                        com.google.firebase.crashlytics.internal.common.i.f(fileWriter, "Failed to close settings writer.");
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
            }
        }
    }

    public a(e4.f fVar) {
        this.cachedSettingsFile = fVar.e(SETTINGS_CACHE_FILENAME);
    }
}
