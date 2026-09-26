.class public final synthetic Lcom/narvii/video/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/model/AVClipInfoPack;

.field public final synthetic b:Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

.field public final synthetic c:Lcom/narvii/video/widget/AudioEditorPanel;

.field public final synthetic d:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;Lcom/narvii/video/widget/AudioEditorPanel;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/a;->a:Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p2, p0, Lcom/narvii/video/widget/a;->b:Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    iput-object p3, p0, Lcom/narvii/video/widget/a;->c:Lcom/narvii/video/widget/AudioEditorPanel;

    iput p4, p0, Lcom/narvii/video/widget/a;->d:I

    iput p5, p0, Lcom/narvii/video/widget/a;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/narvii/video/widget/a;->a:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v1, p0, Lcom/narvii/video/widget/a;->b:Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    iget-object v2, p0, Lcom/narvii/video/widget/a;->c:Lcom/narvii/video/widget/AudioEditorPanel;

    iget v3, p0, Lcom/narvii/video/widget/a;->d:I

    iget v4, p0, Lcom/narvii/video/widget/a;->f:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/narvii/video/widget/AudioEditorPanel;->a(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;Lcom/narvii/video/widget/AudioEditorPanel;II)V

    return-void
.end method
