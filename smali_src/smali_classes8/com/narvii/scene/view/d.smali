.class public final synthetic Lcom/narvii/scene/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/view/EditScenePreviewLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/view/EditScenePreviewLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/d;->a:Lcom/narvii/scene/view/EditScenePreviewLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/view/d;->a:Lcom/narvii/scene/view/EditScenePreviewLayout;

    invoke-static {v0}, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;->a(Lcom/narvii/scene/view/EditScenePreviewLayout;)V

    return-void
.end method
