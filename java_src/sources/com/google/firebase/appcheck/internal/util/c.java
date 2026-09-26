package com.google.firebase.appcheck.internal.util;

import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
public class c {
    private static List<Object> c(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            Object objD = jSONArray.get(i10);
            if (objD instanceof JSONArray) {
                objD = c((JSONArray) objD);
            } else if (objD instanceof JSONObject) {
                objD = d((JSONObject) objD);
            }
            arrayList.add(objD);
        }
        return arrayList;
    }

    private static Map<String, Object> d(JSONObject jSONObject) throws JSONException {
        ArrayMap arrayMap = new ArrayMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objD = jSONObject.get(next);
            if (objD instanceof JSONArray) {
                objD = c((JSONArray) objD);
            } else if (objD instanceof JSONObject) {
                objD = d((JSONObject) objD);
            } else if (objD.equals(JSONObject.NULL)) {
                objD = null;
            }
            arrayMap.put(next, objD);
        }
        return arrayMap;
    }

    @Nullable
    private static Map<String, Object> a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject == JSONObject.NULL) {
                return null;
            }
            return d(jSONObject);
        } catch (Exception e) {
            b.f().b("Failed to parse JSONObject into Map:\n" + e);
            return Collections.emptyMap();
        }
    }

    @NonNull
    public static Map<String, Object> b(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        String[] strArrSplit = str.split("\\.", -1);
        if (strArrSplit.length < 2) {
            b.f().d("Invalid token (too few subsections):\n" + str);
            return Collections.emptyMap();
        }
        try {
            Map<String, Object> mapA = a(new String(Base64.decode(strArrSplit[1], 11), "UTF-8"));
            if (mapA == null) {
                return Collections.emptyMap();
            }
            return mapA;
        } catch (UnsupportedEncodingException e) {
            b.f().d("Unable to decode token (charset unknown):\n" + e);
            return Collections.emptyMap();
        }
    }
}
