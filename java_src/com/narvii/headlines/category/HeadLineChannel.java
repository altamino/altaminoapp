package com.narvii.headlines.category;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import com.narvii.amino.mastes.R;

/* loaded from: classes2.dex */
public class HeadLineChannel {
    public String channelId;
    public String icon;
    public int iconResId;
    public String title;
    public int titleResId;
    public static String CHANNEL_HOT_ID = "hot";
    public static final HeadLineChannel CATEGORY_HOT = new HeadLineChannel(null, CHANNEL_HOT_ID, null, R.drawable.ic_headline_categoty_hot, R.string.hot);
    public static String CHANNEL_MY_AMINO_ID = "my-aminos";
    public static final HeadLineChannel CATEGORY_MY_AMINOS = new HeadLineChannel(null, CHANNEL_MY_AMINO_ID, null, R.drawable.ic_headline_categoty_myaminos, R.string.my_communities);

    public HeadLineChannel() {
    }

    public HeadLineChannel(String str, String str2, String str3, int i) {
        this.icon = str;
        this.channelId = str2;
        this.title = str3;
        this.iconResId = i;
    }

    public HeadLineChannel(String str, String str2, String str3, int i, int i2) {
        this.icon = str;
        this.channelId = str2;
        this.title = str3;
        this.iconResId = i;
        this.titleResId = i2;
    }

    public Drawable getLocalIconDrawable(Context context) {
        if (this == CATEGORY_HOT || this == CATEGORY_MY_AMINOS) {
            return ContextCompat.getDrawable(context, this.iconResId);
        }
        return null;
    }

    public Drawable getLocalEditIconDrawable(Context context) {
        if (this == CATEGORY_HOT) {
            return ContextCompat.getDrawable(context, R.drawable.ic_headline_edit_hot);
        }
        if (this == CATEGORY_MY_AMINOS) {
            return ContextCompat.getDrawable(context, R.drawable.ic_headline_edit_my_aminos);
        }
        return null;
    }

    public String getLocalTitle(Context context) {
        if (this == CATEGORY_HOT || this == CATEGORY_MY_AMINOS) {
            return context.getResources().getString(this.titleResId);
        }
        return null;
    }

    public boolean isLocalChannel() {
        return CHANNEL_MY_AMINO_ID.equals(this.channelId) || CHANNEL_HOT_ID.equals(this.channelId);
    }
}
