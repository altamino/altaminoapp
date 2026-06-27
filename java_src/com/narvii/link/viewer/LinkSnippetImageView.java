package com.narvii.link.viewer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatBubbleView;
import com.narvii.chat.core.ChatService;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatMessage;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Log;
import com.narvii.util.LruCache;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.widget.ThumbImageView;
import java.io.File;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class LinkSnippetImageView extends ThumbImageView {
    private static LruCache<String, ImageSize> localImageWidthMap = new LruCache<>(50);
    ChatBubbleView chatBubbleView;
    ChatService chatService;
    ImageSize imageSize;
    protected PhotoManager photoManager;
    private Drawable refDrawable;
    private int refId;
    private String url;

    public LinkSnippetImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        NVContext nVContext = Utils.getNVContext(context);
        this.photoManager = (PhotoManager) nVContext.getService("photo");
        this.chatService = (ChatService) nVContext.getService("chat");
        this.scalePlaceholder = false;
    }

    public void setChatBubbleView(ChatBubbleView chatBubbleView) {
        this.chatBubbleView = chatBubbleView;
    }

    @Override // com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        Bitmap bitmap;
        Drawable drawable = getDrawable();
        if (this.imageSize != null) {
            ChatBubbleView chatBubbleView = this.chatBubbleView;
            int maxContentWidth = chatBubbleView == null ? 0 : chatBubbleView.getMaxContentWidth();
            ImageSize imageSize = this.imageSize;
            int adjustedSize = LinkSnippetSizeUtils.getAdjustedSize(getContext(), this.imageSize.width, 3.0f, getContext().getResources().getDimensionPixelSize(R.dimen.link_snippet_max_width), maxContentWidth, i);
            setMeasuredDimension(adjustedSize, (int) ((adjustedSize / ((imageSize.width * 1.0f) / imageSize.height)) + 0.5f));
            return;
        }
        if ((drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null) {
            int width = bitmap.getWidth();
            float height = (width * 1.0f) / bitmap.getHeight();
            ChatBubbleView chatBubbleView2 = this.chatBubbleView;
            int adjustedSize2 = LinkSnippetSizeUtils.getAdjustedSize(getContext(), width, 3.0f, getContext().getResources().getDimensionPixelSize(R.dimen.link_snippet_max_width), chatBubbleView2 == null ? 0 : chatBubbleView2.getMaxContentWidth(), i);
            setMeasuredDimension(adjustedSize2, (int) ((adjustedSize2 / height) + 0.5f));
            return;
        }
        setMeasuredDimension(Utils.dpToPxInt(getContext(), 200.0f), Utils.dpToPxInt(getContext(), 200.0f));
    }

    public boolean setImageMedia(Media media, ChatMessage chatMessage) {
        String str = media == null ? null : media.url;
        if (Utils.isEquals(str, this.url)) {
            return false;
        }
        this.url = str;
        int i = chatMessage != null ? chatMessage.clientRefId : 0;
        whenNewMediaSet(media);
        if (i != 0 && i == this.refId) {
            this.defaultDrawable = this.refDrawable;
        } else {
            this.defaultDrawable = getCachedDrawable(str);
        }
        if (i != 0 && str != null && str.startsWith("photo://")) {
            this.refId = i;
            this.refDrawable = getImage(str);
            setImageDrawable(this.refDrawable);
            return true;
        }
        this.refId = 0;
        this.refDrawable = null;
        return super.setImageMedia(media);
    }

    private Drawable getCachedDrawable(String str) {
        WeakReference<Bitmap> weakReference = this.chatService.bitmapCache.get(str);
        Bitmap bitmap = weakReference == null ? null : weakReference.get();
        if (bitmap != null) {
            return new BitmapDrawable(getResources(), bitmap);
        }
        return null;
    }

    private Drawable getImage(String str) {
        int i;
        if (this.photoManager.isGif(str)) {
            return getGifLoader().getLocalGifDrawable(str);
        }
        WeakReference<Bitmap> weakReference = this.chatService.bitmapCache.get(str);
        Bitmap bitmap = weakReference == null ? null : weakReference.get();
        if (bitmap != null) {
            return new BitmapDrawable(getResources(), bitmap);
        }
        try {
            int i2 = 0;
            if (this.imageSize != null) {
                float f = getContext().getResources().getDisplayMetrics().density;
                i2 = (int) (((this.imageSize.width * f) * 1.0f) / 3.0f);
                i = (int) (((this.imageSize.height * f) * 1.0f) / 3.0f);
            } else {
                i = 0;
            }
            Bitmap bitmapCreateBitmap = this.photoManager.createBitmap(str, i2, i);
            this.chatService.bitmapCache.put(str, new WeakReference<>(bitmapCreateBitmap));
            return new BitmapDrawable(getResources(), bitmapCreateBitmap);
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError e) {
            Log.w("out of memory when load " + str);
            OomHelper.test(e);
            return null;
        }
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView
    public String getRequestUrl(Media media, boolean z, int i, int i2) {
        if (media == null) {
            return null;
        }
        String str = media.coverImage;
        return str == null ? media.url : str;
    }

    protected void whenNewMediaSet(Media media) {
        String str = media == null ? null : media.url;
        if (str == null) {
            return;
        }
        if (str.startsWith("photo://")) {
            ImageSize imageSize = localImageWidthMap.get(str);
            if (imageSize != null) {
                this.imageSize = imageSize;
            } else {
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    File path = this.photoManager.getPath(str);
                    if (path != null) {
                        String absolutePath = path.getAbsolutePath();
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeFile(absolutePath, options);
                        if (options.outWidth != 0 && options.outHeight != 0) {
                            this.imageSize = new ImageSize(options.outWidth, options.outHeight);
                            localImageWidthMap.put(str, this.imageSize);
                        } else {
                            this.imageSize = null;
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        } else {
            int[] imageSizeFromUrl = Utils.getImageSizeFromUrl(str, (ConfigService) Utils.getNVContext(getContext()).getService("config"));
            if (imageSizeFromUrl != null) {
                if (imageSizeFromUrl[0] != 0 && imageSizeFromUrl[1] != 0) {
                    this.imageSize = new ImageSize(imageSizeFromUrl[0], imageSizeFromUrl[1]);
                }
            } else {
                this.imageSize = null;
            }
        }
        requestLayout();
    }
}
