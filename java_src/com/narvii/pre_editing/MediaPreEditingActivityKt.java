package com.narvii.pre_editing;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.narvii.amino.BuildConfig;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.scene.helper.SceneSpHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.text.TextUtils;
import java.io.File;
import java.util.List;
import java.util.ListIterator;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MediaPreEditingActivity.kt */
/* loaded from: classes3.dex */
public final class MediaPreEditingActivityKt {
    public static final int CROP_GOOGLE_SEARCH_VIDEO = 64816;
    public static final int MIN_DURATION_MS_FOR_ENTERING_PRE_EDIT_ACTIVITY = 60999;
    public static final int TRIM_START_END_TIME = 64818;

    public static /* synthetic */ void pickVideoFromGalleryAndYoutube$default(MediaPickerFragment mediaPickerFragment, String str, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i = 10;
        }
        if ((i3 & 8) != 0) {
            i2 = 1;
        }
        if ((i3 & 16) != 0) {
            z = true;
        }
        pickVideoFromGalleryAndYoutube(mediaPickerFragment, str, i, i2, z);
    }

    public static final void pickVideoFromGalleryAndYoutube(MediaPickerFragment picker, String dir, int i, int i2, boolean z) {
        Intrinsics.checkParameterIsNotNull(picker, "picker");
        Intrinsics.checkParameterIsNotNull(dir, "dir");
        Bundle bundle = new Bundle();
        bundle.putString("type", "video");
        bundle.putBoolean("checkUnsupportedImageType", true);
        bundle.putInt(MediaPickerFragment.PICK_MIN_VIDEO_DURATION, 1000);
        bundle.putBoolean(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION, true);
        bundle.putInt("caller", i2);
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.maximum = i;
        mediaPickerConfiguration.optionList = (z ? 8 : 0) | 16;
        mediaPickerConfiguration.galleryVideoMode = 0;
        if (NVApplication.isStoryEditorApp()) {
            mediaPickerConfiguration.optionList |= 32;
            mediaPickerConfiguration.isGoogleVideoSearch = true;
        }
        picker.pickMedia((File) null, bundle, mediaPickerConfiguration);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.Object] */
    public static /* synthetic */ void handlePickerMediaResult$default(NVFragment fragment, List list, Bundle bundle, boolean z, Function0 outputPath, Function2 result, int i, Object obj) {
        Media media;
        Media mediaPrevious;
        if ((i & 8) != 0) {
            z = false;
        }
        Intrinsics.checkParameterIsNotNull(fragment, "fragment");
        Intrinsics.checkParameterIsNotNull(outputPath, "outputPath");
        Intrinsics.checkParameterIsNotNull(result, "result");
        if (z) {
            if (list != null) {
                ListIterator listIterator = list.listIterator(list.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        mediaPrevious = 0;
                        break;
                    } else {
                        mediaPrevious = listIterator.previous();
                        if (((Media) mediaPrevious).isVideo()) {
                            break;
                        }
                    }
                }
                media = mediaPrevious;
            } else {
                media = null;
            }
            if (media != null) {
                SceneSpHelper sceneSpHelper = new SceneSpHelper(fragment);
                String str = media.fileName;
                Intrinsics.checkExpressionValueIsNotNull(str, "it.fileName");
                sceneSpHelper.saveRecentVideo(media, str);
            }
        }
        Media media2 = list != null ? (Media) CollectionsKt.first(list) : null;
        if (media2 == null || TextUtils.isEmpty(media2.url) || bundle == null) {
            return;
        }
        int i2 = media2.type;
        if (i2 == 103) {
            startPreEditActivity(fragment, media2, bundle, (String) outputPath.invoke());
            return;
        }
        if (i2 != 123) {
            result.invoke(media2, bundle);
        } else if (media2.duration > MIN_DURATION_MS_FOR_ENTERING_PRE_EDIT_ACTIVITY) {
            startPreEditActivity(fragment, media2, bundle, (String) outputPath.invoke());
        } else {
            result.invoke(media2, bundle);
        }
    }

    public static final void handlePickerMediaResult(NVFragment fragment, List<Media> list, Bundle bundle, boolean z, Function0<String> outputPath, Function2<? super Media, ? super Bundle, Unit> result) {
        Media media;
        Media mediaPrevious;
        Intrinsics.checkParameterIsNotNull(fragment, "fragment");
        Intrinsics.checkParameterIsNotNull(outputPath, "outputPath");
        Intrinsics.checkParameterIsNotNull(result, "result");
        if (z) {
            if (list != null) {
                ListIterator<Media> listIterator = list.listIterator(list.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        mediaPrevious = null;
                        break;
                    } else {
                        mediaPrevious = listIterator.previous();
                        if (mediaPrevious.isVideo()) {
                            break;
                        }
                    }
                }
                media = mediaPrevious;
            } else {
                media = null;
            }
            if (media != null) {
                SceneSpHelper sceneSpHelper = new SceneSpHelper(fragment);
                String str = media.fileName;
                Intrinsics.checkExpressionValueIsNotNull(str, "it.fileName");
                sceneSpHelper.saveRecentVideo(media, str);
            }
        }
        Media media2 = list != null ? (Media) CollectionsKt.first(list) : null;
        if (media2 == null || TextUtils.isEmpty(media2.url) || bundle == null) {
            return;
        }
        int i = media2.type;
        if (i == 103) {
            startPreEditActivity(fragment, media2, bundle, outputPath.invoke());
            return;
        }
        if (i != 123) {
            result.invoke(media2, bundle);
        } else if (media2.duration > MIN_DURATION_MS_FOR_ENTERING_PRE_EDIT_ACTIVITY) {
            startPreEditActivity(fragment, media2, bundle, outputPath.invoke());
        } else {
            result.invoke(media2, bundle);
        }
    }

    public static final void handlePreEditActivityResult(int i, int i2, Intent intent, Function2<? super Media, ? super Bundle, Unit> result) {
        Intrinsics.checkParameterIsNotNull(result, "result");
        if (i2 == -1 && i == 64816 && intent != null) {
            Media media = (Media) JacksonUtils.readAs(intent.getStringExtra("media"), Media.class);
            Bundle bundle = intent.getBundleExtra(BuildConfig.BUILD_TYPE);
            Intrinsics.checkExpressionValueIsNotNull(media, "media");
            Intrinsics.checkExpressionValueIsNotNull(bundle, "bundle");
            result.invoke(media, bundle);
        }
    }

    public static final void startPreEditActivity(NVFragment fragment, Media media, Bundle bundle, String outputPath) {
        Intrinsics.checkParameterIsNotNull(fragment, "fragment");
        Intrinsics.checkParameterIsNotNull(media, "media");
        Intrinsics.checkParameterIsNotNull(bundle, "bundle");
        Intrinsics.checkParameterIsNotNull(outputPath, "outputPath");
        FragmentActivity activity = fragment.getActivity();
        if (activity != null) {
            Intent intent = new Intent();
            intent.setClass(activity, MediaPreEditingActivity.class);
            intent.putExtra("media", JacksonUtils.writeAsString(media));
            intent.putExtra(BuildConfig.BUILD_TYPE, bundle);
            intent.putExtra("outputPath", outputPath);
            fragment.startActivityForResult(intent, CROP_GOOGLE_SEARCH_VIDEO);
            long j = MIN_DURATION_MS_FOR_ENTERING_PRE_EDIT_ACTIVITY;
            long j2 = media.duration;
            if (1 <= j2 && j >= j2) {
                activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
            }
        }
    }

    public static final void startPreEditActivity(NVFragment fragment, Media media, long j, long j2, long j3, int i) {
        Intrinsics.checkParameterIsNotNull(fragment, "fragment");
        Intrinsics.checkParameterIsNotNull(media, "media");
        FragmentActivity activity = fragment.getActivity();
        if (activity != null) {
            Intent intent = new Intent();
            intent.setClass(activity, MediaPreEditingActivity.class);
            intent.putExtra("media", JacksonUtils.writeAsString(media));
            intent.putExtra("fakeTrim", true);
            intent.putExtra("trimStartTime", j);
            intent.putExtra("trimEndTime", j2);
            intent.putExtra("maxOutputTime", j3);
            intent.putExtra("minOutputTime", Math.min(1000L, j3));
            intent.putExtra("index", i);
            fragment.startActivityForResult(intent, TRIM_START_END_TIME);
        }
    }
}
