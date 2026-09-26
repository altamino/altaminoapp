.class public final synthetic Lcom/narvii/video/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/video/SceneEditorFragment;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/p0;->a:Lcom/narvii/video/SceneEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/p0;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/video/p0;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/narvii/video/p0;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/narvii/video/p0;->f:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/narvii/video/p0;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/narvii/video/p0;->a:Lcom/narvii/video/SceneEditorFragment;

    iget-object v1, p0, Lcom/narvii/video/p0;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/narvii/video/p0;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/narvii/video/p0;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/narvii/video/p0;->f:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/narvii/video/p0;->g:Ljava/util/ArrayList;

    move-object v6, p1

    check-cast v6, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v6}, Lcom/narvii/video/SceneEditorFragment;->I(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    return-void
.end method
