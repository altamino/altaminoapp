package com.narvii.modulization.page;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.NVObject;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes9.dex */
public class Page extends NVObject {
    public static final String HOME = "home";
    public String alias;
    public String id;
    public String originalTitle;
    public String parentId;
    public String url;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Page) || obj.hashCode() != hashCode()) {
            return super.equals(obj);
        }
        Page page = (Page) obj;
        return Utils.isEquals(this.id, page.id) && Utils.isEquals(this.url, page.url) && Utils.isEquals(this.alias, page.alias) && Utils.isEquals(this.parentId, page.parentId);
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    private String getLinkDisplayText(Context context, boolean z6) {
        if (!this.url.startsWith("ndc://")) {
            return this.url;
        }
        String name = PageManager.getPageItemByUrl(this.url).getName(context);
        if (!TextUtils.isEmpty(name)) {
            return name;
        }
        if (z6) {
            return context.getString(R.string.custom_page);
        }
        return null;
    }

    public String getDisplayName(Context context) {
        if (this.url == null) {
            return null;
        }
        if (TextUtils.isEmpty(this.alias)) {
            return !TextUtils.isEmpty(this.originalTitle) ? this.originalTitle : getLinkDisplayText(context, true);
        }
        return this.alias;
    }

    public Drawable getIcon(Context context) {
        return PageManager.getPageItemByUrl(this.url).getIconDrawable(context);
    }

    public Drawable getIconBackgroundDrawable(NVContext nVContext) {
        return PageManager.getPageItemByUrl(this.url).getIconBackgroundDrawable(nVContext.getContext(), new CommunityConfigHelper(nVContext).getLeftSideColor());
    }

    public int getIconColor(Context context) {
        return PageManager.getPageItemByUrl(this.url).getIconColor(context);
    }

    public int getIconColorInLeftSidePanel(NVContext nVContext, int i10) {
        int leftSideColor = new CommunityConfigHelper(nVContext, i10).getLeftSideColor();
        return leftSideColor == 0 ? getIconColor(nVContext.getContext()) : leftSideColor;
    }

    public String getOriginalTitleOrDefaultName(Context context) {
        String str = this.originalTitle;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String name = PageManager.getPageItemByUrl(this.url).getName(context);
        return TextUtils.isEmpty(name) ? context.getString(R.string.custom_page) : name;
    }

    public String getSubtitle(Context context) {
        if (this.url == null) {
            return null;
        }
        if (!TextUtils.isEmpty(this.alias)) {
            return !TextUtils.isEmpty(this.originalTitle) ? this.originalTitle : getLinkDisplayText(context, false);
        }
        if (TextUtils.isEmpty(this.originalTitle) || this.url.startsWith("ndc://")) {
            return null;
        }
        return this.url;
    }

    @Override // com.narvii.model.NVObject
    public int hashCode() {
        String str = this.url;
        int iHashCode = (str == null ? 0 : str.hashCode()) ^ 1866238234;
        String str2 = this.alias;
        int iHashCode2 = iHashCode ^ (str2 == null ? 0 : str2.hashCode());
        String str3 = this.id;
        int iHashCode3 = iHashCode2 ^ (str3 == null ? 0 : str3.hashCode());
        String str4 = this.parentId;
        return iHashCode3 ^ (str4 != null ? str4.hashCode() : 0);
    }

    public boolean isMyChatPage() {
        return Utils.isEqualsNotNull(this.url, PageManager.PAGE_MY_CHAT_URI);
    }

    public boolean needSession() {
        return PageManager.needSession(this.url);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(this.alias)) {
            sb.append(this.id);
        } else {
            sb.append(this.alias);
            sb.append("(");
            sb.append(this.id);
            sb.append(")");
        }
        sb.append(": ");
        sb.append(this.url);
        return sb.toString();
    }
}
