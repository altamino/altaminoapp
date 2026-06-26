.class public Lcom/narvii/members/MembersSearchFragment;
.super Lcom/narvii/search/SearchKeywordTabFragment;
.source "MembersSearchFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/search/SearchKeywordTabFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragment(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 18
    invoke-super {p0, p1}, Lcom/narvii/search/SearchKeywordTabFragment;->getFragment(I)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 13
    invoke-super {p0, p1}, Lcom/narvii/search/SearchKeywordTabFragment;->getTabLabel(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
