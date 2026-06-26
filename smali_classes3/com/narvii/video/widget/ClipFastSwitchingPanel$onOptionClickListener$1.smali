.class final Lcom/narvii/video/widget/ClipFastSwitchingPanel$onOptionClickListener$1;
.super Ljava/lang/Object;
.source "ClipFastSwitchingPanel.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/ClipFastSwitchingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$onOptionClickListener$1;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    .line 59
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 60
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_trim:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$onOptionClickListener$1;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getEventCallback$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;->onOptionTrimSelected()V

    goto :goto_0

    .line 62
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_crop:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$onOptionClickListener$1;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getEventCallback$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;->onOptionCropSelected()V

    goto :goto_0

    .line 64
    :cond_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_speed:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$onOptionClickListener$1;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getEventCallback$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;->onOptionSpeedSelected()V

    goto :goto_0

    .line 66
    :cond_2
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_music:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$onOptionClickListener$1;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getEventCallback$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;->onOptionMusicSelected()V

    goto :goto_0

    .line 68
    :cond_3
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_remove:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$onOptionClickListener$1;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getEventCallback$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;->onClipDeleted()V

    :cond_4
    :goto_0
    return-void
.end method
