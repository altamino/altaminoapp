.class final Lcom/narvii/pre_editing/TrimVideoGenerator$videoManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TrimVideoGenerator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/TrimVideoGenerator;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/video/services/VideoManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/TrimVideoGenerator;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/TrimVideoGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$videoManager$2;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/video/services/VideoManager;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$videoManager$2;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator;

    invoke-virtual {v0}, Lcom/narvii/pre_editing/TrimVideoGenerator;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "videoManager"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/video/services/VideoManager;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.video.services.VideoManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/narvii/pre_editing/TrimVideoGenerator$videoManager$2;->invoke()Lcom/narvii/video/services/VideoManager;

    move-result-object v0

    return-object v0
.end method
