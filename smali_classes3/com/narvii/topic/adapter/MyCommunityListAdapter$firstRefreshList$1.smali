.class final Lcom/narvii/topic/adapter/MyCommunityListAdapter$firstRefreshList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MyCommunityListAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/MyCommunityListAdapter;->firstRefreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$firstRefreshList$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$firstRefreshList$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$firstRefreshList$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->loadFailed()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$firstRefreshList$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->loadFinish()V

    :goto_0
    return-void
.end method
