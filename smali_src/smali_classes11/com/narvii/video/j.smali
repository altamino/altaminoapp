.class public final synthetic Lcom/narvii/video/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/BaseMediaEditorFragment;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/j;->a:Lcom/narvii/video/BaseMediaEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/j;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/video/j;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/narvii/video/j;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/narvii/video/j;->f:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/narvii/video/j;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/narvii/video/j;->a:Lcom/narvii/video/BaseMediaEditorFragment;

    iget-object v1, p0, Lcom/narvii/video/j;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/narvii/video/j;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/narvii/video/j;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/narvii/video/j;->f:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/narvii/video/j;->g:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v5}, Lcom/narvii/video/BaseMediaEditorFragment;->p(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
