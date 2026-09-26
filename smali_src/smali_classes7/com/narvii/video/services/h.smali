.class public final synthetic Lcom/narvii/video/services/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/h;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/narvii/video/services/h;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/video/services/h;->c:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/video/services/h;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/video/services/h;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/narvii/video/services/h;->c:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    invoke-static {v0, v1, v2}, Lcom/narvii/video/services/SceneMediaProcessor;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method
