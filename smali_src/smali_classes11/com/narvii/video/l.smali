.class public final synthetic Lcom/narvii/video/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/narvii/video/BaseMediaEditorFragment;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic f:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/l;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/narvii/video/l;->b:Lcom/narvii/video/BaseMediaEditorFragment;

    iput-object p3, p0, Lcom/narvii/video/l;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/narvii/video/l;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/narvii/video/l;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/narvii/video/l;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/video/l;->b:Lcom/narvii/video/BaseMediaEditorFragment;

    iget-object v2, p0, Lcom/narvii/video/l;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/narvii/video/l;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/narvii/video/l;->f:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->n(Ljava/util/ArrayList;Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
