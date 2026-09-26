.class public final synthetic Lcom/narvii/scene/view/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/view/ScenePreviewLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/view/ScenePreviewLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/h;->a:Lcom/narvii/scene/view/ScenePreviewLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/view/h;->a:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-static {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->b(Lcom/narvii/scene/view/ScenePreviewLayout;)V

    return-void
.end method
