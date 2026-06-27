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
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.media.SaveImageFragment;
import com.narvii.model.Media;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.drawables.DrawableLoaderListener;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes3.dex */
public class SaveImageHelper {
    private NVContext context;
    private final DrawableLoaderListener gifListener = new DrawableLoaderListener() { // from class: com.narvii.media.SaveImageHelper.5
        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFailed(String str) {
        }

        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFinished(String str, Drawable drawable, boolean z) {
        }
    };
    private boolean ignoreMembership;
    File outFile;
    private Dialog progressDialog;
    private Request<?> running;
    private String runningGif;
    SaveImageFragment.SaveImageCallBack saveImageCallBack;
    private boolean usingSDCardStorage;

    public interface SaveImageCallBack {
        void onSaveFail(File file);

        void onSaveSuccess(File file);
    }

    protected byte[] addWatermark(byte[] bArr, String str) {
        return bArr;
    }

    public SaveImageHelper(NVContext nVContext) {
        this.context = nVContext;
        this.progressDialog = new ProgressDialog(this.context.getContext());
        this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.media.SaveImageHelper.1
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

    public void dismiss() {
        if (this.progressDialog.isShowing()) {
            this.progressDialog.cancel();
        }
    }

    public void setIgnoreMembership(boolean z) {
        this.ignoreMembership = z;
    }

    public void setSaveImageCallBack(SaveImageFragment.SaveImageCallBack saveImageCallBack) {
        this.saveImageCallBack = saveImageCallBack;
    }

    public void onSuccess(String str, Uri uri) {
        NVToast.makeText(this.context.getContext(), R.string.media_save_success, 0).show();
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

    public void save(Media media) {
        save(media, false);
    }

    public void save(Media media, boolean z) {
        this.usingSDCardStorage = z;
        save(media.url, z);
    }

    public void save(String str) {
        save(str, false);
    }

    public void save(String str, boolean z) {
        save(str, z, false);
    }

    public void save(String str, boolean z, boolean z2) {
        this.usingSDCardStorage = z;
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
        if (str.startsWith("http://") || str.startsWith("https://")) {
            String strReplaceUrl = (z2 || !new PackageUtils(null).isPermalinkHost(Uri.parse(str).getHost())) ? str : NVImageView.replaceUrl(str, "hq");
            if (Utils.isGif(str)) {
                saveGifImage(str);
            } else {
                saveHttpImage(str, strReplaceUrl);
            }
            this.progressDialog.show();
            return;
        }
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
    }

    public void save(Bitmap bitmap) {
        save(bitmap, false);
    }

    public void save(Bitmap bitmap, boolean z) {
        FileOutputStream fileOutputStream;
        this.usingSDCardStorage = z;
        if (this.progressDialog.isShowing()) {
            this.progressDialog.cancel();
        }
        this.progressDialog.show();
        File newFile = getNewFile(".jpg");
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(newFile);
                if (bitmap != null) {
                    try {
                        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream2 = fileOutputStream;
                        e.printStackTrace();
                        this.progressDialog.dismiss();
                        Utils.safeClose(fileOutputStream2);
                        return;
                    } catch (Throwable th) {
                        th = th;
                        this.progressDialog.dismiss();
                        Utils.safeClose(fileOutputStream);
                        throw th;
                    }
                }
                saveToGallery(newFile, null, null);
                NVToast.makeText(this.context.getContext(), R.string.media_save_success, 0).show();
                this.progressDialog.dismiss();
                Utils.safeClose(fileOutputStream);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = fileOutputStream2;
        }
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
        canvas.drawText(str, (-(bitmapDecodeStream.getWidth() + ((int) paint.measureText(str)))) / 2, 10.0f, paint);
        canvas.drawBitmap(bitmapDecodeStream, r2 + r6 + 6, -12.0f, paint);
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

            @Override // com.android.volley.Request
            protected Response<File> parseNetworkResponse(NetworkResponse networkResponse) throws IOException {
                try {
                    if (networkResponse.statusCode / 100 != 2 && networkResponse.statusCode != 304) {
                        return Response.error(new VolleyError("fail to   image data: " + networkResponse.statusCode));
                    }
                    byte[] bArrAddWatermark = SaveImageHelper.this.addWatermark(networkResponse.data, str);
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeByteArray(bArrAddWatermark, 0, bArrAddWatermark.length, options);
                    if (options.outMimeType != null) {
                        String ext = SaveImageHelper.this.getExt(options.outMimeType);
                        File existsFile = SaveImageHelper.this.getExistsFile(ext, bArrAddWatermark, null);
                        if (existsFile == null) {
                            existsFile = SaveImageHelper.this.getNewFile(ext);
                            FileOutputStream fileOutputStream = new FileOutputStream(existsFile);
                            fileOutputStream.write(bArrAddWatermark);
                            fileOutputStream.close();
                        }
                        this.uri = SaveImageHelper.this.saveToGallery(existsFile, str, options.outMimeType);
                        if (this.uri == null && SaveImageHelper.this.usingSDCardStorage) {
                            return Response.error(new VolleyError("fail to save image to gallery"));
                        }
                        if (this.uri == null && existsFile != null && existsFile.length() > 0) {
                            this.uri = Utils.getUriFromFile(SaveImageHelper.this.context.getContext(), existsFile);
                        }
                        return Response.success(existsFile, null);
                    }
                    return Response.error(new VolleyError("malformed image data"));
                } catch (Exception e) {
                    Log.w("fail to decode downloaded image data from " + str2);
                    return Response.error(new VolleyError(e));
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.volley.Request
            public void deliverResponse(File file) {
                SaveImageHelper.this.progressDialog.dismiss();
                SaveImageHelper.this.running = null;
                SaveImageHelper saveImageHelper = SaveImageHelper.this;
                SaveImageFragment.SaveImageCallBack saveImageCallBack = saveImageHelper.saveImageCallBack;
                if (saveImageCallBack != null) {
                    saveImageCallBack.onSaveSuccess(file);
                } else {
                    saveImageHelper.onSuccess(str, this.uri);
                }
            }
        });
    }

    private void saveGifImage(final String str) {
        this.progressDialog.show();
        final GifLoader gifLoader = (GifLoader) this.context.getService("gifLoader");
        gifLoader.request(str, this.gifListener);
        this.runningGif = str;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.media.SaveImageHelper.4
            /* JADX WARN: Removed duplicated region for block: B:29:0x0082  */
            /* JADX WARN: Removed duplicated region for block: B:37:0x00a0  */
            /* JADX WARN: Removed duplicated region for block: B:38:0x00a4  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() throws java.io.IOException {
                /*
                    r9 = this;
                    java.lang.String r0 = ".gif"
                    com.narvii.media.SaveImageHelper r1 = com.narvii.media.SaveImageHelper.this
                    java.lang.String r1 = com.narvii.media.SaveImageHelper.access$100(r1)
                    java.lang.String r2 = r2
                    boolean r1 = com.narvii.util.Utils.isEquals(r1, r2)
                    if (r1 != 0) goto L11
                    return
                L11:
                    com.narvii.util.drawables.gif.GifLoader r1 = r3
                    java.lang.String r2 = r2
                    int r1 = r1.getLoadingState(r2)
                    r2 = 1
                    if (r1 == r2) goto Lc6
                    r2 = 2
                    if (r1 == r2) goto Lc6
                    r2 = 3
                    if (r1 == r2) goto Lc6
                    com.narvii.media.SaveImageHelper r1 = com.narvii.media.SaveImageHelper.this
                    android.app.Dialog r1 = com.narvii.media.SaveImageHelper.access$200(r1)
                    r1.dismiss()
                    com.narvii.util.drawables.gif.GifLoader r1 = r3
                    java.lang.String r2 = r2
                    java.io.File r1 = r1.getFile(r2)
                    long r2 = r1.length()
                    r4 = 0
                    r6 = 0
                    int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                    if (r7 <= 0) goto L7e
                    com.narvii.media.SaveImageHelper r2 = com.narvii.media.SaveImageHelper.this     // Catch: java.lang.Exception -> L7b
                    java.io.File r2 = com.narvii.media.SaveImageHelper.access$400(r2, r0, r6, r1)     // Catch: java.lang.Exception -> L7b
                    if (r2 != 0) goto L6f
                    com.narvii.media.SaveImageHelper r3 = com.narvii.media.SaveImageHelper.this     // Catch: java.lang.Exception -> L6d
                    java.io.File r0 = com.narvii.media.SaveImageHelper.access$500(r3, r0)     // Catch: java.lang.Exception -> L6d
                    java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L7c
                    r2.<init>(r1)     // Catch: java.lang.Exception -> L7c
                    java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L7c
                    r1.<init>(r0)     // Catch: java.lang.Exception -> L7c
                    r3 = 4096(0x1000, float:5.74E-42)
                    byte[] r3 = new byte[r3]     // Catch: java.lang.Exception -> L7c
                L5a:
                    int r7 = r2.read(r3)     // Catch: java.lang.Exception -> L7c
                    r8 = -1
                    if (r7 == r8) goto L66
                    r8 = 0
                    r1.write(r3, r8, r7)     // Catch: java.lang.Exception -> L7c
                    goto L5a
                L66:
                    r1.close()     // Catch: java.lang.Exception -> L7c
                    r2.close()     // Catch: java.lang.Exception -> L7c
                    goto L70
                L6d:
                    r0 = r2
                    goto L7c
                L6f:
                    r0 = r2
                L70:
                    com.narvii.media.SaveImageHelper r1 = com.narvii.media.SaveImageHelper.this     // Catch: java.lang.Exception -> L7c
                    java.lang.String r2 = r2     // Catch: java.lang.Exception -> L7c
                    java.lang.String r3 = "image/gif"
                    android.net.Uri r1 = com.narvii.media.SaveImageHelper.access$600(r1, r0, r2, r3)     // Catch: java.lang.Exception -> L7c
                    goto L80
                L7b:
                    r0 = r6
                L7c:
                    r1 = r6
                    goto L80
                L7e:
                    r0 = r6
                    r1 = r0
                L80:
                    if (r1 != 0) goto L9a
                    com.narvii.media.SaveImageHelper r2 = com.narvii.media.SaveImageHelper.this
                    boolean r2 = com.narvii.media.SaveImageHelper.access$700(r2)
                    if (r2 == 0) goto L9a
                    com.narvii.media.SaveImageHelper r0 = com.narvii.media.SaveImageHelper.this
                    com.narvii.media.SaveImageFragment$SaveImageCallBack r1 = r0.saveImageCallBack
                    if (r1 == 0) goto L94
                    r1.onSaveFail(r6)
                    goto Lcb
                L94:
                    java.lang.String r1 = r2
                    r0.onFail(r1, r6)
                    goto Lcb
                L9a:
                    com.narvii.media.SaveImageHelper r2 = com.narvii.media.SaveImageHelper.this
                    com.narvii.media.SaveImageFragment$SaveImageCallBack r2 = r2.saveImageCallBack
                    if (r2 == 0) goto La4
                    r2.onSaveSuccess(r0)
                    goto Lcb
                La4:
                    if (r1 != 0) goto Lbe
                    if (r0 == 0) goto Lbe
                    long r2 = r0.length()
                    int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                    if (r6 <= 0) goto Lbe
                    com.narvii.media.SaveImageHelper r1 = com.narvii.media.SaveImageHelper.this
                    com.narvii.app.NVContext r1 = com.narvii.media.SaveImageHelper.access$800(r1)
                    android.content.Context r1 = r1.getContext()
                    android.net.Uri r1 = com.narvii.util.Utils.getUriFromFile(r1, r0)
                Lbe:
                    com.narvii.media.SaveImageHelper r0 = com.narvii.media.SaveImageHelper.this
                    java.lang.String r2 = r2
                    r0.onSuccess(r2, r1)
                    goto Lcb
                Lc6:
                    r0 = 400(0x190, double:1.976E-321)
                    com.narvii.util.Utils.postDelayed(r9, r0)
                Lcb:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.narvii.media.SaveImageHelper.AnonymousClass4.run():void");
            }
        }, 200L);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0076 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void savePhotoImage(java.lang.String r10) throws java.io.IOException {
        /*
            r9 = this;
            com.narvii.app.NVContext r0 = r9.context
            java.lang.String r1 = "photo"
            java.lang.Object r0 = r0.getService(r1)
            com.narvii.photos.PhotoManager r0 = (com.narvii.photos.PhotoManager) r0
            java.io.File r0 = r0.getPath(r10)
            android.graphics.BitmapFactory$Options r1 = new android.graphics.BitmapFactory$Options
            r1.<init>()
            r2 = 1
            r3 = 0
            r1.inJustDecodeBounds = r2     // Catch: java.lang.Exception -> L61
            java.lang.String r2 = r0.getAbsolutePath()     // Catch: java.lang.Exception -> L61
            android.graphics.BitmapFactory.decodeFile(r2, r1)     // Catch: java.lang.Exception -> L61
            java.lang.String r2 = r1.outMimeType     // Catch: java.lang.Exception -> L61
            if (r2 != 0) goto L23
            return
        L23:
            java.lang.String r2 = r1.outMimeType     // Catch: java.lang.Exception -> L61
            java.lang.String r2 = r9.getExt(r2)     // Catch: java.lang.Exception -> L61
            java.io.File r4 = r9.getExistsFile(r2, r3, r0)     // Catch: java.lang.Exception -> L61
            if (r4 != 0) goto L57
            java.io.File r2 = r9.getNewFile(r2)     // Catch: java.lang.Exception -> L54
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L5f
            r4.<init>(r0)     // Catch: java.lang.Exception -> L5f
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L5f
            r0.<init>(r2)     // Catch: java.lang.Exception -> L5f
            r5 = 4096(0x1000, float:5.74E-42)
            byte[] r5 = new byte[r5]     // Catch: java.lang.Exception -> L5f
        L41:
            int r6 = r4.read(r5)     // Catch: java.lang.Exception -> L5f
            r7 = -1
            if (r6 == r7) goto L4d
            r7 = 0
            r0.write(r5, r7, r6)     // Catch: java.lang.Exception -> L5f
            goto L41
        L4d:
            r0.close()     // Catch: java.lang.Exception -> L5f
            r4.close()     // Catch: java.lang.Exception -> L5f
            goto L58
        L54:
            r0 = move-exception
            r2 = r4
            goto L63
        L57:
            r2 = r4
        L58:
            java.lang.String r0 = r1.outMimeType     // Catch: java.lang.Exception -> L5f
            android.net.Uri r0 = r9.saveToGallery(r2, r10, r0)     // Catch: java.lang.Exception -> L5f
            goto L6a
        L5f:
            r0 = move-exception
            goto L63
        L61:
            r0 = move-exception
            r2 = r3
        L63:
            java.lang.String r0 = r0.getMessage()
            r8 = r3
            r3 = r0
            r0 = r8
        L6a:
            if (r0 != 0) goto L74
            boolean r1 = r9.usingSDCardStorage
            if (r1 == 0) goto L74
            r9.onFail(r10, r3)
            goto L8f
        L74:
            if (r0 != 0) goto L8c
            if (r2 == 0) goto L8c
            long r3 = r2.length()
            r5 = 0
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 <= 0) goto L8c
            com.narvii.app.NVContext r0 = r9.context
            android.content.Context r0 = r0.getContext()
            android.net.Uri r0 = com.narvii.util.Utils.getUriFromFile(r0, r2)
        L8c:
            r9.onSuccess(r10, r0)
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.media.SaveImageHelper.savePhotoImage(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Uri saveToGallery(File file, String str, String str2) {
        Uri uriInsert = null;
        try {
            ContentValues contentValues = new ContentValues(7);
            contentValues.put("title", "Amino_" + file.getName());
            contentValues.put("_display_name", "Amino");
            contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
            if (TextUtils.isEmpty(str2)) {
                str2 = "image/jpeg";
            }
            contentValues.put("mime_type", str2);
            contentValues.put("_data", file.getAbsolutePath());
            ContentResolver contentResolver = this.context.getContext().getContentResolver();
            Cursor cursorQuery = contentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, "_data=?", new String[]{file.getAbsolutePath()}, null);
            if (cursorQuery.moveToFirst()) {
                long j = cursorQuery.getLong(cursorQuery.getColumnIndex("_id"));
                Uri uriWithAppendedPath = Uri.withAppendedPath(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "" + j);
                contentResolver.update(uriWithAppendedPath, contentValues, null, null);
                uriInsert = uriWithAppendedPath;
            } else {
                uriInsert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            }
            cursorQuery.close();
        } catch (Exception e) {
            Log.w("unable to save image to content provider", e);
        }
        return uriInsert;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getExt(String str) {
        return (str == null || "image/jpeg".equalsIgnoreCase(str)) ? ".jpg" : "image/png".equalsIgnoreCase(str) ? ".png" : "image/pjpeg".equalsIgnoreCase(str) ? ".jpg" : "image/tiff".equalsIgnoreCase(str) ? ".tiff" : "image/gif".equalsIgnoreCase(str) ? ".gif" : ".jpg";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getExistsFile(String str, byte[] bArr, File file) {
        long length;
        boolean z;
        int i;
        File file2 = new File(Environment.getExternalStorageDirectory(), "Amino");
        if (!this.usingSDCardStorage) {
            file2 = new File(this.context.getContext().getExternalCacheDir(), "images");
        }
        String str2 = new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date());
        if (bArr != null) {
            length = bArr.length;
        } else {
            length = file != null ? file.length() : 0L;
        }
        File[] fileArrListFiles = file2.listFiles();
        ArrayList arrayList = new ArrayList();
        if (fileArrListFiles != null) {
            for (File file3 : fileArrListFiles) {
                if (file3.getName().startsWith(str2) && file3.length() == length) {
                    arrayList.add(file3);
                }
            }
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            File file4 = (File) arrayList.get(size);
            if (bArr != null) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(file4);
                    byte[] bArr2 = new byte[fileInputStream.available()];
                    fileInputStream.read(bArr2);
                    fileInputStream.close();
                    if (Arrays.equals(bArr2, bArr)) {
                        return file4;
                    }
                } catch (Throwable th) {
                    OomHelper.test(th);
                }
            } else if (file != null) {
                try {
                    byte[] bArr3 = new byte[4096];
                    byte[] bArr4 = new byte[4096];
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    FileInputStream fileInputStream3 = new FileInputStream(file4);
                    do {
                        int i2 = fileInputStream2.read(bArr3);
                        if (i2 == -1 || (i = fileInputStream3.read(bArr4)) == -1) {
                            z = false;
                            break;
                        }
                        if (i2 != i) {
                            break;
                        }
                    } while (Arrays.equals(bArr3, bArr4));
                    z = true;
                    fileInputStream2.close();
                    fileInputStream3.close();
                    if (!z) {
                        return file4;
                    }
                } catch (Throwable th2) {
                    OomHelper.test(th2);
                }
            } else {
                continue;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getNewFile(String str) {
        String str2;
        File file = new File(Environment.getExternalStorageDirectory(), "Amino");
        if (!this.usingSDCardStorage) {
            file = new File(this.context.getContext().getExternalCacheDir(), "images");
        }
        file.mkdirs();
        String str3 = new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date());
        HashSet hashSet = new HashSet();
        File[] fileArrListFiles = file.listFiles();
        int i = 0;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                int iLastIndexOf = name.lastIndexOf(46);
                if (iLastIndexOf > 0) {
                    name = name.substring(0, iLastIndexOf);
                }
                hashSet.add(name);
            }
        }
        String str4 = null;
        while (true) {
            if (i >= 1000) {
                break;
            }
            if (i < 10) {
                str2 = "00" + i;
            } else if (i < 100) {
                str2 = "0" + i;
            } else {
                str2 = "" + i;
            }
            String str5 = str3 + "-" + str2;
            if (!hashSet.contains(str5)) {
                str4 = str5;
                break;
            }
            i++;
        }
        if (str4 == null) {
            str4 = str3 + "-999";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str4);
        if (str == null) {
            str = ".jpg";
        }
        sb.append(str);
        return new File(file, sb.toString());
    }
}
