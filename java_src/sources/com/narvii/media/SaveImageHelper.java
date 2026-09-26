package com.narvii.media;

import android.app.Dialog;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import androidx.media3.common.MimeTypes;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.drawables.DrawableLoaderListener;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.image.NVImageLoader;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVImageView;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;
import qa.y;

/* JADX INFO: loaded from: classes4.dex */
public class SaveImageHelper {
    private NVContext context;
    private final DrawableLoaderListener gifListener = new DrawableLoaderListener() { // from class: com.narvii.media.SaveImageHelper.5
        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFailed(String str) {
        }

        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFinished(String str, Drawable drawable, boolean z6) {
        }
    };
    private boolean ignoreMembership;
    File outFile;
    private Dialog progressDialog;
    private Request<?> running;
    private String runningGif;
    SaveImageFragment.SaveImageCallBack saveImageCallBack;

    public interface SaveImageCallBack {
        void onSaveFail(File file);

        void onSaveSuccess(File file);
    }

    public void save(Media media) {
        save(media.url);
    }

    public Uri saveToGallery(File file, String str, String str2) {
        Uri uriInsert = null;
        try {
            Uri contentUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 29) {
                contentUri = MediaStore.Images.Media.getContentUri("external_primary");
            }
            ContentValues contentValues = new ContentValues(7);
            contentValues.put("title", "Amino_" + file.getName());
            contentValues.put("_display_name", "Amino");
            contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
            if (TextUtils.isEmpty(str2)) {
                str2 = "image/jpeg";
            }
            contentValues.put("mime_type", str2);
            if (i10 >= 30) {
                contentValues.put("relative_path", "Pictures/Amino");
            } else {
                contentValues.put("_data", file.getAbsolutePath());
            }
            ContentResolver contentResolver = this.context.getContext().getContentResolver();
            Cursor cursorQuery = contentResolver.query(contentUri, null, "_data=?", new String[]{file.getAbsolutePath()}, null);
            if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                uriInsert = contentResolver.insert(contentUri, contentValues);
            } else {
                Uri uriWithAppendedPath = Uri.withAppendedPath(contentUri, "" + cursorQuery.getLong(cursorQuery.getColumnIndex("_id")));
                contentResolver.update(uriWithAppendedPath, contentValues, null, null);
                uriInsert = uriWithAppendedPath;
            }
            cursorQuery.close();
            if (i10 >= 30) {
                FileInputStream fileInputStream = new FileInputStream(file);
                OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
                byte[] bArr = new byte[4096];
                while (true) {
                    int i11 = fileInputStream.read(bArr);
                    if (i11 == -1) {
                        break;
                    }
                    outputStreamOpenOutputStream.write(bArr, 0, i11);
                }
                outputStreamOpenOutputStream.close();
                fileInputStream.close();
            }
        } catch (Exception e) {
            Log.w("unable to save image to content provider", e);
        }
        return uriInsert;
    }

    public void setIgnoreMembership(boolean z6) {
        this.ignoreMembership = z6;
    }

    public void setSaveImageCallBack(SaveImageFragment.SaveImageCallBack saveImageCallBack) {
        this.saveImageCallBack = saveImageCallBack;
    }

    private void drawWatermark40(Context context, Canvas canvas, String str) throws Exception {
        Paint paint = new Paint();
        paint.setTypeface(Typeface.createFromAsset(context.getAssets(), "Montserrat-ExtraBold.otf"));
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setTextSize(28.0f);
        InputStream inputStreamOpen = context.getResources().getAssets().open("brand_logo.png");
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
        inputStreamOpen.close();
        int iMeasureText = (int) paint.measureText(str);
        int i10 = (-(bitmapDecodeStream.getWidth() + iMeasureText)) / 2;
        canvas.drawText(str, i10, 10.0f, paint);
        canvas.drawBitmap(bitmapDecodeStream, i10 + iMeasureText + 6, -12.0f, paint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getExt(String str) {
        if (str == null || "image/jpeg".equalsIgnoreCase(str)) {
            return ".jpg";
        }
        if (MimeTypes.IMAGE_PNG.equalsIgnoreCase(str)) {
            return ".png";
        }
        if ("image/pjpeg".equalsIgnoreCase(str)) {
            return ".jpg";
        }
        if ("image/tiff".equalsIgnoreCase(str)) {
            return ".tiff";
        }
        return "image/gif".equalsIgnoreCase(str) ? ".gif" : ".jpg";
    }

    public static File getNewFile(Context context, String str) {
        File file = Build.VERSION.SDK_INT >= 30 ? new File(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES), "Amino") : new File(Environment.getExternalStorageDirectory(), "Amino");
        if (!file.exists() && !file.mkdirs()) {
            Log.e("Failed to create directory");
        }
        return new File(file, UUID.randomUUID().toString() + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFailure(String str) {
        SaveImageFragment.SaveImageCallBack saveImageCallBack = this.saveImageCallBack;
        if (saveImageCallBack != null) {
            saveImageCallBack.onSaveFail(null);
        } else {
            onFail(str, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySuccess(Uri uri, File file, String str) {
        SaveImageFragment.SaveImageCallBack saveImageCallBack = this.saveImageCallBack;
        if (saveImageCallBack != null) {
            saveImageCallBack.onSaveSuccess(file);
        } else {
            onSuccess(str, uri);
        }
    }

    private void saveGifImage(final String str) {
        this.progressDialog.show();
        final GifLoader gifLoader = (GifLoader) this.context.getService("gifLoader");
        gifLoader.request(str, this.gifListener);
        this.runningGif = str;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.media.SaveImageHelper.4
            @Override // java.lang.Runnable
            public void run() {
                Uri uriSaveToGallery;
                if (Utils.isEquals(SaveImageHelper.this.runningGif, str)) {
                    int loadingState = gifLoader.getLoadingState(str);
                    if (loadingState == 1 || loadingState == 2 || loadingState == 3) {
                        Utils.postDelayed(this, 400L);
                        return;
                    }
                    SaveImageHelper.this.progressDialog.dismiss();
                    File file = gifLoader.getFile(str);
                    if (SaveImageHelper.isNotEmpty(file)) {
                        try {
                            uriSaveToGallery = SaveImageHelper.this.saveToGallery(file, str, "image/gif");
                        } catch (Exception e) {
                            Log.w("fail to save gif image to gallery", e);
                            uriSaveToGallery = null;
                        }
                    } else {
                        uriSaveToGallery = null;
                    }
                    if (uriSaveToGallery == null) {
                        SaveImageHelper.this.notifyFailure(str);
                    } else {
                        SaveImageHelper.this.notifySuccess(uriSaveToGallery, file, str);
                    }
                }
            }
        }, 200L);
    }

    private void saveHttpImage(final String str, final String str2) {
        this.progressDialog.show();
        this.running = ((NVImageLoader) this.context.getService("imageLoader")).getRequestQueue().add(new Request<File>(0, str2, new Response.ErrorListener() { // from class: com.narvii.media.SaveImageHelper.2
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                SaveImageHelper.this.progressDialog.dismiss();
                SaveImageHelper.this.running = null;
                SaveImageHelper.this.onFail(str, volleyError.getMessage());
                SaveImageFragment.SaveImageCallBack saveImageCallBack = SaveImageHelper.this.saveImageCallBack;
                if (saveImageCallBack != null) {
                    saveImageCallBack.onSaveFail(null);
                }
            }
        }) { // from class: com.narvii.media.SaveImageHelper.3
            Uri uri;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.volley.Request
            public void deliverResponse(File file) {
                SaveImageHelper.this.progressDialog.dismiss();
                SaveImageHelper.this.running = null;
                SaveImageHelper.this.notifySuccess(this.uri, file, str);
            }

            @Override // com.android.volley.Request
            protected Response<File> parseNetworkResponse(NetworkResponse networkResponse) {
                try {
                    int i10 = networkResponse.statusCode;
                    if (i10 / 100 != 2 && i10 != 304) {
                        return Response.error(new VolleyError("fail to   image data: " + networkResponse.statusCode));
                    }
                    byte[] bArrAddWatermark = SaveImageHelper.this.addWatermark(networkResponse.data, str);
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeByteArray(bArrAddWatermark, 0, bArrAddWatermark.length, options);
                    String str3 = options.outMimeType;
                    if (str3 == null) {
                        return Response.error(new VolleyError("malformed image data"));
                    }
                    File newFile = SaveImageHelper.getNewFile(SaveImageHelper.this.context.getContext(), SaveImageHelper.this.getExt(str3));
                    FileOutputStream fileOutputStream = new FileOutputStream(newFile);
                    fileOutputStream.write(bArrAddWatermark);
                    fileOutputStream.close();
                    Uri uriSaveToGallery = SaveImageHelper.this.saveToGallery(newFile, str, options.outMimeType);
                    this.uri = uriSaveToGallery;
                    return uriSaveToGallery == null ? Response.error(new VolleyError("fail to save image to gallery")) : Response.success(newFile, null);
                } catch (Exception e) {
                    Log.w("fail to decode downloaded image data from " + str2);
                    return Response.error(new VolleyError(e));
                }
            }
        });
    }

    private void savePhotoImage(String str) {
        String message;
        File path = ((PhotoManager) this.context.getService("photo")).getPath(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        Uri uriSaveToGallery = null;
        try {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(path.getAbsolutePath(), options);
            String str2 = options.outMimeType;
            if (str2 == null) {
                return;
            }
            uriSaveToGallery = saveToGallery(path, str, str2);
            message = null;
        } catch (Exception e) {
            message = e.getMessage();
        }
        if (uriSaveToGallery == null) {
            onFail(str, message);
        } else {
            onSuccess(str, uriSaveToGallery);
        }
    }

    protected byte[] addWatermark(byte[] bArr, String str) {
        int i10;
        int i11;
        int i12;
        float fMin;
        String str2;
        ConfigService configService = (ConfigService) this.context.getService("config");
        CommunityService communityService = (CommunityService) this.context.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        Community community = communityService == null ? null : communityService.getCommunity(configService.getCommunityId());
        String appName = community == null ? new PackageUtils(this.context.getContext()).getAppName() : community.name;
        MembershipService membershipService = (MembershipService) this.context.getService("membership");
        if (!configService.getBoolean("disableWatermark", false) && (this.ignoreMembership || (membershipService != null && !membershipService.isMembership()))) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                int i13 = options.outWidth;
                if (i13 > 0 && (i10 = options.outHeight) > 0 && i13 <= 1280 && i10 <= 1280) {
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                    int width = bitmapDecodeByteArray.getWidth();
                    int height = bitmapDecodeByteArray.getHeight();
                    if (height < 1000) {
                        float f = height;
                        fMin = Math.min(2.0f, 1024.0f / f);
                        i11 = (int) (width * fMin);
                        i12 = (int) (f * fMin);
                    } else {
                        i11 = width;
                        i12 = height;
                        fMin = 1.0f;
                    }
                    int i14 = i12 + 40;
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i11, i14, bitmapDecodeByteArray.getConfig());
                    bitmapCreateBitmap.eraseColor(ViewCompat.MEASURED_STATE_MASK);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    Paint paint = new Paint();
                    paint.setColor(ViewCompat.MEASURED_STATE_MASK);
                    Rect rect = new Rect();
                    rect.left = 0;
                    rect.right = width;
                    rect.top = 0;
                    rect.bottom = height;
                    Rect rect2 = new Rect();
                    rect2.left = 0;
                    rect2.right = i11;
                    rect2.top = 0;
                    rect2.bottom = i12;
                    canvas.drawBitmap(bitmapDecodeByteArray, rect, rect2, paint);
                    paint.setColor(-12729982);
                    canvas.drawRect(0.0f, i12, i11, i14, paint);
                    canvas.translate(i11 / 2, i12 + 20);
                    drawWatermark40(this.context.getContext(), canvas, appName);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(96000);
                    bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 80, byteArrayOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (fMin == 1.0f) {
                        str2 = "not resized";
                    } else {
                        str2 = "resized " + ((int) (fMin * 100.0f)) + "%";
                    }
                    Log.i("draw watermark, original image is " + str2 + ", compressed size " + ((byteArray.length * 100) / bArr.length) + "%");
                    return byteArray;
                }
            } catch (Throwable th) {
                Log.w("fail to add watermark", th);
            }
        }
        return bArr;
    }

    public void dismiss() {
        if (this.progressDialog.isShowing()) {
            this.progressDialog.cancel();
        }
    }

    public void onFail(String str, String str2) {
        if (this.saveImageCallBack == null) {
            String string = this.context.getContext().getString(R.string.media_save_fail);
            if (!TextUtils.isEmpty(str2)) {
                string = string + "\n" + str2;
            }
            NVToast.makeText(this.context.getContext(), string, 0).show();
        }
    }

    public void onSuccess(String str, Uri uri) {
        NVToast.makeText(this.context.getContext(), R.string.media_save_success, 0).show();
    }

    public void save(String str) {
        save(str, false);
    }

    public SaveImageHelper(NVContext nVContext) {
        this.context = nVContext;
        ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        this.progressDialog = progressDialog;
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.media.SaveImageHelper.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (SaveImageHelper.this.running != null) {
                    SaveImageHelper.this.running.cancel();
                }
                SaveImageHelper.this.running = null;
                SaveImageHelper.this.runningGif = null;
            }
        });
    }

    public static boolean isNotEmpty(File file) {
        if (file.length() > 0) {
            return true;
        }
        return false;
    }

    public void save(String str, boolean z6) {
        if (this.progressDialog.isShowing()) {
            this.progressDialog.cancel();
        }
        if (str == null) {
            SaveImageFragment.SaveImageCallBack saveImageCallBack = this.saveImageCallBack;
            if (saveImageCallBack != null) {
                saveImageCallBack.onSaveFail(null);
                return;
            }
            return;
        }
        if (!str.startsWith(y.HTTP) && !str.startsWith(y.HTTPS)) {
            if (str.startsWith("photo://")) {
                savePhotoImage(str);
                this.progressDialog.show();
                return;
            }
            SaveImageFragment.SaveImageCallBack saveImageCallBack2 = this.saveImageCallBack;
            if (saveImageCallBack2 != null) {
                saveImageCallBack2.onSaveFail(null);
            }
            Log.w("fail to save image, unknown url scheme: " + str);
            return;
        }
        String strReplaceUrl = (z6 || !new PackageUtils(null).isPermalinkHost(Uri.parse(str).getHost())) ? str : NVImageView.replaceUrl(str, "hq");
        if (Utils.isGif(str)) {
            saveGifImage(str);
        } else {
            saveHttpImage(str, strReplaceUrl);
        }
        this.progressDialog.show();
    }

    public void save(Bitmap bitmap) throws Throwable {
        if (this.progressDialog.isShowing()) {
            this.progressDialog.cancel();
        }
        this.progressDialog.show();
        File newFile = getNewFile(this.context.getContext(), ".jpg");
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(newFile);
                if (bitmap != null) {
                    try {
                        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream2);
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        e.printStackTrace();
                        this.progressDialog.dismiss();
                        Utils.safeClose(fileOutputStream);
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        this.progressDialog.dismiss();
                        Utils.safeClose(fileOutputStream);
                        throw th;
                    }
                }
                saveToGallery(newFile, null, null);
                fileOutputStream = null;
                NVToast.makeText(this.context.getContext(), R.string.media_save_success, 0).show();
                this.progressDialog.dismiss();
                Utils.safeClose(fileOutputStream2);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}
