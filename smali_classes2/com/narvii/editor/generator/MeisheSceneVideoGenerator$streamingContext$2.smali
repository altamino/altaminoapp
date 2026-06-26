.class final Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$streamingContext$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MeisheSceneVideoGenerator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/meicam/sdk/NvsStreamingContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$streamingContext$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$streamingContext$2;

    invoke-direct {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$streamingContext$2;-><init>()V

    sput-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$streamingContext$2;->INSTANCE:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$streamingContext$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/meicam/sdk/NvsStreamingContext;
    .locals 1

    .line 33
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$streamingContext$2;->invoke()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    return-object v0
.end method
