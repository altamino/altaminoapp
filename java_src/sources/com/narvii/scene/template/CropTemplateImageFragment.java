package com.narvii.scene.template;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.app.NVFragment;
import com.narvii.crop.BitmapCropTask;
import com.narvii.crop.CropView;
import com.narvii.crop.GestureCropImageView;
import com.narvii.crop.OverlayView;
import com.narvii.mediaeditor.R;
import com.narvii.mediaeditor.databinding.FragmentCropTemplateImageBinding;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.theme.ThemeImage;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.image.NVImageLoader;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class CropTemplateImageFragment extends NVFragment {
    public static final int COVER_IMAGE_HEIGHT = 1280;
    public static final int COVER_IMAGE_WIDTH = 720;

    @NotNull
    public static final String TAG = "CropTemplateImageFragment";
    private CropView cropView;
    private NVImageLoader imageLoader;
    private PhotoManager photoManager;

    @Nullable
    private Bitmap rawBitmap;

    @Nullable
    private ThemeImage themeImage;
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(CropTemplateImageFragment.class, "binding", "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentCropTemplateImageBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private String imageUrl = "";

    @NotNull
    private String imageId = "";

    @NotNull
    private String outputUrl = "";

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, CropTemplateImageFragment$binding$2.INSTANCE);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: com.narvii.scene.template.CropTemplateImageFragment$loadSourceImage$1, reason: invalid class name */
    public static final class AnonymousClass1 implements ImageLoader.ImageListener {
        final /* synthetic */ String $url;

        AnonymousClass1(String str) {
            this.$url = str;
        }

        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(@Nullable VolleyError volleyError) {
            CropTemplateImageFragment.this.showError();
        }

        @Override // com.android.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(@Nullable ImageLoader.ImageContainer imageContainer, boolean z6) {
            Bitmap bitmap;
            if (imageContainer == null || (bitmap = imageContainer.getBitmap()) == null) {
                return;
            }
            final CropTemplateImageFragment cropTemplateImageFragment = CropTemplateImageFragment.this;
            final String str = this.$url;
            cropTemplateImageFragment.rawBitmap = bitmap;
            Utils.post(new Runnable() { // from class: com.narvii.scene.template.a
                @Override // java.lang.Runnable
                public final void run() {
                    CropTemplateImageFragment.AnonymousClass1.onResponse$lambda$4$lambda$3(cropTemplateImageFragment, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onResponse$lambda$4$lambda$3(final CropTemplateImageFragment this$0, String url) {
            t.j(this$0, "this$0");
            t.j(url, "$url");
            if (this$0.getActivity() != null) {
                CropView cropView = this$0.cropView;
                CropView cropView2 = null;
                if (cropView == null) {
                    t.B("cropView");
                    cropView = null;
                }
                cropView.getImageView().setImageDrawable(new BitmapDrawable(this$0.getResources(), this$0.rawBitmap));
                CropView cropView3 = this$0.cropView;
                if (cropView3 == null) {
                    t.B("cropView");
                    cropView3 = null;
                }
                cropView3.invalidate();
                CropView cropView4 = this$0.cropView;
                if (cropView4 == null) {
                    t.B("cropView");
                } else {
                    cropView2 = cropView4;
                }
                cropView2.getImageView().imageUrl = url;
                final ThemeImage themeImage = this$0.themeImage;
                if (themeImage != null) {
                    Utils.post(new Runnable() { // from class: com.narvii.scene.template.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            CropTemplateImageFragment.AnonymousClass1.onResponse$lambda$4$lambda$3$lambda$2$lambda$1(this$0, themeImage);
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onResponse$lambda$4$lambda$3$lambda$2$lambda$1(CropTemplateImageFragment this$0, ThemeImage themeImage) {
            t.j(this$0, "this$0");
            t.j(themeImage, "$themeImage");
            CropView cropView = this$0.cropView;
            if (cropView == null) {
                t.B("cropView");
                cropView = null;
            }
            GestureCropImageView imageView = cropView.getImageView();
            Matrix matrix = new Matrix();
            matrix.setValues(themeImage.imageMatrix);
            imageView.setCurrentMatrix(matrix);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showError() {
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    private final void crop() {
        String absolutePath;
        Bitmap bitmap = this.rawBitmap;
        if (bitmap == null || bitmap.isRecycled()) {
            showError();
            return;
        }
        final ThemeImage cropResult = getBinding().cropView.getImageView().getCropResult(this);
        if (cropResult != null) {
            float f = cropResult.f2753x;
            float f6 = cropResult.f2754y;
            RectF rectF = new RectF(f, f6, cropResult.width + f, cropResult.height + f6);
            Bitmap bitmap2 = this.rawBitmap;
            t.g(bitmap2);
            float width = bitmap2.getWidth();
            Bitmap bitmap3 = this.rawBitmap;
            t.g(bitmap3);
            RectF rectF2 = new RectF(0.0f, 0.0f, width, bitmap3.getHeight());
            NVImageLoader nVImageLoader = this.imageLoader;
            PhotoManager photoManager = null;
            if (nVImageLoader == null) {
                t.B("imageLoader");
                nVImageLoader = null;
            }
            if (nVImageLoader.isLocal(cropResult.path)) {
                PhotoManager photoManager2 = this.photoManager;
                if (photoManager2 == null) {
                    t.B("photoManager");
                    photoManager2 = null;
                }
                absolutePath = photoManager2.getPath(cropResult.path).getAbsolutePath();
            } else {
                absolutePath = "";
            }
            String str = absolutePath;
            PhotoManager photoManager3 = this.photoManager;
            if (photoManager3 == null) {
                t.B("photoManager");
            } else {
                photoManager = photoManager3;
            }
            new BitmapCropTask(requireContext(), this.rawBitmap, null, rectF, rectF2, 1.0f, 720, 1280, str, photoManager.getPath(this.outputUrl).getAbsolutePath(), new BitmapCropTask.BitmapCropCallback() { // from class: com.narvii.scene.template.CropTemplateImageFragment$crop$1$1
                @Override // com.narvii.crop.BitmapCropTask.BitmapCropCallback
                public void onBitmapCropped(@NotNull Uri resultUri, int i10, int i11, int i12, int i13) {
                    t.j(resultUri, "resultUri");
                    Media media = new Media();
                    media.type = 100;
                    media.url = this.this$0.outputUrl;
                    media.width = i12;
                    media.height = i13;
                    Intent intent = new Intent();
                    intent.putExtra("previewMedia", JacksonUtils.writeAsString(media));
                    intent.putExtra("themeImage", JacksonUtils.writeAsString(cropResult));
                    intent.putExtra("imageId", this.this$0.imageId);
                    this.this$0.setResult(-1, intent);
                    this.this$0.finish();
                }

                @Override // com.narvii.crop.BitmapCropTask.BitmapCropCallback
                public void onCropFailure(@NotNull Throwable t5) {
                    t.j(t5, "t");
                    this.this$0.showError();
                }
            }).execute(new Void[0]);
        }
    }

    private final FragmentCropTemplateImageBinding getBinding() {
        return (FragmentCropTemplateImageBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final void initCropView() {
        CropView cropView = this.cropView;
        CropView cropView2 = null;
        if (cropView == null) {
            t.B("cropView");
            cropView = null;
        }
        cropView.setAspectRatio(0.5625f);
        CropView cropView3 = this.cropView;
        if (cropView3 == null) {
            t.B("cropView");
            cropView3 = null;
        }
        Resources resources = getResources();
        int i10 = R.dimen.cover_image_left_padding;
        int dimensionPixelSize = resources.getDimensionPixelSize(i10);
        Resources resources2 = getResources();
        int i11 = R.dimen.cover_image_top_padding;
        cropView3.setCustomPadding(dimensionPixelSize, resources2.getDimensionPixelSize(i11), getResources().getDimensionPixelSize(i10), getResources().getDimensionPixelSize(i11));
        CropView cropView4 = this.cropView;
        if (cropView4 == null) {
            t.B("cropView");
        } else {
            cropView2 = cropView4;
        }
        OverlayView overlayView = cropView2.getOverlayView();
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
    }

    private final void loadSourceImage(String str) {
        NVImageLoader nVImageLoader = this.imageLoader;
        if (nVImageLoader == null) {
            t.B("imageLoader");
            nVImageLoader = null;
        }
        nVImageLoader.get(str, new AnonymousClass1(str));
    }

    @Override // com.narvii.app.NVFragment
    @NotNull
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(ViewCompat.MEASURED_STATE_MASK);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@NotNull Menu menu, @NotNull MenuInflater inflater) {
        t.j(menu, "menu");
        t.j(inflater, "inflater");
        int i10 = R.string.submit;
        menu.add(0, i10, 0, i10).setIcon(new ActionBarIcon(getContext(), getString(R.string.fa_check), 0.85f, ContextCompat.getColor(getContext(), R.color.white), 255, false)).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, inflater);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        t.j(item, "item");
        if (item.getItemId() == R.string.submit) {
            crop();
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("imageUrl", this.imageUrl);
        outState.putString("imageId", this.imageId);
        outState.putString("themeImage", JacksonUtils.writeAsString(this.themeImage));
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        setTitle("");
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            String stringParam = getStringParam("imageUrl");
            t.i(stringParam, "getStringParam(...)");
            this.imageUrl = stringParam;
            String stringParam2 = getStringParam("imageId");
            t.i(stringParam2, "getStringParam(...)");
            this.imageId = stringParam2;
            String stringParam3 = getStringParam("outputUrl");
            t.i(stringParam3, "getStringParam(...)");
            this.outputUrl = stringParam3;
            this.themeImage = (ThemeImage) JacksonUtils.readAs(getStringParam("themeImage"), ThemeImage.class);
        } else {
            String string = bundle.getString("imageUrl");
            String str = "";
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
            if (string3 != null) {
                str = string3;
            }
            this.outputUrl = str;
            this.themeImage = (ThemeImage) JacksonUtils.readAs(bundle.getString("themeImage"), ThemeImage.class);
        }
        Log.d(TAG, "crop image ->  onCreate >>> id=" + this.imageId + "   url=" + this.imageUrl + "    themeImage=" + this.themeImage);
        Object service = getService("photo");
        t.i(service, "getService(...)");
        this.photoManager = (PhotoManager) service;
        Object service2 = getService("imageLoader");
        t.i(service2, "getService(...)");
        this.imageLoader = (NVImageLoader) service2;
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.crop_view);
        t.i(viewFindViewById, "findViewById(...)");
        this.cropView = (CropView) viewFindViewById;
        initCropView();
        loadSourceImage(this.imageUrl);
    }
}
