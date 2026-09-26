.class public final synthetic Lcom/narvii/video/attachment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/attachment/AttachmentEditorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/a;->a:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/attachment/a;->a:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->F(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    return-void
.end method
