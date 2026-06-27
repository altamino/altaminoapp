package com.narvii.chat;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.widget.ThumbImageView;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class ChatImageView extends ThumbImageView {
    private static final HashMap<String, WeakReference<Bitmap>> cache = new HashMap<>();
    ChatService chatService;
    public int estimateHeight;
    public int estimateWidth;
    private Media media;
    protected PhotoManager photoManager;
    boolean recordInProcessUploadMedia;
    private Drawable refDrawable;
    private int refId;

    protected void whenNewMediaSet(Media media) {
    }

    public ChatImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ChatImageView);
        this.estimateWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.estimateHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.recordInProcessUploadMedia = typedArrayObtainStyledAttributes.getBoolean(2, true);
        typedArrayObtainStyledAttributes.recycle();
        NVContext nVContext = Utils.getNVContext(context);
        this.photoManager = (PhotoManager) nVContext.getService("photo");
        this.chatService = (ChatService) nVContext.getService("chat");
        this.scalePlaceholder = true;
    }

    public int getEstimateHeight() {
        return this.estimateHeight;
    }

    public int getEstimateWidth() {
        return this.estimateWidth;
    }

    public boolean setImageMedia(Media media, int i) {
        String str;
        if (Utils.isEquals(media, this.media)) {
            return false;
        }
        this.media = media;
        whenNewMediaSet(media);
        if (i != 0 && i == this.refId) {
            this.defaultDrawable = this.refDrawable;
        } else {
            this.defaultDrawable = null;
        }
        if (media == null) {
            str = null;
        } else {
            str = media.coverImage;
            if (str == null) {
                str = media.url;
            }
        }
        if (i != 0 && str != null && str.startsWith("photo://")) {
            this.refId = i;
            this.refDrawable = getImage(str);
            setImageDrawable(this.refDrawable);
            if (!this.recordInProcessUploadMedia) {
                return true;
            }
            this.chatService.addInProcessUploadMedia(i);
            return true;
        }
        this.refId = 0;
        this.refDrawable = null;
        return super.setImageMedia(media);
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView
    public String getRequestUrl(Media media, boolean z, int i, int i2) {
        int i3 = this.estimateWidth;
        if (i3 != 0) {
            i = i3;
        }
        int i4 = this.estimateHeight;
        if (i4 != 0) {
            i2 = i4;
        }
        return super.getRequestUrl(media, z, i, i2);
    }

    private Drawable getImage(String str) {
        if (this.photoManager.isGif(str)) {
            return getGifLoader().getLocalGifDrawable(str);
        }
        WeakReference<Bitmap> weakReference = cache.get(str);
        Bitmap bitmap = weakReference == null ? null : weakReference.get();
        if (bitmap != null) {
            return new BitmapDrawable(getResources(), bitmap);
        }
        try {
            Bitmap bitmapCreateBitmap = this.photoManager.createBitmap(str, this.estimateWidth, this.estimateHeight);
            cache.put(str, new WeakReference<>(bitmapCreateBitmap));
            return new BitmapDrawable(getResources(), bitmapCreateBitmap);
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError e) {
            Log.w("out of memory when load " + str);
            OomHelper.test(e);
            return null;
        }
    }
}
