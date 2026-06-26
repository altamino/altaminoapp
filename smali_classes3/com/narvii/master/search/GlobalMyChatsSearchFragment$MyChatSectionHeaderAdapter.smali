.class public final Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyChatSectionHeaderAdapter;
.super Lcom/narvii/master/search/trending/SectionHeaderAdapter;
.source "GlobalMyChatsSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalMyChatsSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyChatSectionHeaderAdapter"
.end annotation


# instance fields
.field private final titleStrId:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    iput p2, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyChatSectionHeaderAdapter;->titleStrId:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
