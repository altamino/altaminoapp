.class final Lcom/narvii/video/widget/MediaOptionPanel$onFinishInflate$3;
.super Ljava/lang/Object;
.source "MediaOptionPanel.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/MediaOptionPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/MediaOptionPanel;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/MediaOptionPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/MediaOptionPanel$onFinishInflate$3;->this$0:Lcom/narvii/video/widget/MediaOptionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/narvii/video/widget/MediaOptionPanel$onFinishInflate$3;->this$0:Lcom/narvii/video/widget/MediaOptionPanel;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaOptionPanel;->access$getOptionSelectedListener$p(Lcom/narvii/video/widget/MediaOptionPanel;)Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;->onAddMusicSelected()V

    :cond_0
    return-void
.end method
