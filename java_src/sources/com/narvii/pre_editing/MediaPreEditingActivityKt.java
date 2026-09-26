package com.narvii.pre_editing;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.narvii.amino.BuildConfig;
import com.narvii.app.NVFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.scene.helper.SceneSpHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.text.TextUtils;
import com.safedk.android.utils.Logger;
import e8.p;
import java.io.File;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class MediaPreEditingActivityKt {
    public static final int CROP_GOOGLE_SEARCH_VIDEO = 64816;
    public static final int MIN_DURATION_MS_FOR_ENTERING_PRE_EDIT_ACTIVITY = 60999;
    public static final int TRIM_START_END_TIME = 64818;

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static final void startPreEditActivity(@NotNull NVFragment fragment, @NotNull Media media, @NotNull Bundle bundle, @NotNull String outputPath) {
        t.j(fragment, "fragment");
        t.j(media, "media");
        t.j(bundle, "bundle");
        t.j(outputPath, "outputPath");
        FragmentActivity activity = fragment.getActivity();
        if (activity != null) {
            Intent intent = new Intent();
            intent.setClass(activity, MediaPreEditingActivity.class);
            intent.putExtra("media", JacksonUtils.writeAsString(media));
            intent.putExtra(BuildConfig.BUILD_TYPE, bundle);
            intent.putExtra("outputPath", outputPath);
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(fragment, intent, CROP_GOOGLE_SEARCH_VIDEO);
            long j6 = media.duration;
            if (1 > j6 || j6 >= 61000) {
                return;
            }
            activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
    }

    public static final void handlePickerMediaResult(@NotNull NVFragment fragment, @Nullable List<Media> list, @Nullable Bundle bundle, boolean z6, @NotNull e8.a<String> outputPath, @NotNull p<? super Media, ? super Bundle, l0> result) {
        Media media;
        Media mediaPrevious;
        t.j(fragment, "fragment");
        t.j(outputPath, "outputPath");
        t.j(result, "result");
        if (z6) {
            if (list != null) {
                ListIterator<Media> listIterator = list.listIterator(list.size());
                do {
                    if (!listIterator.hasPrevious()) {
                        mediaPrevious = null;
                        break;
                    }
                    mediaPrevious = listIterator.previous();
                } while (!mediaPrevious.isVideo());
                media = mediaPrevious;
            } else {
                media = null;
            }
            if (media != null) {
                SceneSpHelper sceneSpHelper = new SceneSpHelper(fragment);
                String fileName = media.fileName;
                t.i(fileName, "fileName");
                sceneSpHelper.saveRecentVideo(media, fileName);
            }
        }
        Media media2 = list != null ? (Media) d0.j0(list) : null;
        if (media2 == null || TextUtils.isEmpty(media2.url) || bundle == null) {
            return;
        }
        int i10 = media2.type;
        if (i10 == 103) {
            startPreEditActivity(fragment, media2, bundle, outputPath.invoke());
            return;
        }
        if (i10 != 123) {
            result.invoke(media2, bundle);
        } else if (media2.duration > 60999) {
            startPreEditActivity(fragment, media2, bundle, outputPath.invoke());
        } else {
            result.invoke(media2, bundle);
        }
    }

    public static /* synthetic */ void handlePickerMediaResult$default(NVFragment fragment, List list, Bundle bundle, boolean z6, e8.a outputPath, p result, int i10, Object obj) {
        Media media;
        Object objPrevious;
        if ((i10 & 8) != 0) {
            z6 = false;
        }
        t.j(fragment, "fragment");
        t.j(outputPath, "outputPath");
        t.j(result, "result");
        if (z6) {
            if (list != null) {
                ListIterator listIterator = list.listIterator(list.size());
                do {
                    if (!listIterator.hasPrevious()) {
                        objPrevious = null;
                        break;
                    }
                    objPrevious = listIterator.previous();
                } while (!((Media) objPrevious).isVideo());
                media = (Media) objPrevious;
            } else {
                media = null;
            }
            if (media != null) {
                SceneSpHelper sceneSpHelper = new SceneSpHelper(fragment);
                String fileName = media.fileName;
                t.i(fileName, "fileName");
                sceneSpHelper.saveRecentVideo(media, fileName);
            }
        }
        Media media2 = list != null ? (Media) d0.j0(list) : null;
        if (media2 == null || TextUtils.isEmpty(media2.url) || bundle == null) {
            return;
        }
        int i11 = media2.type;
        if (i11 == 103) {
            startPreEditActivity(fragment, media2, bundle, (String) outputPath.invoke());
            return;
        }
        if (i11 != 123) {
            result.invoke(media2, bundle);
        } else if (media2.duration > 60999) {
            startPreEditActivity(fragment, media2, bundle, (String) outputPath.invoke());
        } else {
            result.invoke(media2, bundle);
        }
    }

    public static final void handlePreEditActivityResult(int i10, int i11, @Nullable Intent intent, @NotNull p<? super Media, ? super Bundle, l0> result) {
        t.j(result, "result");
        if (i11 == -1 && i10 == 64816 && intent != null) {
            Media media = (Media) JacksonUtils.readAs(intent.getStringExtra("media"), Media.class);
            Bundle bundleExtra = intent.getBundleExtra(BuildConfig.BUILD_TYPE);
            if (bundleExtra == null) {
                bundleExtra = new Bundle();
            }
            t.g(bundleExtra);
            t.g(media);
            result.invoke(media, bundleExtra);
        }
    }

    public static final void pickVideoFromGalleryAndYoutube(@NotNull MediaPickerFragment picker, @NotNull String dir, int i10, int i11, boolean z6) {
        t.j(picker, "picker");
        t.j(dir, "dir");
        Bundle bundle = new Bundle();
        bundle.putString("type", "video");
        bundle.putBoolean("checkUnsupportedImageType", true);
        bundle.putInt(MediaPickerFragment.PICK_MIN_VIDEO_DURATION, 1000);
        bundle.putBoolean(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION, true);
        bundle.putInt("caller", i11);
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.maximum = i10;
        mediaPickerConfiguration.optionList = (z6 ? 8 : 0) | 16;
        mediaPickerConfiguration.galleryVideoMode = 0;
        picker.pickMedia((File) null, bundle, mediaPickerConfiguration);
    }

    public static /* synthetic */ void pickVideoFromGalleryAndYoutube$default(MediaPickerFragment mediaPickerFragment, String str, int i10, int i11, boolean z6, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i10 = 10;
        }
        if ((i12 & 8) != 0) {
            i11 = 1;
        }
        if ((i12 & 16) != 0) {
            z6 = true;
        }
        pickVideoFromGalleryAndYoutube(mediaPickerFragment, str, i10, i11, z6);
    }

    public static final void startPreEditActivity(@NotNull NVFragment fragment, @NotNull Media media, long j6, long j10, long j11, int i10) {
        t.j(fragment, "fragment");
        t.j(media, "media");
        FragmentActivity activity = fragment.getActivity();
        if (activity != null) {
            Intent intent = new Intent();
            intent.setClass(activity, MediaPreEditingActivity.class);
            intent.putExtra("media", JacksonUtils.writeAsString(media));
            intent.putExtra("fakeTrim", true);
            intent.putExtra("trimStartTime", j6);
            intent.putExtra("trimEndTime", j10);
            intent.putExtra("maxOutputTime", j11);
            intent.putExtra("minOutputTime", Math.min(1000L, j11));
            intent.putExtra("index", i10);
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(fragment, intent, TRIM_START_END_TIME);
        }
    }
}
