.class public Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "TopicTitleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicTitleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicTitleAdapter.kt\ncom/narvii/master/home/discover/adapter/TopicTitleAdapter\n*L\n1#1,177:1\n*E\n"
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

.field private final iconRes:Ljava/lang/Integer;

.field private final module:Lcom/narvii/topic/model/discover/ContentModule;

.field private final moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

.field private titleClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 48
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 49
    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 50
    iput-object p4, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->iconRes:Ljava/lang/Integer;

    .line 51
    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 47
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$getCtx$p(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static final synthetic access$getModule$p(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)Lcom/narvii/topic/model/discover/ContentModule;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    return-object p0
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "module.moduleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->showTitle:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 154
    invoke-super {p0}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;->getItemCount()I

    move-result v0

    return v0

    .line 153
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected final getModuleDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public final getTitleClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->titleClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    instance-of p2, p1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;

    if-eqz p2, :cond_3

    .line 66
    check-cast p1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->getIcon()Lcom/narvii/widget/NVImageView;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->iconRes:Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 69
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->getIcon()Lcom/narvii/widget/NVImageView;

    move-result-object p2

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->iconRes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->getIcon()Lcom/narvii/widget/NVImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object p2, p2, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "TopicBasedTrendingTopics"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x4

    if-eqz p2, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->getIcon()Lcom/narvii/widget/NVImageView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->getInterestIcon()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-boolean p2, p2, Lcom/narvii/topic/model/discover/ContentModule;->userRemovable:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance p2, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b03b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026pic_title, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Landroid/view/View;)V

    .line 56
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/narvii/topic/ModuleDisplayConfig;->isTop:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 57
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "topicTitleViewHolder.itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 58
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 59
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 84
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const v2, 0x7f090567

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_2

    .line 85
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 86
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 88
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 89
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->ctx:Lcom/narvii/app/NVContext;

    instance-of p2, p1, Lcom/narvii/app/NVFragment;

    if-eqz p2, :cond_2

    .line 90
    check-cast p1, Lcom/narvii/app/NVFragment;

    const-class p2, Lcom/narvii/topic/BookmarkedTopicListFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const/16 p3, 0x65

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 92
    :cond_2
    const-class p2, Lcom/narvii/topic/BookmarkedTopicListFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return v3

    :cond_3
    :goto_2
    const v2, 0x7f0905b9

    if-nez v1, :cond_4

    goto/16 :goto_5

    .line 96
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 97
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b03b9

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090781

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 99
    iget-object p3, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    const/4 p4, 0x0

    if-eqz p3, :cond_5

    iget p3, p3, Lcom/narvii/topic/model/discover/ContentModule;->linkedObjectType:I

    const/16 v0, 0x80

    if-ne p3, v0, :cond_5

    const/4 p3, 0x1

    goto :goto_3

    :cond_5
    const/4 p3, 0x0

    :goto_3
    const-string v0, "textView"

    .line 100
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p3, :cond_6

    const v1, 0x7f0f10ff

    goto :goto_4

    :cond_6
    const v1, 0x7f0f0c56

    :goto_4
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {v4}, Lcom/narvii/topic/model/discover/ContentModule;->getInterestName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2e147b    # 0.68f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 102
    new-instance p2, Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    invoke-direct {p2, p1, v0, v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 103
    invoke-virtual {p2, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 104
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {p2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 106
    new-instance p4, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;

    invoke-direct {p4, p0, p3, p2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;-><init>(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;ZLandroid/widget/PopupWindow;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p2, p5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return v3

    :cond_7
    :goto_5
    const v0, 0x7f090b9a

    if-nez v1, :cond_8

    goto :goto_6

    .line 142
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_b

    .line 143
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz p1, :cond_9

    iget-boolean p1, p1, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    if-eq p1, v3, :cond_a

    .line 144
    :cond_9
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->titleClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_a

    invoke-interface {p1, p4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_a
    return v3

    .line 149
    :cond_b
    :goto_6
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method

.method public final setTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->titleClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
