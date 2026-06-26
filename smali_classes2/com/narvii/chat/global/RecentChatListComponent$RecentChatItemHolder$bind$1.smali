.class final Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecentChatListComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->bind(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $res:I

.field final synthetic $this_bind:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bind$1;->$this_bind:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;

    iput p2, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bind$1;->$res:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bind$1;->$this_bind:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bind$1;->$res:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bind$1;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
