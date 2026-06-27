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
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.UUID;

/* loaded from: classes3.dex */
public class SceneUtils {
    public static final int AUDIO_FADE_IN_INTERVAL = 4000;
    public static final int AUDIO_FADE_OUT_INTERVAL = 4000;

    public static String durationMsToUIText(long j) {
        long j2 = j / 1000;
        long j3 = j2 / 3600;
        String str = String.format(Locale.US, "%02d:%02d.%1d", Long.valueOf((j2 % 3600) / 60), Long.valueOf(j2 % 60), Long.valueOf((j % 1000) / 100));
        if (j3 == 0) {
            return str;
        }
        return String.format(Locale.US, "%d:", Long.valueOf(j3)) + str;
    }

    public static File getSceneDraftFile(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "default";
        }
        return new File(str, str2);
    }

    public static void fillSceneInfoWithMediaList(SceneInfo sceneInfo, List<Media> list, List<Integer> list2, PhotoManager photoManager) {
        if (sceneInfo == null || list == null || list.size() == 0 || photoManager == null) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            Media media = list.get(i);
            if (media != null && !TextUtils.isEmpty(media.url)) {
                File path = photoManager.getPath(media.url);
                sceneInfo.inputFilePathList.add(0, path != null ? path.getAbsolutePath() : "");
                sceneInfo.duration += media.duration;
                if (TextUtils.isEmpty(sceneInfo.coverImage)) {
                    sceneInfo.coverImage = media.type == 100 ? media.url : media.coverImage;
                }
                if (list2 != null && list2.size() > i) {
                    sceneInfo.inputFileFrom.add(list2.get(i));
                } else {
                    sceneInfo.inputFileFrom.add(1);
                }
            }
        }
    }

    public static AVClipInfoPack createAudioClipInfo(Media media, Sound sound, AssetCategory assetCategory, long j, PhotoManager photoManager) {
        AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
        aVClipInfoPack.trimStartInMs = 0;
        File path = photoManager.getPath(media.url);
        aVClipInfoPack.inputPath = path != null ? path.getAbsolutePath() : "";
        long j2 = media.duration;
        aVClipInfoPack.orgDurationInMs = (int) j2;
        aVClipInfoPack.visibleDurationInMs = (int) j2;
        aVClipInfoPack.trimStartInMs = 0;
        aVClipInfoPack.trimEndInMs = (int) Math.min(j2, j);
        aVClipInfoPack.author = media.author;
        aVClipInfoPack.fileName = media.fileName;
        aVClipInfoPack.trackVolume = 0.5f;
        return SceneMediaProcessor.INSTANCE.fillAudioClipMetadata(aVClipInfoPack, sound, assetCategory);
    }

    public static int getStoryThemeColor(NVContext nVContext, int i) {
        ConfigService configService = (ConfigService) nVContext.getService("config");
        if (nVContext == null || i == 0 || configService == null || configService.getTheme() == null) {
            return -6923272;
        }
        return configService.getTheme().colorPrimary();
    }

    public static List<Scene> getAttachPreviewSceneList(List<Scene> list) {
        List<PollOption> list2;
        List<QuizOption> listQuizOptions;
        ArrayList listAs = JacksonUtils.readListAs(JacksonUtils.writeAsString(list), Scene.class);
        if (listAs != null) {
            Iterator it = listAs.iterator();
            while (it.hasNext()) {
                Scene scene = (Scene) it.next();
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
}
