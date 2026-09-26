package com.narvii.monetization.sticker.shared;

import android.content.SharedPreferences;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;

/* JADX INFO: loaded from: classes7.dex */
public class SharedStickerPrefHelper {
    private int cid;
    NVContext nvContext;
    SharedPreferences sharedPreferences;

    public int getScrollPosition() {
        return this.sharedPreferences.getInt(this.cid + "_position", -1);
    }

    public int getScrollTop() {
        return this.sharedPreferences.getInt(this.cid + "_top", -1);
    }

    public void saveScrollPositionAndTop(int i10, int i11) {
        this.sharedPreferences.edit().putInt(this.cid + "_position", i10).putInt(this.cid + "_top", i11).apply();
    }

    public SharedStickerPrefHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.cid = ((ConfigService) nVContext.getService("config")).getCommunityId();
        this.sharedPreferences = nVContext.getContext().getSharedPreferences("shared_sticker_scroll", 0);
    }
}
