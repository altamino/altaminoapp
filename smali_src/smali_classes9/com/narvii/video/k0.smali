.class public final synthetic Lcom/narvii/video/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/video/SceneEditorFragment;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/k0;->a:Lcom/narvii/video/SceneEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/k0;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/video/k0;->a:Lcom/narvii/video/SceneEditorFragment;

    iget-object v1, p0, Lcom/narvii/video/k0;->b:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/narvii/video/SceneEditorFragment;->H(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    return-void
.end method
