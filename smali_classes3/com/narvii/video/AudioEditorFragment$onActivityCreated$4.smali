.class final Lcom/narvii/video/AudioEditorFragment$onActivityCreated$4;
.super Ljava/lang/Object;
.source "AudioEditorFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/AudioEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/AudioEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/AudioEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$4;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    .line 160
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$4;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$updateMuteIcon(Lcom/narvii/video/AudioEditorFragment;)V

    return-void
.end method
