package com.narvii.language;

import android.content.Context;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LanguageManager {
    private Context context;
    private List<LanguageInfo> mLanguageInfoList;

    public String getDisplayText(String str) {
        if (str == null) {
            return null;
        }
        for (LanguageInfo languageInfo : languageInfoList()) {
            Locale locale = Locale.US;
            if (str.toLowerCase(locale).equals(languageInfo.code.toLowerCase(locale))) {
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

    public String getLocalDisplayText(String str) {
        String string;
        if (str == null) {
            return null;
        }
        String localCode = getLocalCode();
        for (LanguageInfo languageInfo : languageInfoList()) {
            String str2 = languageInfo.code;
            Locale locale = Locale.US;
            if (str2.toLowerCase(locale).equals(str.toLowerCase(locale)) && (string = getString(localCode, languageInfo)) != null) {
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

    private List<LanguageInfo> languageInfoList() {
        if (this.mLanguageInfoList == null) {
            try {
                InputStream inputStreamOpen = this.context.getAssets().open("languages.json");
                ObjectMapper objectMapper = JacksonUtils.DEFAULT_MAPPER;
                this.mLanguageInfoList = (List) objectMapper.readValue(inputStreamOpen, objectMapper.getTypeFactory().constructCollectionType(ArrayList.class, LanguageInfo.class));
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
        for (LanguageInfo languageInfo : languageInfoList()) {
            if (languageInfo.code.equals(localCode)) {
                arrayList.add(new LanguageSpec(StringUtils.capitalize(languageInfo.name.get(languageInfo.code)), StringUtils.capitalize(languageInfo.name.get(localCode)), languageInfo.code));
                break;
            }
        }
        for (LanguageInfo languageInfo2 : languageInfoList()) {
            if (!languageInfo2.code.equals(localCode)) {
                arrayList.add(new LanguageSpec(StringUtils.capitalize(languageInfo2.name.get(languageInfo2.code)), getString(localCode, languageInfo2), languageInfo2.code));
            }
        }
        return arrayList;
    }

    public LanguageManager(Context context) {
        this.context = context;
    }

    public String getLocalCode() {
        String language = Locale.getDefault().getLanguage();
        String country = Locale.getDefault().getCountry();
        if (language.equals("zh")) {
            if (country.equals("CN")) {
                return "zh-Hans";
            }
            return "zh-Hant";
        }
        return language;
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
            String str3 = languageInfo.code;
            Locale locale = Locale.US;
            if (str3.toLowerCase(locale).equals(str2.toLowerCase(locale)) && (string = getString(str, languageInfo)) != null) {
                return string;
            }
        }
        return null;
    }
}
