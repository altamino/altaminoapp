.class public abstract Lcom/narvii/members/HorizontalMemberWrappedAdapter;
.super Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;
    }
.end annotation


# instance fields
.field private final adapter:Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nvContext:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "nvContext"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;-><init>(Lcom/narvii/members/HorizontalMemberWrappedAdapter;)V

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->adapter:Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->setRecycleAdapter(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V

    .line 23
    return-void
.end method

.method public static final synthetic access$getNvContext$p(Lcom/narvii/members/HorizontalMemberWrappedAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method


# virtual methods
.method protected abstract createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->adapter:Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->getCount()I

    .line 14
    move-result v0

    .line 15
    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected isSinglePage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showEndItemView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
