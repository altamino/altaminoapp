package com.narvii.scene.helper;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.media.online.audio.model.AssetCategory;
import com.narvii.media.online.audio.model.Sound;
import com.narvii.model.Media;
import com.narvii.model.Scene;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.photos.PhotoManager;
import com.narvii.scene.SceneBasePostFragment;
import com.narvii.scene.SceneManageFragment;
import com.narvii.scene.ScenePreviewFragment;
import com.narvii.scene.ScenesBackgroundMusicFragment;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.poll.ScenePollPostFragment;
import com.narvii.scene.quiz.SceneQuizPostFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.video.SceneEditorFragment;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.IEditorPackFactory;
import com.narvii.video.services.SceneMediaProcessor;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SceneListHelper {
    public static final int EDIT_BACKGROUND_MUSIC = 64532;
    public static final int MANAGE_SCENE_REQUEST = 64528;
    public static final int SCENE_EDIT_FROM_BLOG_TO_STORY = 2;
    public static final int SCENE_EDIT_FROM_MEDIA_PICKER = 3;
    public static final int SCENE_EDIT_FROM_STORY = 1;
    public static final int SCENE_EDIT_REQUEST = 64530;
    public static final int SCENE_POLL = 64534;
    public static final int SCENE_PREVIEW = 64531;
    public static final int SCENE_QUIZ = 64533;
    private NVContext nvContext;
    private PhotoManager photoManager;

    public boolean isSceneBackgroundResult(int i, int i2, Intent intent) {
        return i2 == -1 && i == 64532 && intent != null;
    }

    public boolean isSceneEditorResult(int i, int i2, Intent intent) {
        return i2 == -1 && i == 64530 && intent != null;
    }

    public boolean isSceneManageResult(int i, int i2, Intent intent) {
        return i2 == -1 && i == 64528 && intent != null;
    }

    public boolean isScenePollResult(int i, int i2, Intent intent) {
        return i2 == -1 && i == 64534 && intent != null;
    }

    public boolean isScenePreviewResult(int i, int i2) {
        return i2 == -1 && i == 64531;
    }

    public boolean isSceneQuizResult(int i, int i2, Intent intent) {
        return i2 == -1 && i == 64533 && intent != null;
    }

    public SceneListHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.photoManager = (PhotoManager) nVContext.getService("photo");
    }

    public void launchSceneEditor(SceneInfo sceneInfo, boolean z, String str) {
        launchSceneEditor(sceneInfo, z, str, 1, "");
    }

    public void launchSceneEditor(SceneInfo sceneInfo, boolean z, String str, int i, String str2) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + SceneEditorFragment.class.getName()));
        intent.putExtra("outputFileDir", str);
        intent.putExtra("sceneInfo", JacksonUtils.writeAsString(sceneInfo));
        intent.putExtra("mediaType", z ? 100 : 123);
        intent.putExtra("from", i);
        intent.putExtra("extra", str2);
        launch(intent, SCENE_EDIT_REQUEST);
    }

    public void launchSceneEditor(List<Media> list, SceneInfo sceneInfo, boolean z, String str, Bundle bundle) {
        if (sceneInfo == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = bundle != null ? bundle.getInt(MediaPickerFragment.PICK_FROM, 2) : 2;
        for (Media media : list) {
            File path = this.photoManager.getPath(media.url);
            String absolutePath = path != null ? path.getAbsolutePath() : "";
            if (!media.isImage() || Utils.isBMP(absolutePath) || Utils.isPNG(absolutePath) || Utils.isJPG(absolutePath) || Utils.isGifInData(absolutePath)) {
                arrayList.add(media);
                arrayList2.add(Integer.valueOf(SceneMediaProcessor.INSTANCE.getVideoSource(absolutePath, media.type, i)));
            }
        }
        SceneInfo sceneInfoCopy = sceneInfo.copy();
        SceneUtils.fillSceneInfoWithMediaList(sceneInfoCopy, arrayList, arrayList2, this.photoManager);
        launchSceneEditor(sceneInfoCopy, z, str);
    }

    public void launchSceneManager(SceneDraft sceneDraft) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + SceneManageFragment.class.getName()));
        intent.putExtra("sceneDraft", JacksonUtils.writeAsString(sceneDraft));
        launch(intent, MANAGE_SCENE_REQUEST);
    }

    public void launchScenePreview(SceneDraft sceneDraft) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + ScenePreviewFragment.class.getName()));
        intent.putExtra("sceneDraft", JacksonUtils.writeAsString(sceneDraft));
        launch(intent, SCENE_PREVIEW);
    }

    public void launchSceneBackgroundMusic(SceneDraft sceneDraft, AVClipInfoPack aVClipInfoPack) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + ScenesBackgroundMusicFragment.class.getName()));
        intent.putExtra("sceneDraft", JacksonUtils.writeAsString(sceneDraft));
        intent.putExtra("bgMusicClip", JacksonUtils.writeAsString(aVClipInfoPack));
        launch(intent, EDIT_BACKGROUND_MUSIC);
    }

    public void launchSceneBackgroundMusic(SceneDraft sceneDraft, Media media, Bundle bundle) {
        ArrayList listAs = JacksonUtils.readListAs(bundle.getString("soundDataList"), Sound.class);
        launchSceneBackgroundMusic(sceneDraft, SceneUtils.createAudioClipInfo(media, (listAs == null || listAs.size() <= 0) ? null : (Sound) listAs.get(0), (AssetCategory) JacksonUtils.readAs(bundle.getString("category"), AssetCategory.class), sceneDraft.getTotalDuration(), this.photoManager));
    }

    public void launchEditQuiz(SceneInfo sceneInfo, String str) {
        SceneBasePostFragment.BACKGROUND.set(((IEditorPackFactory) this.nvContext.getService("editorPackFactory")).getVideoGenerator().getLastFrameSnapShot(sceneInfo));
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + SceneQuizPostFragment.class.getName()));
        intent.putExtra("outputFileDir", str);
        intent.putExtra("sceneId", sceneInfo.id);
        intent.putExtra(EntryManager.ENTRY_QUEATION, JacksonUtils.writeAsString(sceneInfo.getQuestion()));
        launch(intent, SCENE_QUIZ);
    }

    public void launchEditQuiz(Scene scene, String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + SceneQuizPostFragment.class.getName()));
        intent.putExtra("editRemote", true);
        Media media = scene.media;
        intent.putExtra("coverImageUrl", media != null ? media.coverImage : null);
        intent.putExtra("outputFileDir", str);
        intent.putExtra("sceneId", scene.sceneId);
        intent.putExtra(EntryManager.ENTRY_QUEATION, JacksonUtils.writeAsString(scene.getQuizQuestion()));
        launch(intent, SCENE_QUIZ);
    }

    public void launchEditPoll(SceneInfo sceneInfo, String str) {
        SceneBasePostFragment.BACKGROUND.set(((IEditorPackFactory) this.nvContext.getService("editorPackFactory")).getVideoGenerator().getLastFrameSnapShot(sceneInfo));
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + ScenePollPostFragment.class.getName()));
        intent.putExtra("outputFileDir", str);
        intent.putExtra("sceneInfo", JacksonUtils.writeAsString(sceneInfo));
        launch(intent, SCENE_POLL);
    }

    public void launchEditPoll(Scene scene, String str) {
        SceneInfo sceneInfo = new SceneInfo();
        sceneInfo.id = scene.sceneId;
        sceneInfo.pollAttach = scene.pollAttach;
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + ScenePollPostFragment.class.getName()));
        intent.putExtra("outputFileDir", str);
        intent.putExtra("sceneInfo", JacksonUtils.writeAsString(sceneInfo));
        intent.putExtra("editRemote", true);
        Media media = scene.media;
        intent.putExtra("coverImageUrl", media != null ? media.coverImage : null);
        launch(intent, SCENE_POLL);
    }

    public void launch(Intent intent, int i) {
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof NVFragment) {
            ((NVFragment) nVContext).startActivityForResult(intent, i);
        } else if (nVContext instanceof NVActivity) {
            ((NVActivity) nVContext).startActivityForResult(intent, i);
        }
    }
}
