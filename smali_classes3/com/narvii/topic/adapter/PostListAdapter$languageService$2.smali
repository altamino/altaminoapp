.class final Lcom/narvii/topic/adapter/PostListAdapter$languageService$2;
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
        "Lcom/narvii/language/ContentLanguageService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/PostListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/PostListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$languageService$2;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/language/ContentLanguageService;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$languageService$2;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    const-string v1, "content_language"

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter$languageService$2;->invoke()Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    return-object v0
.end method
