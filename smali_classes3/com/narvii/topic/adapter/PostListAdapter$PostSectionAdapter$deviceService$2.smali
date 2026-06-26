.class final Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$deviceService$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PostListAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;-><init>(Lcom/narvii/topic/adapter/PostListAdapter;Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/util/deviceid/DeviceIDService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$deviceService$2;->this$0:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/deviceid/DeviceIDService;
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$deviceService$2;->this$0:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    const-string v1, "deviceid"

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/deviceid/DeviceIDService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$deviceService$2;->invoke()Lcom/narvii/util/deviceid/DeviceIDService;

    move-result-object v0

    return-object v0
.end method
