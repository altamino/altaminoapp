package com.narvii.link.viewer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.narvii.amino.master.R;
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

/* JADX INFO: loaded from: classes8.dex */
public class LinkSnippetImageView extends ThumbImageView {
    private static LruCache<String, ImageSize> localImageWidthMap = new LruCache<>(50);
    ChatBubbleView chatBubbleView;
    ChatService chatService;
    ImageSize imageSize;
    protected PhotoManager photoManager;
    private Drawable refDrawable;
    private int refId;
    private String url;

    public void setChatBubbleView(ChatBubbleView chatBubbleView) {
        this.chatBubbleView = chatBubbleView;
    }

    public boolean setImageMedia(Media media, ChatMessage chatMessage) {
        String str = media == null ? null : media.url;
        if (Utils.isEquals(str, this.url)) {
            return false;
        }
        this.url = str;
        int clientRefIdTmp = chatMessage != null ? chatMessage.getClientRefIdTmp() : 0;
        whenNewMediaSet(media);
        if (clientRefIdTmp == 0 || clientRefIdTmp != this.refId) {
            this.defaultDrawable = getCachedDrawable(str);
        } else {
            this.defaultDrawable = this.refDrawable;
        }
        if (clientRefIdTmp == 0 || str == null || !str.startsWith("photo://")) {
            this.refId = 0;
            this.refDrawable = null;
            return super.setImageMedia(media);
        }
        this.refId = clientRefIdTmp;
        Drawable image = getImage(str);
        this.refDrawable = image;
        setImageDrawable(image);
        return true;
    }

    protected void whenNewMediaSet(Media media) {
        int i10;
        int i11;
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
                        int i12 = options.outWidth;
                        if (i12 == 0 || (i11 = options.outHeight) == 0) {
                            this.imageSize = null;
                        } else {
                            ImageSize imageSize2 = new ImageSize(i12, i11);
                            this.imageSize = imageSize2;
                            localImageWidthMap.put(str, imageSize2);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        } else {
            int[] imageSizeFromUrl = Utils.getImageSizeFromUrl(str, (ConfigService) Utils.getNVContext(getContext()).getService("config"));
            if (imageSizeFromUrl != null) {
                int i13 = imageSizeFromUrl[0];
                if (i13 != 0 && (i10 = imageSizeFromUrl[1]) != 0) {
                    this.imageSize = new ImageSize(i13, i10);
                }
            } else {
                this.imageSize = null;
            }
        }
        requestLayout();
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
        int i10;
        int i11;
        if (this.photoManager.isGif(str)) {
            return getGifLoader().getLocalGifDrawable(str);
        }
        WeakReference<Bitmap> weakReference = this.chatService.bitmapCache.get(str);
        Bitmap bitmap = weakReference == null ? null : weakReference.get();
        if (bitmap != null) {
            return new BitmapDrawable(getResources(), bitmap);
        }
        try {
            if (this.imageSize != null) {
                float f = getContext().getResources().getDisplayMetrics().density;
                ImageSize imageSize = this.imageSize;
                i10 = (int) (((imageSize.width * f) * 1.0f) / 3.0f);
                i11 = (int) (((imageSize.height * f) * 1.0f) / 3.0f);
            } else {
                i10 = 0;
                i11 = 0;
            }
            Bitmap bitmapCreateBitmap = this.photoManager.createBitmap(str, i10, i11);
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
    public String getRequestUrl(Media media, boolean z6, int i10, int i11) {
        if (media == null) {
            return null;
        }
        String str = media.coverImage;
        return str == null ? media.url : str;
    }

    public LinkSnippetImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        NVContext nVContext = Utils.getNVContext(context);
        this.photoManager = (PhotoManager) nVContext.getService("photo");
        this.chatService = (ChatService) nVContext.getService("chat");
        this.scalePlaceholder = false;
    }

    @Override // com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        Bitmap bitmap;
        Drawable drawable = getDrawable();
        int maxContentWidth = 0;
        if (this.imageSize != null) {
            ChatBubbleView chatBubbleView = this.chatBubbleView;
            if (chatBubbleView != null) {
                maxContentWidth = chatBubbleView.getMaxContentWidth();
            }
            int i12 = maxContentWidth;
            ImageSize imageSize = this.imageSize;
            float f = (imageSize.width * 1.0f) / imageSize.height;
            int adjustedSize = LinkSnippetSizeUtils.getAdjustedSize(getContext(), this.imageSize.width, 3.0f, getContext().getResources().getDimensionPixelSize(R.dimen.link_snippet_max_width), i12, i10);
            setMeasuredDimension(adjustedSize, (int) ((adjustedSize / f) + 0.5f));
            return;
        }
        if ((drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null) {
            int width = bitmap.getWidth();
            float height = (width * 1.0f) / bitmap.getHeight();
            ChatBubbleView chatBubbleView2 = this.chatBubbleView;
            if (chatBubbleView2 != null) {
                maxContentWidth = chatBubbleView2.getMaxContentWidth();
            }
            int adjustedSize2 = LinkSnippetSizeUtils.getAdjustedSize(getContext(), width, 3.0f, getContext().getResources().getDimensionPixelSize(R.dimen.link_snippet_max_width), maxContentWidth, i10);
            setMeasuredDimension(adjustedSize2, (int) ((adjustedSize2 / height) + 0.5f));
            return;
        }
        setMeasuredDimension(Utils.dpToPxInt(getContext(), 200.0f), Utils.dpToPxInt(getContext(), 200.0f));
    }
}
