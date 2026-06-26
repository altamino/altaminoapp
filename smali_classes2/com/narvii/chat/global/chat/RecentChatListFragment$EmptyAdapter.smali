.class public final Lcom/narvii/chat/global/chat/RecentChatListFragment$EmptyAdapter;
.super Lcom/narvii/adapter/NVPagerStatusAdapter;
.source "RecentChatListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/chat/RecentChatListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmptyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$EmptyAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createEmptyView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 159
    invoke-super {p0, p1, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;->createEmptyView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f0903ea

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string/jumbo p2, "view"

    .line 161
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected emptyLayoutId()I
    .locals 1

    const v0, 0x7f0b01ef

    return v0
.end method
