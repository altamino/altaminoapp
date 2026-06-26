.class public abstract Lcom/narvii/members/HorizontalMemberWrappedAdapter;
.super Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;
.source "HorizontalMemberWrappedAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;
    }
.end annotation


# instance fields
.field private final adapter:Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;

.field private final nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V

    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 19
    new-instance p1, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;-><init>(Lcom/narvii/members/HorizontalMemberWrappedAdapter;)V

    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->adapter:Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;

    .line 20
    iget-object p1, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->adapter:Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->setRecycleAdapter(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V

    return-void
.end method

.method public static final synthetic access$getNvContext$p(Lcom/narvii/members/HorizontalMemberWrappedAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method protected abstract createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
.end method

.method public getCount()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->adapter:Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;

    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->getCount()I

    move-result v0

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
