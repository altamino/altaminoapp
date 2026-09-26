.class public final synthetic Lcom/narvii/video/attachment/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/video/attachment/AttachmentEditorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/e;->a:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/attachment/e;->a:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {v0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->D(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;)V

    return-void
.end method
