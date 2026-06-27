package com.narvii.story;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.DashPathEffect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.crop.BitmapCropTask;
import com.narvii.crop.CropView;
import com.narvii.crop.OverlayView;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.theme.ThemeImage;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.image.NVImageLoader;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CropImageFragment.kt */
/* loaded from: classes3.dex */
public final class CropImageFragment extends NVFragment implements MediaPickerFragment.OnResultListener {
    private HashMap _$_findViewCache;
    private CropView cropView;
    private NVImageLoader imageLoader;
    private MediaPickerFragment mediaPickerFragment;
    private PhotoManager photoManager;
    private Bitmap rawBitmap;
    private String imageUrl = "";
    private String outputUrl = "";
    private String draftId = "";

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

    @Override // com.narvii.app.NVFragment
    protected int getActionBarLayoutId() {
        return R.layout.actionbar_layout_no_shadow;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StoryCoverImageCrop";
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ CropView access$getCropView$p(CropImageFragment cropImageFragment) {
        CropView cropView = cropImageFragment.cropView;
        if (cropView != null) {
            return cropView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cropView");
        throw null;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        MediaPickerFragment mediaPickerFragment;
        NVFragment nVFragment;
        super.onCreate(bundle);
        String stringParam = getStringParam("imageUrl");
        Intrinsics.checkExpressionValueIsNotNull(stringParam, "getStringParam(\"imageUrl\")");
        this.imageUrl = stringParam;
        String stringParam2 = getStringParam("outputUrl");
        Intrinsics.checkExpressionValueIsNotNull(stringParam2, "getStringParam(\"outputUrl\")");
        this.outputUrl = stringParam2;
        String stringParam3 = getStringParam("draftId");
        Intrinsics.checkExpressionValueIsNotNull(stringParam3, "getStringParam(\"draftId\")");
        this.draftId = stringParam3;
        Object service = getService("photo");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"photo\")");
        this.photoManager = (PhotoManager) service;
        Object service2 = getService("imageLoader");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"imageLoader\")");
        this.imageLoader = (NVImageLoader) service2;
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            String simpleName = MediaPickerFragment.class.getSimpleName();
            Intrinsics.checkExpressionValueIsNotNull(simpleName, "clz.simpleName");
            Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(simpleName);
            if (fragmentFindFragmentByTag == null || !(fragmentFindFragmentByTag instanceof MediaPickerFragment)) {
                Fragment fragment = (Fragment) MediaPickerFragment.class.newInstance();
                FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
                fragmentTransactionBeginTransaction.add(fragment, simpleName);
                fragmentTransactionBeginTransaction.commitAllowingStateLoss();
                nVFragment = (NVFragment) fragment;
            } else {
                nVFragment = (NVFragment) fragmentFindFragmentByTag;
            }
            mediaPickerFragment = (MediaPickerFragment) nVFragment;
        } else {
            mediaPickerFragment = null;
        }
        this.mediaPickerFragment = mediaPickerFragment;
        MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
        if (mediaPickerFragment2 != null) {
            mediaPickerFragment2.addOnResultListener(this);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_crop_image, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setTitle(R.string.crop);
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) activity;
            nVActivity.setActionBarLeftTextView(R.string.cancel);
            nVActivity.setActionBarRightView(R.string.done, new View.OnClickListener() { // from class: com.narvii.story.CropImageFragment$onViewCreated$$inlined$let$lambda$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.this$0.crop();
                }
            });
        }
        ((TextView) _$_findCachedViewById(com.narvii.amino.R.id.crop_hint_tv)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.CropImageFragment.onViewCreated.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CropImageFragment.this.toPickCoverImage();
            }
        });
        CropView crop_view = (CropView) _$_findCachedViewById(com.narvii.amino.R.id.crop_view);
        Intrinsics.checkExpressionValueIsNotNull(crop_view, "crop_view");
        this.cropView = crop_view;
        initCropView();
        loadSourceImage(this.imageUrl);
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        Media media;
        if (list == null || (media = (Media) CollectionsKt.first(list)) == null) {
            return;
        }
        String mediaUrl = media.getMediaUrl();
        Intrinsics.checkExpressionValueIsNotNull(mediaUrl, "it.mediaUrl");
        loadSourceImage(mediaUrl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toPickCoverImage() {
        Bundle bundle = new Bundle();
        bundle.putString("type", "photo");
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.pickMedia(null, bundle, 30, 1, 720, 720, 720, 720);
        }
    }

    private final void initCropView() {
        CropView cropView = this.cropView;
        if (cropView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropView");
            throw null;
        }
        cropView.getImageView().setMinCropWidth(360);
        CropView cropView2 = this.cropView;
        if (cropView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropView");
            throw null;
        }
        cropView2.getImageView().setMinCropHeight(640);
        CropView cropView3 = this.cropView;
        if (cropView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropView");
            throw null;
        }
        cropView3.setAspectRatio(0.5625f);
        CropView cropView4 = this.cropView;
        if (cropView4 != null) {
            cropView4.setCustomPadding(getResources().getDimensionPixelSize(R.dimen.cover_image_left_padding), getResources().getDimensionPixelSize(R.dimen.cover_image_top_padding), getResources().getDimensionPixelSize(R.dimen.cover_image_left_padding), getResources().getDimensionPixelSize(R.dimen.cover_image_top_padding));
            CropView cropView5 = this.cropView;
            if (cropView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropView");
                throw null;
            }
            OverlayView overlayView = cropView5.getOverlayView();
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

    /* compiled from: CropImageFragment.kt */
    /* renamed from: com.narvii.story.CropImageFragment$loadSourceImage$1, reason: invalid class name */
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
            CropImageFragment.this.rawBitmap = bitmap;
            Utils.post(new Runnable() { // from class: com.narvii.story.CropImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    if (CropImageFragment.this.getActivity() != null) {
                        CropImageFragment.access$getCropView$p(CropImageFragment.this).getImageView().setImageDrawable(new BitmapDrawable(CropImageFragment.this.getResources(), CropImageFragment.this.rawBitmap));
                        CropImageFragment.access$getCropView$p(CropImageFragment.this).invalidate();
                        CropImageFragment.access$getCropView$p(CropImageFragment.this).getImageView().imageUrl = this.this$0.$url;
                    }
                }
            });
        }

        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            CropImageFragment.this.showError();
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void crop() {
        String absolutePath;
        Bitmap bitmap = this.rawBitmap;
        if (bitmap == null || bitmap.isRecycled()) {
            showError();
            return;
        }
        CropView crop_view = (CropView) _$_findCachedViewById(com.narvii.amino.R.id.crop_view);
        Intrinsics.checkExpressionValueIsNotNull(crop_view, "crop_view");
        ThemeImage cropResult = crop_view.getImageView().getCropResult(this);
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
                new BitmapCropTask(context, this.rawBitmap, null, rectF, rectF2, 1.0f, 720, 1280, str, absolutePath2, new BitmapCropTask.BitmapCropCallback() { // from class: com.narvii.story.CropImageFragment$crop$$inlined$apply$lambda$1
                    @Override // com.narvii.crop.BitmapCropTask.BitmapCropCallback
                    public void onBitmapCropped(Uri resultUri, int i, int i2, int i3, int i4) {
                        Intrinsics.checkParameterIsNotNull(resultUri, "resultUri");
                        Media media = new Media();
                        media.type = 100;
                        media.url = this.this$0.outputUrl;
                        media.width = i3;
                        media.height = i4;
                        Intent intent = new Intent();
                        intent.putExtra("media", JacksonUtils.writeAsString(media));
                        this.this$0.setResult(-1, intent);
                        this.this$0.finish();
                    }

                    @Override // com.narvii.crop.BitmapCropTask.BitmapCropCallback
                    public void onCropFailure(Throwable t) {
                        Intrinsics.checkParameterIsNotNull(t, "t");
                        this.this$0.showError();
                    }
                }).execute(new Void[0]);
                return;
            }
            Intrinsics.throwNpe();
            throw null;
        }
    }
}
