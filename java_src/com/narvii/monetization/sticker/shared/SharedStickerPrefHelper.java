package com.narvii.monetization.sticker.shared;

import android.content.SharedPreferences;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;

/* loaded from: classes3.dex */
public class SharedStickerPrefHelper {
    private int cid;
    NVContext nvContext;
    SharedPreferences sharedPreferences;

    public SharedStickerPrefHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.cid = ((ConfigService) nVContext.getService("config")).getCommunityId();
        this.sharedPreferences = nVContext.getContext().getSharedPreferences("shared_sticker_scroll", 0);
    }

    public void saveScrollPositionAndTop(int i, int i2) {
        this.sharedPreferences.edit().putInt(this.cid + "_position", i).putInt(this.cid + "_top", i2).apply();
    }

    public int getScrollPosition() {
        return this.sharedPreferences.getInt(this.cid + "_position", -1);
    }

    public int getScrollTop() {
        return this.sharedPreferences.getInt(this.cid + "_top", -1);
    }
}
