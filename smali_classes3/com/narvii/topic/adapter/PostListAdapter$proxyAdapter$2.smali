.class final Lcom/narvii/topic/adapter/PostListAdapter$proxyAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PostListAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/PostListAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $ctx:Lcom/narvii/app/NVContext;

.field final synthetic this$0:Lcom/narvii/topic/adapter/PostListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/PostListAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$proxyAdapter$2;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    iput-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter$proxyAdapter$2;->$ctx:Lcom/narvii/app/NVContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;
    .locals 3

    .line 54
    new-instance v0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    iget-object v1, p0, Lcom/narvii/topic/adapter/PostListAdapter$proxyAdapter$2;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    iget-object v2, p0, Lcom/narvii/topic/adapter/PostListAdapter$proxyAdapter$2;->$ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1, v2}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;-><init>(Lcom/narvii/topic/adapter/PostListAdapter;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter$proxyAdapter$2;->invoke()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    return-object v0
.end method
