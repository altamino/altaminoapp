.class final Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$removeUserInList$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->removeUserInList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lcom/narvii/model/User;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$removeUserInList$2;->$uid:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/narvii/model/User;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$removeUserInList$2;->$uid:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$removeUserInList$2;->invoke(Lcom/narvii/model/User;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
