.class public final Lcom/narvii/editor/provider/EditorPackServiceProvider;
.super Ljava/lang/Object;
.source "EditorPackServiceProvider.kt"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorPackFactory;,
        Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/video/services/IEditorPackFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private factory:Lcom/narvii/video/services/IEditorPackFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/video/services/IEditorPackFactory;
    .locals 0

    .line 23
    iget-object p1, p0, Lcom/narvii/editor/provider/EditorPackServiceProvider;->factory:Lcom/narvii/video/services/IEditorPackFactory;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorPackFactory;

    invoke-direct {p1}, Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorPackFactory;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/provider/EditorPackServiceProvider;->factory:Lcom/narvii/video/services/IEditorPackFactory;

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/narvii/editor/provider/EditorPackServiceProvider;->factory:Lcom/narvii/video/services/IEditorPackFactory;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/editor/provider/EditorPackServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/video/services/IEditorPackFactory;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/IEditorPackFactory;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/narvii/video/services/IEditorPackFactory;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/provider/EditorPackServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/IEditorPackFactory;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/IEditorPackFactory;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/narvii/video/services/IEditorPackFactory;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/provider/EditorPackServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/IEditorPackFactory;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/IEditorPackFactory;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/narvii/video/services/IEditorPackFactory;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/provider/EditorPackServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/IEditorPackFactory;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/IEditorPackFactory;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/narvii/video/services/IEditorPackFactory;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/provider/EditorPackServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/IEditorPackFactory;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/IEditorPackFactory;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/narvii/video/services/IEditorPackFactory;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/provider/EditorPackServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/IEditorPackFactory;)V

    return-void
.end method
