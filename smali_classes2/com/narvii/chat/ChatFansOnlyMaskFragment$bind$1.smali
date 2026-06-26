.class final Lcom/narvii/chat/ChatFansOnlyMaskFragment$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatFansOnlyMaskFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatFansOnlyMaskFragment;->bind(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)Lkotlin/Lazy;
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

.field final synthetic $this_bind:Lcom/narvii/chat/ChatFansOnlyMaskFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatFansOnlyMaskFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$bind$1;->$this_bind:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    iput p2, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$bind$1;->$res:I

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

    .line 110
    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$bind$1;->$this_bind:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$bind$1;->$res:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type T"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/narvii/chat/ChatFansOnlyMaskFragment$bind$1;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
