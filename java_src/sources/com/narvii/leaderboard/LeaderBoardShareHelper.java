package com.narvii.leaderboard;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.core.view.ViewCompat;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.Community;
import com.narvii.util.Utils;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.image.Screenshot;
import com.narvii.util.statistics.TmpValue;

/* JADX INFO: loaded from: classes4.dex */
public class LeaderBoardShareHelper {
    private static final TmpValue<Drawable> DYNAMICTHEMEBG = new TmpValue<>();
    private NVContext ctx;

    interface SaveCallBack {
        void onSaved();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap drawWaterMask(Bitmap bitmap, Bitmap bitmap2, Community community) {
        String string = this.ctx.getContext().getString(R.string.leader_board_share_info);
        String string2 = this.ctx.getContext().getString(R.string.amino_id_with_name, community.endpoint);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        int dimension = (int) this.ctx.getContext().getResources().getDimension(R.dimen.leader_board_share_water_mask_height);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, bitmap.getConfig());
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        paint.setColor(-1);
        int i10 = height - dimension;
        canvas.drawRect(0.0f, i10, width, height, paint);
        int iDpToPx = (int) Utils.dpToPx(this.ctx.getContext(), 80.0f);
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(this.ctx.getContext().getResources(), R.drawable.amino_logo_white), iDpToPx, (iDpToPx * 78) / 277, true);
        int iDpToPx2 = (int) Utils.dpToPx(this.ctx.getContext(), 38.0f);
        Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmap2, iDpToPx2, iDpToPx2, true);
        int iDpToPx3 = (int) Utils.dpToPx(this.ctx.getContext(), 18.0f);
        Bitmap bitmapCreateScaledBitmap3 = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(this.ctx.getContext().getResources(), R.drawable.ic_emoji_peace), iDpToPx3, iDpToPx3, true);
        paint.setTextSize(Utils.dpToPx(this.ctx.getContext(), 20.0f));
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        Typeface typeface = Typeface.DEFAULT;
        paint.setTypeface(Typeface.create(typeface, 1));
        float fMeasureText = paint.measureText(string);
        int i11 = (int) (-(paint.ascent() + paint.descent()));
        Paint paint2 = new Paint(paint);
        paint2.setTextSize(Utils.dpToPx(this.ctx.getContext(), 16.0f));
        paint2.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint2.setTypeface(Typeface.create(typeface, 0));
        float fMeasureText2 = paint2.measureText(string2);
        int i12 = (int) (-(paint2.ascent() + paint2.descent()));
        canvas.drawBitmap(bitmapCreateScaledBitmap, (width - iDpToPx) / 2, (int) Utils.dpToPx(this.ctx.getContext(), 20.0f), paint);
        int i13 = (int) ((dimension - iDpToPx2) / 2.0f);
        int iDpToPxInt = i13 + iDpToPx2 + Utils.dpToPxInt(this.ctx.getContext(), 10.0f);
        int iDpToPxInt2 = Utils.dpToPxInt(this.ctx.getContext(), 5.0f);
        int i14 = (int) ((((dimension - i11) - i12) - iDpToPxInt2) / 2.0f);
        int i15 = i14 + i11 + iDpToPxInt2;
        float f = iDpToPxInt;
        int i16 = (int) (f + fMeasureText);
        int i17 = (int) (i14 + ((i11 - iDpToPx3) / 2.0f));
        if (!Utils.isRtl()) {
            canvas.drawBitmap(bitmapCreateScaledBitmap2, i13, i10 + i13, paint);
            canvas.drawText(string, f, i10 + i14 + i11, paint);
            canvas.drawText(string2, f, i10 + i15 + i12, paint2);
            canvas.drawBitmap(bitmapCreateScaledBitmap3, i16, i10 + i17, paint);
            return bitmapCreateBitmap;
        }
        canvas.drawBitmap(bitmapCreateScaledBitmap2, (width - i13) - iDpToPx2, i10 + i13, paint);
        float f6 = width - iDpToPxInt;
        canvas.drawTextRun((CharSequence) string, 0, string.length(), 0, string.length(), f6 - fMeasureText, i10 + i14 + i11, true, paint);
        canvas.drawTextRun((CharSequence) string2, 0, string2.length(), 0, string2.length(), f6 - fMeasureText2, i10 + i15 + i12, true, paint2);
        canvas.drawBitmap(bitmapCreateScaledBitmap3, (width - i16) - iDpToPx3, i10 + i17, paint);
        return bitmapCreateBitmap;
    }

    public Drawable getScreenShot() {
        Drawable andRemove = DYNAMICTHEMEBG.getAndRemove();
        return andRemove == null ? this.ctx.getContext().getResources().getDrawable(R.drawable.leader_board_day) : andRemove;
    }

    public void saveLeaderBoardBackGround(Activity activity, int i10, final Community community, final SaveCallBack saveCallBack) {
        final Bitmap bitmapTakeScreenshot;
        if (activity == null) {
            return;
        }
        if (i10 == 0) {
            try {
                bitmapTakeScreenshot = Screenshot.takeScreenshot(activity, 1.0f);
            } catch (Exception | OutOfMemoryError unused) {
                bitmapTakeScreenshot = null;
            }
        } else {
            bitmapTakeScreenshot = Screenshot.takeScreenshot(activity.findViewById(i10));
        }
        if (bitmapTakeScreenshot != null) {
            ((NVImageLoader) this.ctx.getService("imageLoader")).get(community.icon, new ImageLoader.ImageListener() { // from class: com.narvii.leaderboard.LeaderBoardShareHelper.1
                @Override // com.android.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError volleyError) {
                    SaveCallBack saveCallBack2 = saveCallBack;
                    if (saveCallBack2 != null) {
                        saveCallBack2.onSaved();
                    }
                }

                @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z6) {
                    if (imageContainer.getBitmap() != null) {
                        LeaderBoardShareHelper.DYNAMICTHEMEBG.set(new BitmapDrawable(LeaderBoardShareHelper.this.drawWaterMask(bitmapTakeScreenshot, imageContainer.getBitmap(), community)), 1000L);
                        SaveCallBack saveCallBack2 = saveCallBack;
                        if (saveCallBack2 != null) {
                            saveCallBack2.onSaved();
                        }
                    }
                }
            });
        } else if (saveCallBack != null) {
            saveCallBack.onSaved();
        }
    }

    public LeaderBoardShareHelper(NVContext nVContext) {
        this.ctx = nVContext;
    }
}
