.class public final Lcom/narvii/community/MasterCommunityLayoutHelper;
.super Lcom/narvii/community/CommunityLayoutHelper;
.source "SourceFile"


# instance fields
.field private context:Lcom/narvii/app/NVContext;
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
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/community/CommunityLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/community/MasterCommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 11
    return-void
.end method


# virtual methods
.method public configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/NVImageView$OnImageChangedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "cell"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p5}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 9
    .line 10
    .line 11
    const p3, 0x7f0a0a53

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/widget/OnlineMemberBar;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p3, p2, Lcom/narvii/model/Community;->activeInfo:Lcom/narvii/model/ActiveInfo;

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    iget-object p3, p3, Lcom/narvii/model/ActiveInfo;->latestActiveUserList:Ljava/util/List;

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p3, 0x0

    .line 30
    .line 31
    :goto_0
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget-object p2, p2, Lcom/narvii/model/Community;->activeInfo:Lcom/narvii/model/ActiveInfo;

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    iget p2, p2, Lcom/narvii/model/ActiveInfo;->memberCount:I

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 p2, 0x0

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p1, p3, p2}, Lcom/narvii/widget/OnlineMemberBar;->setUserList(Ljava/util/List;I)V

    .line 43
    .line 44
    :cond_2
    if-nez p1, :cond_3

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_3
    const/16 p2, 0x8

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :goto_2
    return-void
.end method

.method public final getContext()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/MasterCommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final setContext(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/community/MasterCommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method
