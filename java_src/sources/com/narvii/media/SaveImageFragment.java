package com.narvii.media;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.media3.common.MimeTypes;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionUtils;
import com.narvii.permisson.PermissionUtilsV2;
import com.narvii.permisson.RationaleDialogConfigExt;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.drawables.DrawableLoaderListener;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;
import qa.y;

/* JADX INFO: loaded from: classes5.dex */
public class SaveImageFragment extends NVFragment {
    File outFile;
    boolean pendingReplaceUrl;
    String pendingUrl;
    private Dialog progressDialog;
    private Request<?> running;
    private String runningGif;
    SaveImageCallBack saveImageCallBack;
    SaveImageHelper saveImageHelper;
    private final ActivityResultLauncher<String> writeExternalStorageLauncher = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ActivityResultCallback() { // from class: com.narvii.media.e
        @Override // androidx.activity.result.ActivityResultCallback
        public final void a(Object obj) {
            this.f2451a.lambda$new$1((Boolean) obj);
        }
    });
    private final DrawableLoaderListener gifListener = new DrawableLoaderListener() { // from class: com.narvii.media.SaveImageFragment.3
        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFailed(String str) {
        }

        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFinished(String str, Drawable drawable, boolean z6) {
        }
    };

    public interface SaveImageCallBack {
        void onSaveFail(File file);

        void onSaveSuccess(File file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Response<Object> handleError(String str) {
        return Response.error(new VolleyError(str));
    }

    private boolean isNullUrl(String str) {
        return str == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public File writteFile(byte[] bArr, BitmapFactory.Options options) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                File newFile = SaveImageHelper.getNewFile(getContext(), getExt(options.outMimeType));
                FileOutputStream fileOutputStream2 = new FileOutputStream(newFile);
                try {
                    fileOutputStream2.write(bArr);
                    fileOutputStream2.close();
                    fileOutputStream2.close();
                    return newFile;
                } catch (Exception e) {
                    e = e;
                    throw new IOException(e);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i10) {
    }

    public void save(Media media) {
        save(media.url);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: addRequestToQueue, reason: merged with bridge method [inline-methods] */
    public void lambda$tryRequestAgainAsync$3(Request<Object> request) {
        this.running = ((NVImageLoader) getService("imageLoader")).getRequestQueue().add(request);
    }

    private Response.ErrorListener buildErrorListener(final String str) {
        return new Response.ErrorListener() { // from class: com.narvii.media.g
            @Override // com.android.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError) {
                this.f2454a.lambda$buildErrorListener$2(str, volleyError);
            }
        };
    }

    private String getExt(String str) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public BitmapFactory.Options getOptions(byte[] bArr) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        if (options.outMimeType == null) {
            return null;
        }
        return options;
    }

    private static String getTargetUrl(String str, boolean z6, Uri uri) {
        return (z6 && new PackageUtils(null).isPermalinkHost(uri.getHost())) ? NVImageView.replaceUrl(str, "hq") : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Response<Object> handleError(String str, Exception exc) {
        logWarning("fail to decode downloaded image from " + str);
        return Response.error(new VolleyError(exc));
    }

    private void hideProgressDialogIfNeeded() {
        if (this.progressDialog.isShowing()) {
            this.progressDialog.cancel();
        }
    }

    private void invokeSaveImageCallBackSafely(File file) {
        SaveImageCallBack saveImageCallBack = this.saveImageCallBack;
        if (saveImageCallBack != null) {
            saveImageCallBack.onSaveSuccess(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildErrorListener$2(String str, VolleyError volleyError) {
        this.progressDialog.dismiss();
        this.running = null;
        onFail(str, volleyError.getMessage());
        SaveImageCallBack saveImageCallBack = this.saveImageCallBack;
        if (saveImageCallBack != null) {
            saveImageCallBack.onSaveFail(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(DialogInterface dialogInterface) {
        Request<?> request = this.running;
        if (request != null) {
            request.cancel();
        }
        this.running = null;
        this.runningGif = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFailure(String str, File file) {
        SaveImageCallBack saveImageCallBack = this.saveImageCallBack;
        if (saveImageCallBack != null) {
            saveImageCallBack.onSaveFail(file);
        } else {
            onFail(str, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySuccess(String str, Uri uri, Object obj) {
        SaveImageCallBack saveImageCallBack = this.saveImageCallBack;
        if (saveImageCallBack != null) {
            saveImageCallBack.onSaveSuccess((File) obj);
        } else {
            onSuccess(str, uri);
        }
    }

    private void saveGifImage(final String str) {
        this.progressDialog.show();
        final GifLoader gifLoader = (GifLoader) getService("gifLoader");
        gifLoader.request(str, this.gifListener);
        this.runningGif = str;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.media.SaveImageFragment.2
            @Override // java.lang.Runnable
            public void run() {
                Uri uriSaveToGallery;
                if (Utils.isEquals(SaveImageFragment.this.runningGif, str)) {
                    int loadingState = gifLoader.getLoadingState(str);
                    if (loadingState == 1 || loadingState == 2 || loadingState == 3) {
                        Utils.postDelayed(this, 400L);
                        return;
                    }
                    SaveImageFragment.this.progressDialog.dismiss();
                    File file = gifLoader.getFile(str);
                    if (SaveImageHelper.isNotEmpty(file)) {
                        try {
                            File newFile = SaveImageHelper.getNewFile(SaveImageFragment.this.getContext(), ".gif");
                            FileInputStream fileInputStream = new FileInputStream(file);
                            FileOutputStream fileOutputStream = new FileOutputStream(newFile);
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int i10 = fileInputStream.read(bArr);
                                if (i10 == -1) {
                                    break;
                                } else {
                                    fileOutputStream.write(bArr, 0, i10);
                                }
                            }
                            fileOutputStream.close();
                            fileInputStream.close();
                            uriSaveToGallery = SaveImageFragment.this.saveImageHelper.saveToGallery(newFile, str, "image/gif");
                        } catch (Exception e) {
                            Log.w("fail to save gif image to gallery", e);
                            uriSaveToGallery = null;
                        }
                    } else {
                        uriSaveToGallery = null;
                    }
                    if (uriSaveToGallery == null) {
                        SaveImageFragment.this.notifyFailure(str, file);
                    } else {
                        SaveImageFragment.this.notifySuccess(str, uriSaveToGallery, file);
                    }
                }
            }
        }, 200L);
    }

    private void saveHttpImage(final String str, String str2) {
        this.progressDialog.show();
        lambda$tryRequestAgainAsync$3(new Request<Object>(0, str2, buildErrorListener(str)) { // from class: com.narvii.media.SaveImageFragment.1
            Uri uri;

            @Override // com.android.volley.Request
            protected void deliverResponse(Object obj) {
                if (!(obj instanceof File)) {
                    SaveImageFragment.this.running = null;
                    SaveImageFragment.this.tryRequestAgainAsync(this);
                } else {
                    SaveImageFragment.this.progressDialog.dismiss();
                    SaveImageFragment.this.running = null;
                    SaveImageFragment.this.notifySuccess(str, this.uri, obj);
                }
            }

            @Override // com.android.volley.Request
            protected Response<Object> parseNetworkResponse(NetworkResponse networkResponse) throws Throwable {
                try {
                    int i10 = networkResponse.statusCode;
                    if (i10 / 100 != 2 && i10 != 304) {
                        return SaveImageFragment.this.handleError("fail to download image data: " + networkResponse.statusCode);
                    }
                    byte[] bArrAddWatermark = SaveImageFragment.this.addWatermark(networkResponse.data, str);
                    BitmapFactory.Options options = SaveImageFragment.this.getOptions(bArrAddWatermark);
                    if (options == null || options.outMimeType == null) {
                        return SaveImageFragment.this.handleError("malformed image data");
                    }
                    Uri uriSaveToGallery = SaveImageFragment.this.saveImageHelper.saveToGallery(SaveImageFragment.this.writteFile(bArrAddWatermark, options), str, options.outMimeType);
                    this.uri = uriSaveToGallery;
                    if (uriSaveToGallery == null) {
                        return SaveImageFragment.this.handleError("fail to save image to gallery");
                    }
                    String path = this.uri.getPath();
                    Objects.requireNonNull(path);
                    return Response.success(new File(path), null);
                } catch (Exception e) {
                    return SaveImageFragment.this.handleError(str, e);
                }
            }
        });
    }

    private void saveImage() {
        String str = this.pendingUrl;
        boolean z6 = this.pendingReplaceUrl;
        hideProgressDialogIfNeeded();
        if (isNullUrl(str)) {
            invokeSaveImageCallBackSafely(null);
            Log.w("fail to save image, unknown url scheme: null url");
            return;
        }
        if (startsWithHttpOrHttps(str)) {
            String targetUrl = getTargetUrl(str, z6, Uri.parse(str));
            if (Utils.isGif(str)) {
                saveGifImage(str);
                return;
            } else {
                saveHttpImage(str, targetUrl);
                return;
            }
        }
        if (str.startsWith("photo://")) {
            savePhotoImage(str);
            return;
        }
        invokeSaveImageCallBackSafely(null);
        Log.w("fail to save image, unknown url scheme: " + str);
    }

    private void savePhotoImage(String str) {
        String message;
        File path = ((PhotoManager) getService("photo")).getPath(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        Uri uriSaveToGallery = null;
        try {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(path.getAbsolutePath(), options);
            String str2 = options.outMimeType;
            if (str2 == null) {
                return;
            }
            uriSaveToGallery = this.saveImageHelper.saveToGallery(path, str, str2);
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

    private boolean startsWithHttpOrHttps(String str) {
        return str.startsWith(y.HTTP) || str.startsWith(y.HTTPS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryRequestAgainAsync(final Request<Object> request) {
        Utils.post(new Runnable() { // from class: com.narvii.media.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f2452a.lambda$tryRequestAgainAsync$3(request);
            }
        });
    }

    protected byte[] addWatermark(byte[] bArr, String str) {
        return this.saveImageHelper.addWatermark(bArr, str);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        if (this.progressDialog.isShowing()) {
            this.progressDialog.cancel();
        }
        super.onDestroy();
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

    public void save(String str) {
        save(str, true);
    }

    private boolean hasPermission(String str) {
        if (ContextCompat.checkSelfPermission(getContext(), str) == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Boolean bool) {
        if (bool.booleanValue()) {
            saveImage();
        } else {
            PermissionUtils.showPermissionDeniedDialog(getContext());
        }
    }

    private void logWarning(String str) {
        Log.w(str);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.saveImageHelper = new SaveImageHelper(this);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.progressDialog = progressDialog;
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.media.d
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f2450a.lambda$onCreate$0(dialogInterface);
            }
        });
    }

    public void onSuccess(String str, Uri uri) {
        NVToast.makeText(getContext(), R.string.media_save_success, 0).show();
    }

    public void requestStoragePermission() {
        NVPermission.builder(this).permission("android.permission.WRITE_EXTERNAL_STORAGE").requestCode(108).permissionListener(this).request();
    }

    public void save(String str, boolean z6) {
        this.pendingUrl = str;
        this.pendingReplaceUrl = z6;
        if (getActivity() == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            saveImage();
            return;
        }
        if (hasPermission("android.permission.WRITE_EXTERNAL_STORAGE")) {
            saveImage();
        } else if (shouldShowRequestPermissionRationale("android.permission.WRITE_EXTERNAL_STORAGE")) {
            PermissionUtilsV2.INSTANCE.shoRationaleDialog(getContext(), RationaleDialogConfigExt.defaultConfig("android.permission.WRITE_EXTERNAL_STORAGE", RationaleDialogConfigExt.openSettings(getContext()), RationaleDialogConfigExt.emptyAction()));
        } else {
            this.writeExternalStorageLauncher.a("android.permission.WRITE_EXTERNAL_STORAGE");
        }
    }
}
