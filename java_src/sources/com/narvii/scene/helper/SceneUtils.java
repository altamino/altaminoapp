package com.narvii.scene.helper;

import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.media.online.audio.model.AssetCategory;
import com.narvii.media.online.audio.model.Sound;
import com.narvii.model.Media;
import com.narvii.model.PollAttach;
import com.narvii.model.PollOption;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.model.Scene;
import com.narvii.photos.PhotoManager;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.JacksonUtils;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.SceneMediaProcessor;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public class SceneUtils {
    public static final int AUDIO_FADE_IN_INTERVAL = 4000;
    public static final int AUDIO_FADE_OUT_INTERVAL = 4000;

    public static AVClipInfoPack createAudioClipInfo(Media media, Sound sound, AssetCategory assetCategory, long j6, @NotNull PhotoManager photoManager) {
        AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
        aVClipInfoPack.trimStartInMs = 0;
        File path = photoManager.getPath(media.url);
        aVClipInfoPack.inputPath = path != null ? path.getAbsolutePath() : "";
        long j10 = media.duration;
        aVClipInfoPack.orgDurationInMs = (int) j10;
        aVClipInfoPack.visibleDurationInMs = (int) j10;
        aVClipInfoPack.trimStartInMs = 0;
        aVClipInfoPack.trimEndInMs = (int) Math.min(j10, j6);
        aVClipInfoPack.author = media.author;
        aVClipInfoPack.fileName = media.fileName;
        aVClipInfoPack.trackVolume = 0.5f;
        return SceneMediaProcessor.INSTANCE.fillAudioClipMetadata(aVClipInfoPack, sound, assetCategory);
    }

    public static String durationMsToUIText(long j6) {
        long j10 = j6 / 1000;
        long j11 = j10 / 3600;
        Locale locale = Locale.US;
        String str = String.format(locale, "%02d:%02d.%1d", Long.valueOf((j10 % 3600) / 60), Long.valueOf(j10 % 60), Long.valueOf((j6 % 1000) / 100));
        if (j11 == 0) {
            return str;
        }
        return String.format(locale, "%d:", Long.valueOf(j11)) + str;
    }

    public static void fillSceneInfoWithMediaList(SceneInfo sceneInfo, List<Media> list, List<Integer> list2, PhotoManager photoManager) {
        if (sceneInfo == null || list == null || list.size() == 0 || photoManager == null) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            Media media = list.get(i10);
            if (media != null && !TextUtils.isEmpty(media.url)) {
                File path = photoManager.getPath(media.url);
                sceneInfo.inputFilePathList.add(0, path != null ? path.getAbsolutePath() : "");
                sceneInfo.duration += media.duration;
                if (TextUtils.isEmpty(sceneInfo.coverImage)) {
                    sceneInfo.coverImage = media.type == 100 ? media.url : media.coverImage;
                }
                if (list2 == null || list2.size() <= i10) {
                    sceneInfo.inputFileFrom.add(1);
                } else {
                    sceneInfo.inputFileFrom.add(list2.get(i10));
                }
            }
        }
    }

    public static int getStoryThemeColor(@NotNull NVContext nVContext, int i10) {
        ConfigService configService = (ConfigService) nVContext.getService("config");
        if (i10 == 0 || configService == null || configService.getTheme() == null) {
            return -6923272;
        }
        return configService.getTheme().colorPrimary();
    }

    public static List<Scene> getAttachPreviewSceneList(List<Scene> list) {
        List<PollOption> list2;
        List<QuizOption> listQuizOptions;
        ArrayList<Scene> listAs = JacksonUtils.readListAs(JacksonUtils.writeAsString(list), Scene.class);
        if (listAs != null) {
            for (Scene scene : listAs) {
                if (scene.sceneId == null) {
                    scene.sceneId = UUID.randomUUID().toString();
                }
                QuizQuestion quizQuestion = scene.question;
                if (quizQuestion != null && (listQuizOptions = quizQuestion.quizOptions()) != null) {
                    for (QuizOption quizOption : listQuizOptions) {
                        if (quizOption.optId == null) {
                            quizOption.optId = UUID.randomUUID().toString();
                        }
                    }
                    Collections.shuffle(listQuizOptions, new Random(System.currentTimeMillis()));
                    scene.question.setQuizOptions(listQuizOptions);
                }
                PollAttach pollAttach = scene.pollAttach;
                if (pollAttach != null && (list2 = pollAttach.polloptList) != null) {
                    for (PollOption pollOption : list2) {
                        if (pollOption.polloptId == null) {
                            pollOption.polloptId = UUID.randomUUID().toString();
                        }
                    }
                }
            }
        }
        return listAs;
    }

    public static File getSceneDraftFile(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "default";
        }
        return new File(str, str2);
    }
}
