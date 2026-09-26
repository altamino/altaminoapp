package com.google.firebase.crashlytics.internal.metadata;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class f {
    private static final String KEY_USER_ID = "userId";
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final e4.f fileStore;

    class a extends JSONObject {
        final /* synthetic */ String val$userId;

        a(String str) throws JSONException {
            this.val$userId = str;
            put(f.KEY_USER_ID, str);
        }
    }

    public void p(String str, Map<String, String> map) throws Throwable {
        q(str, map, false);
    }

    private static Map<String, String> e(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, o(jSONObject, next));
        }
        return map;
    }

    private static List<i> f(String str) throws JSONException {
        JSONArray jSONArray = new JSONObject(str).getJSONArray("rolloutsState");
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            String string = jSONArray.getString(i10);
            try {
                arrayList.add(i.a(string));
            } catch (Exception e) {
                com.google.firebase.crashlytics.internal.g.f().l("Failed de-serializing rollouts state. " + string, e);
            }
        }
        return arrayList;
    }

    @Nullable
    private String g(String str) throws JSONException {
        return o(new JSONObject(str), KEY_USER_ID);
    }

    private static String h(Map<String, String> map) {
        return new JSONObject(map).toString();
    }

    private static String l(List<i> list) {
        HashMap map = new HashMap();
        JSONArray jSONArray = new JSONArray();
        for (int i10 = 0; i10 < list.size(); i10++) {
            try {
                jSONArray.put(new JSONObject(i.ROLLOUT_ASSIGNMENT_JSON_ENCODER.b(list.get(i10))));
            } catch (JSONException e) {
                com.google.firebase.crashlytics.internal.g.f().l("Exception parsing rollout assignment!", e);
            }
        }
        map.put("rolloutsState", jSONArray);
        return new JSONObject(map).toString();
    }

    private static String n(String str) throws JSONException {
        return new a(str).toString();
    }

    @NonNull
    public File a(String str) {
        return this.fileStore.o(str, n.INTERNAL_KEYDATA_FILENAME);
    }

    @NonNull
    public File b(String str) {
        return this.fileStore.o(str, n.KEYDATA_FILENAME);
    }

    @NonNull
    public File c(String str) {
        return this.fileStore.o(str, n.ROLLOUTS_STATE_FILENAME);
    }

    @NonNull
    public File d(String str) {
        return this.fileStore.o(str, n.USERDATA_FILENAME);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v6 */
    Map<String, String> i(String str, boolean z6) throws Throwable {
        FileInputStream fileInputStream;
        Exception e;
        File fileA = z6 ? a(str) : b(str);
        if (fileA.exists()) {
            ?? length = fileA.length();
            if (length != 0) {
                ?? r10 = 0;
                try {
                    try {
                        fileInputStream = new FileInputStream(fileA);
                        try {
                            Map<String, String> mapE = e(com.google.firebase.crashlytics.internal.common.i.A(fileInputStream));
                            com.google.firebase.crashlytics.internal.common.i.f(fileInputStream, "Failed to close user metadata file.");
                            return mapE;
                        } catch (Exception e2) {
                            e = e2;
                            com.google.firebase.crashlytics.internal.g.f().l("Error deserializing user metadata.", e);
                            m(fileA);
                            com.google.firebase.crashlytics.internal.common.i.f(fileInputStream, "Failed to close user metadata file.");
                            return Collections.emptyMap();
                        }
                    } catch (Throwable th) {
                        th = th;
                        r10 = length;
                        com.google.firebase.crashlytics.internal.common.i.f(r10, "Failed to close user metadata file.");
                        throw th;
                    }
                } catch (Exception e6) {
                    fileInputStream = null;
                    e = e6;
                } catch (Throwable th2) {
                    th = th2;
                    com.google.firebase.crashlytics.internal.common.i.f(r10, "Failed to close user metadata file.");
                    throw th;
                }
            }
        }
        m(fileA);
        return Collections.emptyMap();
    }

    public List<i> j(String str) throws Throwable {
        File fileC = c(str);
        if (!fileC.exists() || fileC.length() == 0) {
            m(fileC);
            return Collections.emptyList();
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(fileC);
                try {
                    List<i> listF = f(com.google.firebase.crashlytics.internal.common.i.A(fileInputStream2));
                    com.google.firebase.crashlytics.internal.g.f().b("Loaded rollouts state:\n" + listF + "\nfor session " + str);
                    com.google.firebase.crashlytics.internal.common.i.f(fileInputStream2, "Failed to close rollouts state file.");
                    return listF;
                } catch (Exception e) {
                    e = e;
                    fileInputStream = fileInputStream2;
                    com.google.firebase.crashlytics.internal.g.f().l("Error deserializing rollouts state.", e);
                    m(fileC);
                    com.google.firebase.crashlytics.internal.common.i.f(fileInputStream, "Failed to close rollouts state file.");
                    return Collections.emptyList();
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    com.google.firebase.crashlytics.internal.common.i.f(fileInputStream, "Failed to close rollouts state file.");
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Nullable
    public String k(String str) throws Throwable {
        FileInputStream fileInputStream;
        File fileD = d(str);
        FileInputStream fileInputStream2 = null;
        if (!fileD.exists() || fileD.length() == 0) {
            com.google.firebase.crashlytics.internal.g.f().b("No userId set for session " + str);
            m(fileD);
            return null;
        }
        try {
            fileInputStream = new FileInputStream(fileD);
            try {
                try {
                    String strG = g(com.google.firebase.crashlytics.internal.common.i.A(fileInputStream));
                    com.google.firebase.crashlytics.internal.g.f().b("Loaded userId " + strG + " for session " + str);
                    com.google.firebase.crashlytics.internal.common.i.f(fileInputStream, "Failed to close user metadata file.");
                    return strG;
                } catch (Exception e) {
                    e = e;
                    com.google.firebase.crashlytics.internal.g.f().l("Error deserializing user metadata.", e);
                    m(fileD);
                    com.google.firebase.crashlytics.internal.common.i.f(fileInputStream, "Failed to close user metadata file.");
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                com.google.firebase.crashlytics.internal.common.i.f(fileInputStream2, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            com.google.firebase.crashlytics.internal.common.i.f(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public void q(String str, Map<String, String> map, boolean z6) throws Throwable {
        File fileA = z6 ? a(str) : b(str);
        BufferedWriter bufferedWriter = null;
        try {
            try {
                String strH = h(map);
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileA), UTF_8));
                try {
                    bufferedWriter2.write(strH);
                    bufferedWriter2.flush();
                    com.google.firebase.crashlytics.internal.common.i.f(bufferedWriter2, "Failed to close key/value metadata file.");
                } catch (Exception e) {
                    e = e;
                    bufferedWriter = bufferedWriter2;
                    com.google.firebase.crashlytics.internal.g.f().l("Error serializing key/value metadata.", e);
                    m(fileA);
                    com.google.firebase.crashlytics.internal.common.i.f(bufferedWriter, "Failed to close key/value metadata file.");
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    com.google.firebase.crashlytics.internal.common.i.f(bufferedWriter, "Failed to close key/value metadata file.");
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public void r(String str, List<i> list) throws Throwable {
        File fileC = c(str);
        if (list.isEmpty()) {
            m(fileC);
            return;
        }
        BufferedWriter bufferedWriter = null;
        try {
            try {
                String strL = l(list);
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileC), UTF_8));
                try {
                    bufferedWriter2.write(strL);
                    bufferedWriter2.flush();
                    com.google.firebase.crashlytics.internal.common.i.f(bufferedWriter2, "Failed to close rollouts state file.");
                } catch (Exception e) {
                    e = e;
                    bufferedWriter = bufferedWriter2;
                    com.google.firebase.crashlytics.internal.g.f().l("Error serializing rollouts state.", e);
                    m(fileC);
                    com.google.firebase.crashlytics.internal.common.i.f(bufferedWriter, "Failed to close rollouts state file.");
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    com.google.firebase.crashlytics.internal.common.i.f(bufferedWriter, "Failed to close rollouts state file.");
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public void s(String str, String str2) throws Throwable {
        File fileD = d(str);
        BufferedWriter bufferedWriter = null;
        try {
            try {
                String strN = n(str2);
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileD), UTF_8));
                try {
                    bufferedWriter2.write(strN);
                    bufferedWriter2.flush();
                    com.google.firebase.crashlytics.internal.common.i.f(bufferedWriter2, "Failed to close user metadata file.");
                } catch (Exception e) {
                    e = e;
                    bufferedWriter = bufferedWriter2;
                    com.google.firebase.crashlytics.internal.g.f().l("Error serializing user metadata.", e);
                    com.google.firebase.crashlytics.internal.common.i.f(bufferedWriter, "Failed to close user metadata file.");
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    com.google.firebase.crashlytics.internal.common.i.f(bufferedWriter, "Failed to close user metadata file.");
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public f(e4.f fVar) {
        this.fileStore = fVar;
    }

    private static void m(File file) {
        if (file.exists() && file.delete()) {
            com.google.firebase.crashlytics.internal.g.f().g("Deleted corrupt file: " + file.getAbsolutePath());
        }
    }

    private static String o(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }
}
