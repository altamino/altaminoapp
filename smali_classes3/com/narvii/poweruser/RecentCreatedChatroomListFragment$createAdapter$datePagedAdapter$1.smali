.class public final Lcom/narvii/poweruser/RecentCreatedChatroomListFragment$createAdapter$datePagedAdapter$1;
.super Lcom/narvii/list/DatePagedAdapter;
.source "RecentCreatedChatroomListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/narvii/poweruser/RecentCreatedChatroomListFragment$createAdapter$datePagedAdapter$1;->this$0:Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/DatePagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected dateSectionLayoutId()I
    .locals 1

    const v0, 0x7f0b05e4

    return v0
.end method

.method protected newDatePageHelper(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/list/DatePageHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/list/NVPagedAdapter<",
            "**>;)",
            "Lcom/narvii/list/DatePageHelper;"
        }
    .end annotation

    const-string v0, "nvPagedAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/narvii/list/DatePageHelper;

    invoke-direct {v0, p1}, Lcom/narvii/list/DatePageHelper;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    return-object v0
.end method
