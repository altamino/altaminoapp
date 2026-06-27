package com.narvii.media;

import android.app.Dialog;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.permisson.NVPermission;
import com.narvii.photos.PhotoManager;
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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes3.dex */
public class SaveImageFragment extends NVFragment {
    private final DrawableLoaderListener gifListener = new DrawableLoaderListener() { // from class: com.narvii.media.SaveImageFragment.5
        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFailed(String str) {
        }

        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFinished(String str, Drawable drawable, boolean z) {
        }
    };
    File outFile;
    boolean pendingReplaceUrl;
    String pendingUrl;
    private Dialog progressDialog;
    private Request<?> running;
    private String runningGif;
    SaveImageCallBack saveImageCallBack;
    SaveImageHelper saveImageHelper;

    public interface SaveImageCallBack {
        void onSaveFail(File file);

        void onSaveSuccess(File file);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) throws IOException {
        String str = this.pendingUrl;
        boolean z = this.pendingReplaceUrl;
        if (this.progressDialog.isShowing()) {
            this.progressDialog.cancel();
        }
        if (str == null) {
            SaveImageCallBack saveImageCallBack = this.saveImageCallBack;
            if (saveImageCallBack != null) {
                saveImageCallBack.onSaveFail(null);
            }
            Log.w("fail to save image, unknown url scheme: " + str);
            return;
        }
        if (str.startsWith("http://") || str.startsWith("https://")) {
            String strReplaceUrl = (z && new PackageUtils(null).isPermalinkHost(Uri.parse(str).getHost())) ? NVImageView.replaceUrl(str, "hq") : str;
            if (Utils.isGif(str)) {
                saveGifImage(str);
                return;
            } else {
                saveHttpImage(str, strReplaceUrl);
                return;
            }
        }
        if (str.startsWith("photo://")) {
            savePhotoImage(str);
            return;
        }
        SaveImageCallBack saveImageCallBack2 = this.saveImageCallBack;
        if (saveImageCallBack2 != null) {
            saveImageCallBack2.onSaveFail(null);
        }
        Log.w("fail to save image, unknown url scheme: " + str);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.saveImageHelper = new SaveImageHelper(this);
        this.progressDialog = new ProgressDialog(getContext());
        this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.media.SaveImageFragment.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (SaveImageFragment.this.running != null) {
                    SaveImageFragment.this.running.cancel();
                }
                SaveImageFragment.this.running = null;
                SaveImageFragment.this.runningGif = null;
            }
        });
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        if (this.progressDialog.isShowing()) {
            this.progressDialog.cancel();
        }
        super.onDestroy();
    }

    public void setSaveImageCallBack(SaveImageCallBack saveImageCallBack) {
        this.saveImageCallBack = saveImageCallBack;
    }

    public void onSuccess(String str, Uri uri) {
        NVToast.makeText(getContext(), R.string.media_save_success, 0).show();
    }

    public void onFail(String str, String str2) {
        if (this.saveImageCallBack == null) {
            String string = getString(R.string.media_save_fail);
            if (!TextUtils.isEmpty(str2)) {
                string = string + "\n" + str2;
            }
            NVToast.makeText(getContext(), string, 0).show();
        }
    }

    public void save(Media media) {
        save(media.url);
    }

    public void save(String str) {
        save(str, true);
    }

    public void save(String str, boolean z) {
        this.pendingUrl = str;
        this.pendingReplaceUrl = z;
        NVPermission.builder(this).permission("android.permission.WRITE_EXTERNAL_STORAGE").requestCode(108).permissionListener(this).request();
    }

    protected byte[] addWatermark(byte[] bArr, String str) {
        return this.saveImageHelper.addWatermark(bArr, str);
    }

    private void saveHttpImage(final String str, final String str2) {
        this.progressDialog.show();
        this.running = ((NVImageLoader) getService("imageLoader")).getRequestQueue().add(new Request<Object>(0, str2, new Response.ErrorListener() { // from class: com.narvii.media.SaveImageFragment.2
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                SaveImageFragment.this.progressDialog.dismiss();
                SaveImageFragment.this.running = null;
                SaveImageFragment.this.onFail(str, volleyError.getMessage());
                SaveImageCallBack saveImageCallBack = SaveImageFragment.this.saveImageCallBack;
                if (saveImageCallBack != null) {
                    saveImageCallBack.onSaveFail(null);
                }
            }
        }) { // from class: com.narvii.media.SaveImageFragment.3
            Uri uri;

            @Override // com.android.volley.Request
            protected Response<Object> parseNetworkResponse(NetworkResponse networkResponse) throws IOException {
                try {
                    if (networkResponse.statusCode / 100 == 2) {
                        byte[] bArrAddWatermark = SaveImageFragment.this.addWatermark(networkResponse.data, str);
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeByteArray(bArrAddWatermark, 0, bArrAddWatermark.length, options);
                        if (options.outMimeType != null) {
                            String ext = SaveImageFragment.this.getExt(options.outMimeType);
                            File existsFile = SaveImageFragment.this.getExistsFile(ext, bArrAddWatermark, null);
                            if (existsFile == null) {
                                existsFile = SaveImageFragment.getNewFile(ext);
                                FileOutputStream fileOutputStream = new FileOutputStream(existsFile);
                                fileOutputStream.write(bArrAddWatermark);
                                fileOutputStream.close();
                            }
                            Uri uriSaveToGallery = SaveImageFragment.this.saveToGallery(existsFile, str, options.outMimeType);
                            this.uri = uriSaveToGallery;
                            if (uriSaveToGallery == null) {
                                return Response.error(new VolleyError("fail to save image to gallery"));
                            }
                            return Response.success(existsFile, null);
                        }
                        return Response.error(new VolleyError("malformed image data"));
                    }
                    return Response.error(new VolleyError("fail to download image data: " + networkResponse.statusCode));
                } catch (Exception e) {
                    Log.w("fail to decode downloaded image data from " + str2);
                    return Response.error(new VolleyError(e));
                }
            }

            @Override // com.android.volley.Request
            protected void deliverResponse(Object obj) {
                if (obj instanceof File) {
                    SaveImageFragment.this.progressDialog.dismiss();
                    SaveImageFragment.this.running = null;
                    SaveImageFragment saveImageFragment = SaveImageFragment.this;
                    SaveImageCallBack saveImageCallBack = saveImageFragment.saveImageCallBack;
                    if (saveImageCallBack != null) {
                        saveImageCallBack.onSaveSuccess((File) obj);
                        return;
                    } else {
                        saveImageFragment.onSuccess(str, this.uri);
                        return;
                    }
                }
                SaveImageFragment.this.running = null;
                Utils.post(new Runnable() { // from class: com.narvii.media.SaveImageFragment.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        NVImageLoader nVImageLoader = (NVImageLoader) SaveImageFragment.this.getService("imageLoader");
                        SaveImageFragment.this.running = nVImageLoader.getRequestQueue().add(this);
                    }
                });
            }
        });
    }

    private void saveGifImage(final String str) {
        this.progressDialog.show();
        final GifLoader gifLoader = (GifLoader) getService("gifLoader");
        gifLoader.request(str, this.gifListener);
        this.runningGif = str;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.media.SaveImageFragment.4
            /* JADX WARN: Removed duplicated region for block: B:29:0x0080  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() throws java.io.IOException {
                /*
                    r8 = this;
                    java.lang.String r0 = ".gif"
                    com.narvii.media.SaveImageFragment r1 = com.narvii.media.SaveImageFragment.this
                    java.lang.String r1 = com.narvii.media.SaveImageFragment.access$100(r1)
                    java.lang.String r2 = r2
                    boolean r1 = com.narvii.util.Utils.isEquals(r1, r2)
                    if (r1 != 0) goto L11
                    return
                L11:
                    com.narvii.util.drawables.gif.GifLoader r1 = r3
                    java.lang.String r2 = r2
                    int r1 = r1.getLoadingState(r2)
                    r2 = 1
                    if (r1 == r2) goto La0
                    r2 = 2
                    if (r1 == r2) goto La0
                    r2 = 3
                    if (r1 == r2) goto La0
                    com.narvii.media.SaveImageFragment r1 = com.narvii.media.SaveImageFragment.this
                    android.app.Dialog r1 = com.narvii.media.SaveImageFragment.access$200(r1)
                    r1.dismiss()
                    com.narvii.util.drawables.gif.GifLoader r1 = r3
                    java.lang.String r2 = r2
                    java.io.File r1 = r1.getFile(r2)
                    long r2 = r1.length()
                    r4 = 0
                    r6 = 0
                    int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                    if (r7 <= 0) goto L7c
                    com.narvii.media.SaveImageFragment r2 = com.narvii.media.SaveImageFragment.this     // Catch: java.lang.Exception -> L79
                    java.io.File r2 = com.narvii.media.SaveImageFragment.access$400(r2, r0, r6, r1)     // Catch: java.lang.Exception -> L79
                    if (r2 != 0) goto L6d
                    java.io.File r0 = com.narvii.media.SaveImageFragment.getNewFile(r0)     // Catch: java.lang.Exception -> L6b
                    java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L7a
                    r2.<init>(r1)     // Catch: java.lang.Exception -> L7a
                    java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L7a
                    r1.<init>(r0)     // Catch: java.lang.Exception -> L7a
                    r3 = 4096(0x1000, float:5.74E-42)
                    byte[] r3 = new byte[r3]     // Catch: java.lang.Exception -> L7a
                L58:
                    int r4 = r2.read(r3)     // Catch: java.lang.Exception -> L7a
                    r5 = -1
                    if (r4 == r5) goto L64
                    r5 = 0
                    r1.write(r3, r5, r4)     // Catch: java.lang.Exception -> L7a
                    goto L58
                L64:
                    r1.close()     // Catch: java.lang.Exception -> L7a
                    r2.close()     // Catch: java.lang.Exception -> L7a
                    goto L6e
                L6b:
                    r0 = r2
                    goto L7a
                L6d:
                    r0 = r2
                L6e:
                    com.narvii.media.SaveImageFragment r1 = com.narvii.media.SaveImageFragment.this     // Catch: java.lang.Exception -> L7a
                    java.lang.String r2 = r2     // Catch: java.lang.Exception -> L7a
                    java.lang.String r3 = "image/gif"
                    android.net.Uri r1 = com.narvii.media.SaveImageFragment.access$500(r1, r0, r2, r3)     // Catch: java.lang.Exception -> L7a
                    goto L7e
                L79:
                    r0 = r6
                L7a:
                    r1 = r6
                    goto L7e
                L7c:
                    r0 = r6
                    r1 = r0
                L7e:
                    if (r1 != 0) goto L90
                    com.narvii.media.SaveImageFragment r0 = com.narvii.media.SaveImageFragment.this
                    com.narvii.media.SaveImageFragment$SaveImageCallBack r1 = r0.saveImageCallBack
                    if (r1 == 0) goto L8a
                    r1.onSaveFail(r6)
                    goto La5
                L8a:
                    java.lang.String r1 = r2
                    r0.onFail(r1, r6)
                    goto La5
                L90:
                    com.narvii.media.SaveImageFragment r2 = com.narvii.media.SaveImageFragment.this
                    com.narvii.media.SaveImageFragment$SaveImageCallBack r3 = r2.saveImageCallBack
                    if (r3 == 0) goto L9a
                    r3.onSaveSuccess(r0)
                    goto La5
                L9a:
                    java.lang.String r0 = r2
                    r2.onSuccess(r0, r1)
                    goto La5
                La0:
                    r0 = 400(0x190, double:1.976E-321)
                    com.narvii.util.Utils.postDelayed(r8, r0)
                La5:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.narvii.media.SaveImageFragment.AnonymousClass4.run():void");
            }
        }, 200L);
    }

    private void savePhotoImage(String str) throws IOException {
        Uri uriSaveToGallery;
        File path = ((PhotoManager) getService("photo")).getPath(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        String message = null;
        try {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(path.getAbsolutePath(), options);
        } catch (Exception e) {
            message = e.getMessage();
            uriSaveToGallery = null;
        }
        if (options.outMimeType == null) {
            return;
        }
        String ext = getExt(options.outMimeType);
        File existsFile = getExistsFile(ext, null, path);
        if (existsFile == null) {
            existsFile = getNewFile(ext);
            FileInputStream fileInputStream = new FileInputStream(path);
            FileOutputStream fileOutputStream = new FileOutputStream(existsFile);
            byte[] bArr = new byte[4096];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i == -1) {
                    break;
                } else {
                    fileOutputStream.write(bArr, 0, i);
                }
            }
            fileOutputStream.close();
            fileInputStream.close();
        }
        uriSaveToGallery = saveToGallery(existsFile, str, options.outMimeType);
        if (uriSaveToGallery == null) {
            onFail(str, message);
        } else {
            onSuccess(str, uriSaveToGallery);
        }
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
            ContentResolver contentResolver = getContext().getContentResolver();
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

    public static File getNewFile(String str) {
        String str2;
        File file = new File(Environment.getExternalStorageDirectory(), "Amino");
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
