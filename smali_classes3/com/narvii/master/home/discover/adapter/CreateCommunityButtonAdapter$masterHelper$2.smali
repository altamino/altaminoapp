.class final Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$masterHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateCommunityButtonAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/master/MasterHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$masterHelper$2;->this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/master/MasterHelper;
    .locals 2

    .line 30
    new-instance v0, Lcom/narvii/master/MasterHelper;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$masterHelper$2;->this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$masterHelper$2;->invoke()Lcom/narvii/master/MasterHelper;

    move-result-object v0

    return-object v0
.end method
