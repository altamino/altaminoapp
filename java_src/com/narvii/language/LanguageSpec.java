package com.narvii.language;

/* loaded from: classes.dex */
public class LanguageSpec {
    public String code;
    public String localizedName;
    public String name;
    public boolean selected;

    public LanguageSpec() {
    }

    public LanguageSpec(String str, String str2, String str3) {
        this.name = str;
        this.localizedName = str2;
        this.code = str3;
    }
}
