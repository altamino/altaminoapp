.class public Lcom/narvii/services/AminoFragmentRegisterProvider;
.super Lcom/narvii/app/BaseFragmentRegisterProvider;
.source "AminoFragmentRegisterProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/app/BaseFragmentRegisterProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected registerFragment(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 27
    const-class v0, Lcom/narvii/video/MediaTrimmingFragment;

    const-string v1, "mediaEditor"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-class v0, Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    const-string v1, "accountWebView"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-class v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    const-string v1, "captionEditText"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-class v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    const-string v1, "captionTab"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-class v0, Lcom/narvii/editor/attachment/caption/CaptionStyleFragment;

    const-string v1, "captionStyle"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-class v0, Lcom/narvii/video/attachment/AttachmentEditorFragment;

    const-string v1, "attachmentEditor"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v0, Lcom/narvii/video/AudioEditorFragment;

    const-string v1, "audioEditor"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-class v0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    const-string v1, "cropEditor"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v0, Lcom/narvii/video/MediaSplitFragment;

    const-string/jumbo v1, "splitEditor"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v0, Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    const-string/jumbo v1, "sceneQuiz"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-class v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    const-string/jumbo v1, "stickerEditorTab"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-class v0, Lcom/narvii/pip/PipEditorFragment;

    const-string/jumbo v1, "pipEditor"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-class v0, Lcom/narvii/video/MediaSpeedFragment;

    const-string v1, "mediaSpeed"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
