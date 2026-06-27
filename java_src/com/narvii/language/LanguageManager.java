package com.narvii.language;

import android.content.Context;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class LanguageManager {
    private Context context;
    private List<LanguageInfo> mLanguageInfoList;

    public LanguageManager(Context context) {
        this.context = context;
    }

    private List<LanguageInfo> languageInfoList() throws IOException {
        if (this.mLanguageInfoList == null) {
            try {
                this.mLanguageInfoList = (List) JacksonUtils.DEFAULT_MAPPER.readValue(this.context.getAssets().open("languages.json"), JacksonUtils.DEFAULT_MAPPER.getTypeFactory().constructCollectionType(ArrayList.class, LanguageInfo.class));
            } catch (IOException e) {
                Log.e("fail to load languages.json", e);
                this.mLanguageInfoList = new ArrayList();
            }
        }
        return this.mLanguageInfoList;
    }

    public List<LanguageSpec> getAllLanguages() {
        ArrayList arrayList = new ArrayList();
        String localCode = getLocalCode();
        Iterator<LanguageInfo> it = languageInfoList().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            LanguageInfo next = it.next();
            if (next.code.equals(localCode)) {
                arrayList.add(new LanguageSpec(StringUtils.capitalize(next.name.get(next.code)), StringUtils.capitalize(next.name.get(localCode)), next.code));
                break;
            }
        }
        for (LanguageInfo languageInfo : languageInfoList()) {
            if (!languageInfo.code.equals(localCode)) {
                arrayList.add(new LanguageSpec(StringUtils.capitalize(languageInfo.name.get(languageInfo.code)), getString(localCode, languageInfo), languageInfo.code));
            }
        }
        return arrayList;
    }

    public String getLocalCode() {
        String language = Locale.getDefault().getLanguage();
        return language.equals("zh") ? Locale.getDefault().getCountry().equals("CN") ? "zh-Hans" : "zh-Hant" : language;
    }

    public String getDisplayText(String str) {
        if (str == null) {
            return null;
        }
        for (LanguageInfo languageInfo : languageInfoList()) {
            if (str.toLowerCase(Locale.US).equals(languageInfo.code.toLowerCase(Locale.US))) {
                if (languageInfo.name.containsKey(str)) {
                    return StringUtils.capitalize(languageInfo.name.get(str));
                }
                for (Map.Entry<String, String> entry : languageInfo.name.entrySet()) {
                    if (entry.getKey().contains(str)) {
                        return StringUtils.capitalize(entry.getValue());
                    }
                }
            }
        }
        return null;
    }

    public String getDisplayText(String str, String str2) {
        String string;
        if (str2 == null) {
            return null;
        }
        if (str == null) {
            str = "en";
        }
        for (LanguageInfo languageInfo : languageInfoList()) {
            if (languageInfo.code.toLowerCase(Locale.US).equals(str2.toLowerCase(Locale.US)) && (string = getString(str, languageInfo)) != null) {
                return string;
            }
        }
        return null;
    }

    public String getLocalDisplayText(String str) {
        String string;
        if (str == null) {
            return null;
        }
        String localCode = getLocalCode();
        for (LanguageInfo languageInfo : languageInfoList()) {
            if (languageInfo.code.toLowerCase(Locale.US).equals(str.toLowerCase(Locale.US)) && (string = getString(localCode, languageInfo)) != null) {
                return string;
            }
        }
        return null;
    }

    private String getString(String str, LanguageInfo languageInfo) {
        if (languageInfo.name.containsKey(str)) {
            return StringUtils.capitalize(languageInfo.name.get(str));
        }
        if (languageInfo.name.containsKey("en")) {
            return StringUtils.capitalize(languageInfo.name.get("en"));
        }
        return null;
    }
}
