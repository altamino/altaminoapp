.class public final synthetic Lcom/narvii/video/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/o0;->a:Lcom/narvii/video/SceneEditorFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/o0;->a:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/video/SceneEditorFragment;->F(Lcom/narvii/video/SceneEditorFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method
