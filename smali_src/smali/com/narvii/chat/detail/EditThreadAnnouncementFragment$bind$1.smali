.class final Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$bind$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->bind(I)Lw7/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $res:I

.field final synthetic this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$bind$1;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    iput p2, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$bind$1;->$res:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$bind$1;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    .line 1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$bind$1;->$res:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "null cannot be cast to non-null type T of com.narvii.chat.detail.EditThreadAnnouncementFragment.bind"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$bind$1;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
