package com.narvii.model;

import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class ThemePack {
    public String themeColor;
    public String themePackHash;
    public int themePackRevision;
    public String themePackUrl;

    public int hashCode() {
        String str = this.themePackUrl;
        return (str == null ? 0 : str.hashCode()) ^ this.themePackRevision;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.hashCode() != hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ThemePack)) {
            return false;
        }
        ThemePack themePack = (ThemePack) obj;
        return themePack.themePackRevision == this.themePackRevision && Utils.isEquals(themePack.themePackUrl, this.themePackUrl) && Utils.isEquals(themePack.themePackHash, this.themePackHash) && Utils.isEquals(themePack.themeColor, this.themeColor);
    }
}
