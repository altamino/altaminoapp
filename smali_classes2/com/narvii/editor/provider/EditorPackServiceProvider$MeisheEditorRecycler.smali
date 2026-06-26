.class public final Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler;
.super Ljava/lang/Object;
.source "EditorPackServiceProvider.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IEditorRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/provider/EditorPackServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeisheEditorRecycler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler;->Companion:Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler$Companion;

    .line 68
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler$Companion$instance$2;->INSTANCE:Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 65
    sget-object v0, Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public clearCacheResources()V
    .locals 2

    .line 77
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->clearCachedResources(Z)V

    return-void
.end method

.method public clearUnuseResource()V
    .locals 1

    .line 74
    sget-object v0, Lcom/narvii/editor/player/MeisheTimelineManage;->Companion:Lcom/narvii/editor/player/MeisheTimelineManage$Companion;

    invoke-virtual {v0}, Lcom/narvii/editor/player/MeisheTimelineManage$Companion;->getInstance()Lcom/narvii/editor/player/MeisheTimelineManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/editor/player/MeisheTimelineManage;->removeAllUnuseTimeline()V

    return-void
.end method
