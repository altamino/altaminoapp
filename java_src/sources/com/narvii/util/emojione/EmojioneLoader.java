package com.narvii.util.emojione;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import java.io.InputStream;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes10.dex */
public class EmojioneLoader implements Runnable {
    public static final ThreadPoolExecutor executor = Utils.createThreadPoolExecutor(2, "emojione");
    Bitmap bmp;
    String emoji;
    ImageView iv;

    @Override // java.lang.Runnable
    public void run() {
        String assetsPath;
        if (this.bmp != null) {
            if (this.iv.getTag() == this.emoji) {
                this.iv.setImageDrawable(new BitmapDrawable(this.bmp));
                return;
            } else {
                this.bmp.recycle();
                return;
            }
        }
        Object tag = this.iv.getTag();
        String str = this.emoji;
        if (tag == str && (assetsPath = EmojionePng.getAssetsPath(str)) != null) {
            try {
                InputStream inputStreamOpen = this.iv.getContext().getAssets().open(assetsPath);
                this.bmp = BitmapFactory.decodeStream(inputStreamOpen);
                inputStreamOpen.close();
            } catch (Throwable th) {
                OomHelper.test(th);
            }
        }
        if (this.bmp != null) {
            if (this.iv.getTag() == this.emoji) {
                Utils.post(this);
            } else {
                this.bmp.recycle();
            }
        }
    }

    public EmojioneLoader(String str, ImageView imageView) {
        this.emoji = str;
        this.iv = imageView;
    }
}
