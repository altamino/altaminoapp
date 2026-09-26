.class public final synthetic Lcom/narvii/video/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/video/model/AVClipInfoPack;

.field public final synthetic b:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

.field public final synthetic c:Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/f;->a:Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p2, p0, Lcom/narvii/video/widget/f;->b:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    iput-object p3, p0, Lcom/narvii/video/widget/f;->c:Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/video/widget/f;->a:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v1, p0, Lcom/narvii/video/widget/f;->b:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    iget-object v2, p0, Lcom/narvii/video/widget/f;->c:Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->a(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;Landroid/view/View;)V

    return-void
.end method
