package com.narvii.scene.template;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.app.NVFragment;
import com.narvii.crop.BitmapCropTask;
import com.narvii.crop.CropView;
import com.narvii.crop.GestureCropImageView;
import com.narvii.crop.OverlayView;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.scene.template.CropTemplateImageFragment;
import com.narvii.theme.ThemeImage;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.image.NVImageLoader;
import java.io.File;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CropTemplateImageFragment.kt */
/* loaded from: classes3.dex */
public final class CropTemplateImageFragment extends NVFragment {
    public static final int COVER_IMAGE_HEIGHT = 1280;
    public static final int COVER_IMAGE_WIDTH = 720;
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "CropTemplateImageFragment";
    private HashMap _$_findViewCache;
    private CropView cropView;
    private NVImageLoader imageLoader;
    private PhotoManager photoManager;
    private Bitmap rawBitmap;
    private ThemeImage themeImage;
    private String imageUrl = "";
    private String imageId = "";
    private String outputUrl = "";

    /* JADX INFO: Access modifiers changed from: private */
    public final void showError() {
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ CropView access$getCropView$p(CropTemplateImageFragment cropTemplateImageFragment) {
        CropView cropView = cropTemplateImageFragment.cropView;
        if (cropView != null) {
            return cropView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cropView");
        throw null;
    }

    /* compiled from: CropTemplateImageFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("imageUrl", this.imageUrl);
        outState.putString("imageId", this.imageId);
        outState.putString("themeImage", JacksonUtils.writeAsString(this.themeImage));
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            String stringParam = getStringParam("imageUrl");
            Intrinsics.checkExpressionValueIsNotNull(stringParam, "getStringParam(\"imageUrl\")");
            this.imageUrl = stringParam;
            String stringParam2 = getStringParam("imageId");
            Intrinsics.checkExpressionValueIsNotNull(stringParam2, "getStringParam(\"imageId\")");
            this.imageId = stringParam2;
            String stringParam3 = getStringParam("outputUrl");
            Intrinsics.checkExpressionValueIsNotNull(stringParam3, "getStringParam(\"outputUrl\")");
            this.outputUrl = stringParam3;
            this.themeImage = (ThemeImage) JacksonUtils.readAs(getStringParam("themeImage"), ThemeImage.class);
        } else {
            String string = bundle.getString("imageUrl");
            if (string == null) {
                string = "";
            }
            this.imageUrl = string;
            String string2 = bundle.getString("imageId");
            if (string2 == null) {
                string2 = "";
            }
            this.imageId = string2;
            String string3 = bundle.getString("outputUrl");
            if (string3 == null) {
                string3 = "";
            }
            this.outputUrl = string3;
            this.themeImage = (ThemeImage) JacksonUtils.readAs(bundle.getString("themeImage"), ThemeImage.class);
        }
        Log.d(TAG, "crop image ->  onCreate >>> id=" + this.imageId + "   url=" + this.imageUrl + "    themeImage=" + this.themeImage);
        Object service = getService("photo");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"photo\")");
        this.photoManager = (PhotoManager) service;
        Object service2 = getService("imageLoader");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"imageLoader\")");
        this.imageLoader = (NVImageLoader) service2;
        setHasOptionsMenu(true);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_crop_template_image, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        int i = R.string.submit;
        menu.add(0, i, 0, i).setIcon(new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 255, false)).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        if (item.getItemId() == R.string.submit) {
            crop();
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        setTitle("");
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(ViewCompat.MEASURED_STATE_MASK);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.crop_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.crop_view)");
        this.cropView = (CropView) viewFindViewById;
        initCropView();
        loadSourceImage(this.imageUrl);
    }

    private final void initCropView() {
        CropView cropView = this.cropView;
        if (cropView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropView");
            throw null;
        }
        cropView.setAspectRatio(0.5625f);
        CropView cropView2 = this.cropView;
        if (cropView2 != null) {
            cropView2.setCustomPadding(getResources().getDimensionPixelSize(R.dimen.cover_image_left_padding), getResources().getDimensionPixelSize(R.dimen.cover_image_top_padding), getResources().getDimensionPixelSize(R.dimen.cover_image_left_padding), getResources().getDimensionPixelSize(R.dimen.cover_image_top_padding));
            CropView cropView3 = this.cropView;
            if (cropView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropView");
                throw null;
            }
            OverlayView overlayView = cropView3.getOverlayView();
            overlayView.setRadius(0);
            overlayView.setDrawCropLines(true);
            overlayView.setCropGridStrokeWidth(2);
            overlayView.setCropGridRowCount(6);
            overlayView.setCropGridColumnCount(3);
            overlayView.setCropGridColor(1308622847);
            overlayView.setShowCropFrame(true);
            overlayView.setRoundedDimmedLayer(false);
            overlayView.setCropFrameStrokeWidth(2);
            overlayView.setCropFrameColor(-1);
            overlayView.setCropFramePathEffect(new DashPathEffect(new float[]{8.0f, 8.0f}, 8.0f));
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cropView");
        throw null;
    }

    /* compiled from: CropTemplateImageFragment.kt */
    /* renamed from: com.narvii.scene.template.CropTemplateImageFragment$loadSourceImage$1, reason: invalid class name */
    public static final class AnonymousClass1 implements ImageLoader.ImageListener {
        final /* synthetic */ String $url;

        AnonymousClass1(String str) {
            this.$url = str;
        }

        @Override // com.android.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            Bitmap bitmap;
            if (imageContainer == null || (bitmap = imageContainer.getBitmap()) == null) {
                return;
            }
            CropTemplateImageFragment.this.rawBitmap = bitmap;
            Utils.post(new Runnable() { // from class: com.narvii.scene.template.CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    if (CropTemplateImageFragment.this.getActivity() != null) {
                        CropTemplateImageFragment.access$getCropView$p(CropTemplateImageFragment.this).getImageView().setImageDrawable(new BitmapDrawable(CropTemplateImageFragment.this.getResources(), CropTemplateImageFragment.this.rawBitmap));
                        CropTemplateImageFragment.access$getCropView$p(CropTemplateImageFragment.this).invalidate();
                        GestureCropImageView imageView = CropTemplateImageFragment.access$getCropView$p(CropTemplateImageFragment.this).getImageView();
                        CropTemplateImageFragment.AnonymousClass1 anonymousClass1 = this.this$0;
                        imageView.imageUrl = anonymousClass1.$url;
                        final ThemeImage themeImage = CropTemplateImageFragment.this.themeImage;
                        if (themeImage != null) {
                            Utils.post(new Runnable() { // from class: com.narvii.scene.template.CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    GestureCropImageView imageView2 = CropTemplateImageFragment.access$getCropView$p(CropTemplateImageFragment.this).getImageView();
                                    Matrix matrix = new Matrix();
                                    matrix.setValues(themeImage.imageMatrix);
                                    imageView2.setCurrentMatrix(matrix);
                                }
                            });
                        }
                    }
                }
            });
        }

        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            CropTemplateImageFragment.this.showError();
        }
    }

    private final void loadSourceImage(String str) {
        NVImageLoader nVImageLoader = this.imageLoader;
        if (nVImageLoader != null) {
            nVImageLoader.get(str, new AnonymousClass1(str));
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("imageLoader");
            throw null;
        }
    }

    private final void crop() {
        String absolutePath;
        Bitmap bitmap = this.rawBitmap;
        if (bitmap == null || bitmap.isRecycled()) {
            showError();
            return;
        }
        CropView crop_view = (CropView) _$_findCachedViewById(R.id.crop_view);
        Intrinsics.checkExpressionValueIsNotNull(crop_view, "crop_view");
        final ThemeImage cropResult = crop_view.getImageView().getCropResult(this);
        if (cropResult != null) {
            float f = cropResult.x;
            float f2 = cropResult.y;
            RectF rectF = new RectF(f, f2, cropResult.width + f, cropResult.height + f2);
            Bitmap bitmap2 = this.rawBitmap;
            if (bitmap2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            float width = bitmap2.getWidth();
            if (this.rawBitmap != null) {
                RectF rectF2 = new RectF(0.0f, 0.0f, width, r3.getHeight());
                NVImageLoader nVImageLoader = this.imageLoader;
                if (nVImageLoader == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("imageLoader");
                    throw null;
                }
                if (nVImageLoader.isLocal(cropResult.path)) {
                    PhotoManager photoManager = this.photoManager;
                    if (photoManager == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("photoManager");
                        throw null;
                    }
                    File path = photoManager.getPath(cropResult.path);
                    Intrinsics.checkExpressionValueIsNotNull(path, "photoManager.getPath(path)");
                    absolutePath = path.getAbsolutePath();
                } else {
                    absolutePath = "";
                }
                String str = absolutePath;
                PhotoManager photoManager2 = this.photoManager;
                if (photoManager2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("photoManager");
                    throw null;
                }
                File path2 = photoManager2.getPath(this.outputUrl);
                Intrinsics.checkExpressionValueIsNotNull(path2, "photoManager.getPath(outputUrl)");
                String absolutePath2 = path2.getAbsolutePath();
                Context context = getContext();
                if (context == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                new BitmapCropTask(context, this.rawBitmap, null, rectF, rectF2, 1.0f, 720, 1280, str, absolutePath2, new BitmapCropTask.BitmapCropCallback() { // from class: com.narvii.scene.template.CropTemplateImageFragment$crop$$inlined$apply$lambda$1
                    @Override // com.narvii.crop.BitmapCropTask.BitmapCropCallback
                    public void onBitmapCropped(Uri resultUri, int i, int i2, int i3, int i4) {
                        Intrinsics.checkParameterIsNotNull(resultUri, "resultUri");
                        Media media = new Media();
                        media.type = 100;
                        media.url = this.outputUrl;
                        media.width = i3;
                        media.height = i4;
                        Intent intent = new Intent();
                        intent.putExtra("previewMedia", JacksonUtils.writeAsString(media));
                        intent.putExtra("themeImage", JacksonUtils.writeAsString(cropResult));
                        intent.putExtra("imageId", this.imageId);
                        this.setResult(-1, intent);
                        this.finish();
                    }

                    @Override // com.narvii.crop.BitmapCropTask.BitmapCropCallback
                    public void onCropFailure(Throwable t) {
                        Intrinsics.checkParameterIsNotNull(t, "t");
                        this.showError();
                    }
                }).execute(new Void[0]);
                return;
            }
            Intrinsics.throwNpe();
            throw null;
        }
    }
}
