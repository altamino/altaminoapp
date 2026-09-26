.class final Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LinkedCommuAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    return-void
.end method

.method public static synthetic g(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Lcom/narvii/model/Community;Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->onBindViewHolder$lambda$0(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Lcom/narvii/model/Community;Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Lcom/narvii/model/Community;Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p3, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "$community"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p3, "this$1"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->getPage()Lcom/narvii/app/NVContext;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    sget-object p3, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    const-string p3, "LinkedCommunities"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 39
    .line 40
    const-class p0, Lcom/narvii/master/CommunityDetailFragment;

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    const-string p3, "id"

    .line 47
    .line 48
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->access$getCommuList$p(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->access$getCommuList$p(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;)Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/model/Community;

    .line 18
    .line 19
    instance-of v0, p1, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    move-object v0, p1

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->getIconIV()Lcom/narvii/widget/ThumbImageView;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget-object v2, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->getNameTV()Landroid/widget/TextView;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    iget-object v2, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->getCommunityIdTV()Landroid/widget/TextView;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x1

    .line 54
    .line 55
    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v3, p2, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v3, :cond_0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v3, 0x0

    .line 62
    :goto_0
    const/4 v4, 0x0

    .line 63
    .line 64
    aput-object v3, v2, v4

    .line 65
    .line 66
    .line 67
    const v3, 0x7f120829

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    .line 79
    .line 80
    new-instance v1, Lcom/narvii/master/home/widgets/b;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v0, p2, p0}, Lcom/narvii/master/home/widgets/b;-><init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Lcom/narvii/model/Community;Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p2, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0d04e1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "inflate(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;-><init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;Landroid/view/View;)V

    .line 32
    return-object p2
.end method
