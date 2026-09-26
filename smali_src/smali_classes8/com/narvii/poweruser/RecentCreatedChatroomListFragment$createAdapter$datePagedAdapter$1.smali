.class public final Lcom/narvii/poweruser/RecentCreatedChatroomListFragment$createAdapter$datePagedAdapter$1;
.super Lcom/narvii/list/DatePagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/DatePagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected dateSectionLayoutId()I
    .locals 1

    const v0, 0x7f0d0698

    return v0
.end method

.method protected newDatePageHelper(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/list/DatePageHelper;
    .locals 1
    .param p1    # Lcom/narvii/list/NVPagedAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/list/NVPagedAdapter<",
            "**>;)",
            "Lcom/narvii/list/DatePageHelper;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "nvPagedAdapter"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/list/DatePageHelper;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/narvii/list/DatePageHelper;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    .line 11
    return-object v0
.end method
