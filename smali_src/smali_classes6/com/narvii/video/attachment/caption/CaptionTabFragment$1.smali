.class Lcom/narvii/video/attachment/caption/CaptionTabFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/attachment/caption/CaptionTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/caption/CaptionTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->editCaptionTextHost:Lcom/narvii/video/attachment/caption/EditCaptionTextHost;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/narvii/video/attachment/caption/EditCaptionTextHost;->editCurrentCaptionText()V

    .line 10
    :cond_0
    return-void
.end method
