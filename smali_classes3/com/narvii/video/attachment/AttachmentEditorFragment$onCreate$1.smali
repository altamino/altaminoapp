.class final Lcom/narvii/video/attachment/AttachmentEditorFragment$onCreate$1;
.super Ljava/lang/Object;
.source "AttachmentEditorFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onCreate$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onCreate$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "stickerTab"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 80
    :goto_0
    instance-of v0, p1, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;

    if-eqz v0, :cond_1

    .line 81
    check-cast p1, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;

    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;->onLocalAnimatedStickerConvertTerminated()V

    :cond_1
    return-void
.end method
