.class final Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneDraftHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/service/SceneDraftHelper;->deleteUselessFile(Lcom/narvii/scene/model/SceneDraft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/io/File;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $compatibleCoverImage$inlined:Ljava/lang/String;

.field final synthetic $coverPaths$inlined:Ljava/util/List;

.field final synthetic $draft$inlined:Lcom/narvii/scene/model/SceneDraft;

.field final synthetic $intermediatePaths$inlined:Ljava/util/List;

.field final synthetic this$0:Lcom/narvii/scene/service/SceneDraftHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/service/SceneDraftHelper;Ljava/util/List;Ljava/util/List;Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/scene/service/SceneDraftHelper;

    iput-object p2, p0, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$1;->$coverPaths$inlined:Ljava/util/List;

    iput-object p3, p0, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$1;->$intermediatePaths$inlined:Ljava/util/List;

    iput-object p4, p0, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$1;->$draft$inlined:Lcom/narvii/scene/model/SceneDraft;

    iput-object p5, p0, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$1;->$compatibleCoverImage$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$1;->invoke(Ljava/io/File;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/io/File;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$1;->$coverPaths$inlined:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
