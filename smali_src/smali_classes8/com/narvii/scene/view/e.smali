.class public final synthetic Lcom/narvii/scene/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/view/ScenePreviewLayout;

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/view/ScenePreviewLayout;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/e;->a:Lcom/narvii/scene/view/ScenePreviewLayout;

    iput-wide p2, p0, Lcom/narvii/scene/view/e;->b:J

    iput-wide p4, p0, Lcom/narvii/scene/view/e;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/view/e;->a:Lcom/narvii/scene/view/ScenePreviewLayout;

    iget-wide v1, p0, Lcom/narvii/scene/view/e;->b:J

    iget-wide v3, p0, Lcom/narvii/scene/view/e;->c:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/narvii/scene/view/ScenePreviewLayout;->a(Lcom/narvii/scene/view/ScenePreviewLayout;JJ)V

    return-void
.end method
