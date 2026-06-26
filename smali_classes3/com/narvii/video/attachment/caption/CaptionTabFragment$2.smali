.class Lcom/narvii/video/attachment/caption/CaptionTabFragment$2;
.super Ljava/lang/Object;
.source "CaptionTabFragment.java"

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

    .line 143
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment$2;->this$0:Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment$2;->this$0:Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->dismiss(Z)V

    return-void
.end method
