package com.narvii.modulization.page;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.NVObject;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class Page extends NVObject {
    public static final String HOME = "home";
    public String alias;
    public String id;
    public String originalTitle;
    public String parentId;
    public String url;

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

    public String getDisplayName(Context context) {
        if (this.url == null) {
            return null;
        }
        if (!TextUtils.isEmpty(this.alias)) {
            return this.alias;
        }
        if (!TextUtils.isEmpty(this.originalTitle)) {
            return this.originalTitle;
        }
        return getLinkDisplayText(context, true);
    }

    private String getLinkDisplayText(Context context, boolean z) {
        if (this.url.startsWith("ndc://")) {
            String name = PageManager.getPageItemByUrl(this.url).getName(context);
            if (!TextUtils.isEmpty(name)) {
                return name;
            }
            if (z) {
                return context.getString(R.string.custom_page);
            }
            return null;
        }
        return this.url;
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
            if (!TextUtils.isEmpty(this.originalTitle)) {
                return this.originalTitle;
            }
            return getLinkDisplayText(context, false);
        }
        if (TextUtils.isEmpty(this.originalTitle) || this.url.startsWith("ndc://")) {
            return null;
        }
        return this.url;
    }

    public int getIconColor(Context context) {
        return PageManager.getPageItemByUrl(this.url).getIconColor(context);
    }

    public int getIconColorInLeftSidePanel(NVContext nVContext, int i) {
        int leftSideColor = new CommunityConfigHelper(nVContext, i).getLeftSideColor();
        return leftSideColor == 0 ? getIconColor(nVContext.getContext()) : leftSideColor;
    }

    public Drawable getIconBackgroundDrawable(NVContext nVContext) {
        return PageManager.getPageItemByUrl(this.url).getIconBackgroundDrawable(nVContext.getContext(), new CommunityConfigHelper(nVContext).getLeftSideColor());
    }

    public Drawable getIcon(Context context) {
        return PageManager.getPageItemByUrl(this.url).getIconDrawable(context);
    }

    public boolean isMyChatPage() {
        return Utils.isEqualsNotNull(this.url, PageManager.PAGE_MY_CHAT_URI);
    }

    public boolean needSession() {
        return PageManager.needSession(this.url);
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
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

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof Page) && obj.hashCode() == hashCode()) {
            Page page = (Page) obj;
            return Utils.isEquals(this.id, page.id) && Utils.isEquals(this.url, page.url) && Utils.isEquals(this.alias, page.alias) && Utils.isEquals(this.parentId, page.parentId);
        }
        return super.equals(obj);
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
