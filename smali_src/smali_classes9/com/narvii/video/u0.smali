.class public final synthetic Lcom/narvii/video/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/u0;->a:Lcom/narvii/video/SceneEditorFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/u0;->a:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v0, p1}, Lcom/narvii/video/SceneEditorFragment$progress$2;->a(Lcom/narvii/video/SceneEditorFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
