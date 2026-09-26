.class public final synthetic Lcom/narvii/scene/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/view/EditSceneBGMLayout;

.field public final synthetic b:Lcom/narvii/video/model/AVClipInfoPack;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/view/EditSceneBGMLayout;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/c;->a:Lcom/narvii/scene/view/EditSceneBGMLayout;

    iput-object p2, p0, Lcom/narvii/scene/view/c;->b:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/view/c;->a:Lcom/narvii/scene/view/EditSceneBGMLayout;

    iget-object v1, p0, Lcom/narvii/scene/view/c;->b:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/scene/view/EditSceneBGMLayout;->a(Lcom/narvii/scene/view/EditSceneBGMLayout;Lcom/narvii/video/model/AVClipInfoPack;)V

    return-void
.end method
