.class public final synthetic Lcom/narvii/video/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Ljava/util/ArrayList;Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/c;->a:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    iput-object p2, p0, Lcom/narvii/video/widget/c;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/video/widget/c;->c:Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/video/widget/c;->a:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    iget-object v1, p0, Lcom/narvii/video/widget/c;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/narvii/video/widget/c;->c:Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;

    invoke-static {v0, v1, v2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->c(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Ljava/util/ArrayList;Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;)V

    return-void
.end method
