package com.narvii.services;

import com.narvii.account.settings.MasterAccountWebViewFragment;
import com.narvii.app.BaseFragmentRegisterProvider;
import com.narvii.editor.attachment.caption.CaptionStyleFragment;
import com.narvii.editor.cropping.basic.BasicCroppingFragment;
import com.narvii.monetization.sticker.picker.StickerPickerTabFragment;
import com.narvii.pip.PipEditorFragment;
import com.narvii.scene.quiz.SceneQuizPostFragment;
import com.narvii.video.AudioEditorFragment;
import com.narvii.video.MediaSpeedFragment;
import com.narvii.video.MediaSplitFragment;
import com.narvii.video.MediaTrimmingFragment;
import com.narvii.video.attachment.AttachmentEditorFragment;
import com.narvii.video.attachment.caption.CaptionEditTextFragment;
import com.narvii.video.attachment.caption.CaptionTabFragment;
import java.util.HashMap;

/* loaded from: classes.dex */
public class AminoFragmentRegisterProvider extends BaseFragmentRegisterProvider {
    @Override // com.narvii.app.BaseFragmentRegisterProvider
    protected void registerFragment(HashMap<String, Class> map) {
        map.put("mediaEditor", MediaTrimmingFragment.class);
        map.put("accountWebView", MasterAccountWebViewFragment.class);
        map.put("captionEditText", CaptionEditTextFragment.class);
        map.put("captionTab", CaptionTabFragment.class);
        map.put("captionStyle", CaptionStyleFragment.class);
        map.put("attachmentEditor", AttachmentEditorFragment.class);
        map.put("audioEditor", AudioEditorFragment.class);
        map.put("cropEditor", BasicCroppingFragment.class);
        map.put("splitEditor", MediaSplitFragment.class);
        map.put("sceneQuiz", SceneQuizPostFragment.class);
        map.put("stickerEditorTab", StickerPickerTabFragment.class);
        map.put("pipEditor", PipEditorFragment.class);
        map.put("mediaSpeed", MediaSpeedFragment.class);
    }
}
