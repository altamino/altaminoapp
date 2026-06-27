package com.narvii.leaderboard;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.Community;
import com.narvii.util.Utils;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.image.Screenshot;
import com.narvii.util.statistics.TmpValue;

/* loaded from: classes.dex */
public class LeaderBoardShareHelper {
    private static final TmpValue<Drawable> DYNAMICTHEMEBG = new TmpValue<>();
    private NVContext ctx;

    interface SaveCallBack {
        void onSaved();
    }

    public LeaderBoardShareHelper(NVContext nVContext) {
        this.ctx = nVContext;
    }

    public Drawable getScreenShot() {
        Drawable andRemove = DYNAMICTHEMEBG.getAndRemove();
        return andRemove == null ? this.ctx.getContext().getResources().getDrawable(R.drawable.leader_board_day) : andRemove;
    }

    public void saveLeaderBoardBackGround(Activity activity, int i, final Community community, final SaveCallBack saveCallBack) {
        if (activity == null) {
            return;
        }
        final Bitmap bitmapTakeScreenshot = null;
        if (i == 0) {
            try {
                bitmapTakeScreenshot = Screenshot.takeScreenshot(activity, 1.0f);
            } catch (Exception | OutOfMemoryError unused) {
            }
        } else {
            bitmapTakeScreenshot = Screenshot.takeScreenshot(activity.findViewById(i));
        }
        if (bitmapTakeScreenshot != null) {
            ((NVImageLoader) this.ctx.getService("imageLoader")).get(community.icon, new ImageLoader.ImageListener() { // from class: com.narvii.leaderboard.LeaderBoardShareHelper.1
                @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                    if (imageContainer.getBitmap() == null) {
                        return;
                    }
                    LeaderBoardShareHelper.DYNAMICTHEMEBG.set(new BitmapDrawable(LeaderBoardShareHelper.this.drawWaterMask(bitmapTakeScreenshot, imageContainer.getBitmap(), community)), 1000L);
                    SaveCallBack saveCallBack2 = saveCallBack;
                    if (saveCallBack2 != null) {
                        saveCallBack2.onSaved();
                    }
                }

                @Override // com.android.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError volleyError) {
                    SaveCallBack saveCallBack2 = saveCallBack;
                    if (saveCallBack2 != null) {
                        saveCallBack2.onSaved();
                    }
                }
            });
        } else if (saveCallBack != null) {
            saveCallBack.onSaved();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap drawWaterMask(Bitmap bitmap, Bitmap bitmap2, Community community) {
        int i;
        int i2;
        Paint paint;
        int i3;
        Bitmap bitmap3;
        Canvas canvas;
        String string = this.ctx.getContext().getString(R.string.leader_board_share_info);
        String string2 = this.ctx.getContext().getString(R.string.amino_id_with_name, community.endpoint);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        int dimension = (int) this.ctx.getContext().getResources().getDimension(R.dimen.leader_board_share_water_mask_height);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, bitmap.getConfig());
        Canvas canvas2 = new Canvas(bitmapCreateBitmap);
        canvas2.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        paint2.setColor(-1);
        int i4 = height - dimension;
        canvas2.drawRect(0.0f, i4, width, height, paint2);
        int iDpToPx = (int) Utils.dpToPx(this.ctx.getContext(), 80.0f);
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(this.ctx.getContext().getResources(), R.drawable.amino_logo_white), iDpToPx, (iDpToPx * 78) / 277, true);
        int iDpToPx2 = (int) Utils.dpToPx(this.ctx.getContext(), 38.0f);
        Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmap2, iDpToPx2, iDpToPx2, true);
        int iDpToPx3 = (int) Utils.dpToPx(this.ctx.getContext(), 18.0f);
        Bitmap bitmapCreateScaledBitmap3 = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(this.ctx.getContext().getResources(), R.drawable.ic_emoji_peace), iDpToPx3, iDpToPx3, true);
        paint2.setTextSize(Utils.dpToPx(this.ctx.getContext(), 20.0f));
        paint2.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint2.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
        float fMeasureText = paint2.measureText(string);
        int i5 = (int) (-(paint2.ascent() + paint2.descent()));
        Paint paint3 = new Paint(paint2);
        paint3.setTextSize(Utils.dpToPx(this.ctx.getContext(), 16.0f));
        paint3.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint3.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
        float fMeasureText2 = paint3.measureText(string2);
        int i6 = (int) (-(paint3.ascent() + paint3.descent()));
        canvas2.drawBitmap(bitmapCreateScaledBitmap, (width - iDpToPx) / 2, (int) Utils.dpToPx(this.ctx.getContext(), 20.0f), paint2);
        int i7 = (int) ((dimension - iDpToPx2) / 2.0f);
        int iDpToPxInt = i7 + iDpToPx2 + Utils.dpToPxInt(this.ctx.getContext(), 10.0f);
        int i8 = (int) ((((dimension - i5) - i6) - r8) / 2.0f);
        int iDpToPxInt2 = i8 + i5 + Utils.dpToPxInt(this.ctx.getContext(), 5.0f);
        float f = iDpToPxInt;
        int i9 = (int) (f + fMeasureText);
        int i10 = (int) (i8 + ((i5 - iDpToPx3) / 2.0f));
        if (Utils.isRtl()) {
            canvas2.drawBitmap(bitmapCreateScaledBitmap2, (width - i7) - iDpToPx2, i4 + i7, paint2);
            if (Build.VERSION.SDK_INT >= 23) {
                float f2 = width - iDpToPxInt;
                i = iDpToPx3;
                canvas2.drawTextRun((CharSequence) string, 0, string.length(), 0, string.length(), f2 - fMeasureText, i4 + i8 + i5, true, paint2);
                float f3 = i4 + iDpToPxInt2 + i6;
                paint = paint2;
                i3 = width;
                canvas2.drawTextRun((CharSequence) string2, 0, string2.length(), 0, string2.length(), f2 - fMeasureText2, f3, true, paint3);
                canvas = canvas2;
                i2 = i9;
                bitmap3 = bitmapCreateScaledBitmap3;
            } else {
                i = iDpToPx3;
                i2 = i9;
                paint = paint2;
                i3 = width;
                bitmap3 = bitmapCreateScaledBitmap3;
                float f4 = i3 - iDpToPxInt;
                canvas = canvas2;
                canvas.drawText(string, f4 - fMeasureText, i4 + i8 + i5, paint);
                canvas.drawText(string2, f4 - fMeasureText2, i4 + iDpToPxInt2 + i6, paint3);
            }
            canvas.drawBitmap(bitmap3, (i3 - i2) - i, i4 + i10, paint);
        } else {
            canvas2.drawBitmap(bitmapCreateScaledBitmap2, i7, i4 + i7, paint2);
            canvas2.drawText(string, f, i4 + i8 + i5, paint2);
            canvas2.drawText(string2, f, i4 + iDpToPxInt2 + i6, paint3);
            canvas2.drawBitmap(bitmapCreateScaledBitmap3, i9, i4 + i10, paint2);
        }
        return bitmapCreateBitmap;
    }
}
