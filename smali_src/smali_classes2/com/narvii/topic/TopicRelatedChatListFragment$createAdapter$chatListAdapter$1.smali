.class final Lcom/narvii/topic/TopicRelatedChatListFragment$createAdapter$chatListAdapter$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicRelatedChatListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Boolean;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicRelatedChatListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/topic/TopicRelatedChatListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/TopicRelatedChatListFragment$createAdapter$chatListAdapter$1;->this$0:Lcom/narvii/topic/TopicRelatedChatListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/topic/TopicRelatedChatListFragment$createAdapter$chatListAdapter$1;->invoke(Z)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/topic/TopicRelatedChatListFragment$createAdapter$chatListAdapter$1;->this$0:Lcom/narvii/topic/TopicRelatedChatListFragment;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {p1}, Lcom/narvii/master/MasterTabFragment;->setStoreBadged()V

    :cond_0
    return-void
.end method
