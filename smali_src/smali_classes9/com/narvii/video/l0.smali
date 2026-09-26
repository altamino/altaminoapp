.class public final synthetic Lcom/narvii/video/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/SceneEditorFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/SceneEditorFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/l0;->a:Lcom/narvii/video/SceneEditorFragment;

    iput p2, p0, Lcom/narvii/video/l0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/video/l0;->a:Lcom/narvii/video/SceneEditorFragment;

    iget v1, p0, Lcom/narvii/video/l0;->b:I

    invoke-static {v0, v1}, Lcom/narvii/video/SceneEditorFragment;->D(Lcom/narvii/video/SceneEditorFragment;I)V

    return-void
.end method
