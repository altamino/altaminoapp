package com.narvii.app;

import android.net.Uri;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class FragmentRegister {
    HashMap<String, Class> hashMap;

    public FragmentRegister(HashMap<String, Class> map) {
        this.hashMap = map;
    }

    public Class getFragmentClass(String str) {
        HashMap<String, Class> map;
        if (str == null || (map = this.hashMap) == null) {
            return null;
        }
        return map.get(str);
    }

    public Uri getFragmentDeepLinkUri(String str) {
        Class fragmentClass = getFragmentClass(str);
        if (fragmentClass == null) {
            return null;
        }
        return Uri.parse("ndc://fragment/" + fragmentClass.getName());
    }
}
