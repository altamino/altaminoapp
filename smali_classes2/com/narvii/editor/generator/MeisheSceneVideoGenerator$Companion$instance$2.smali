.class final Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion$instance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MeisheSceneVideoGenerator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion$instance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion$instance$2;

    invoke-direct {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion$instance$2;-><init>()V

    sput-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion$instance$2;->INSTANCE:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion$instance$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;
    .locals 2

    .line 28
    new-instance v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion$instance$2;->invoke()Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    move-result-object v0

    return-object v0
.end method
