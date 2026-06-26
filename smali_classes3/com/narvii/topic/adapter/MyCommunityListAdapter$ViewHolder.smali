.class public final Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MyCommunityListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/MyCommunityListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyCommunityListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyCommunityListAdapter.kt\ncom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder\n*L\n1#1,237:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final disabledView$delegate:Lkotlin/Lazy;

.field private final icon$delegate:Lkotlin/Lazy;

.field private final image$delegate:Lkotlin/Lazy;

.field private final probationView$delegate:Lkotlin/Lazy;

.field private final progress$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

.field private final title$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;

    const/4 v1, 0x6

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "image"

    const-string v5, "getImage()Lcom/narvii/widget/PromotionalImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "icon"

    const-string v5, "getIcon()Lcom/narvii/widget/CommunityIconView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "title"

    const-string v5, "getTitle()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "progress"

    const-string v5, "getProgress()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "probationView"

    const-string v5, "getProbationView()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "disabledView"

    const-string v4, "getDisabledView()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p2, 0x7f090571

    .line 153
    invoke-static {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->image$delegate:Lkotlin/Lazy;

    const p2, 0x7f090562

    .line 154
    invoke-static {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->icon$delegate:Lkotlin/Lazy;

    const p2, 0x7f090b9a

    .line 155
    invoke-static {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->title$delegate:Lkotlin/Lazy;

    const p2, 0x7f0908cb

    .line 156
    invoke-static {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->progress$delegate:Lkotlin/Lazy;

    const p2, 0x7f0908c9

    .line 157
    invoke-static {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->probationView$delegate:Lkotlin/Lazy;

    const p2, 0x7f090359

    .line 158
    invoke-static {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->disabledView$delegate:Lkotlin/Lazy;

    .line 161
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getImage()Lcom/narvii/widget/PromotionalImageView;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/widget/PromotionalImageView;->showLaunchPage:Z

    .line 162
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getImage()Lcom/narvii/widget/PromotionalImageView;

    move-result-object p1

    iput-boolean p2, p1, Lcom/narvii/widget/PromotionalImageView;->preloadCachedImage:Z

    .line 163
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public final getDisabledView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->disabledView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getIcon()Lcom/narvii/widget/CommunityIconView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->icon$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CommunityIconView;

    return-object v0
.end method

.method public final getImage()Lcom/narvii/widget/PromotionalImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->image$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/PromotionalImageView;

    return-object v0
.end method

.method public final getProbationView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->probationView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getProgress()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->progress$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->title$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final updateData(Lcom/narvii/model/Community;)V
    .locals 6

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getMyCommunityHelper()Lcom/narvii/community/MyCommunityHelper;

    move-result-object v0

    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityHelper;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v0

    .line 169
    iget v1, p1, Lcom/narvii/model/Community;->status:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x9

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 170
    :goto_0
    iget v4, p1, Lcom/narvii/model/Community;->probationStatus:I

    if-ne v4, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 172
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getImage()Lcom/narvii/widget/PromotionalImageView;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 173
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getIcon()Lcom/narvii/widget/CommunityIconView;

    move-result-object v4

    iget-object v5, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 174
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getIcon()Lcom/narvii/widget/CommunityIconView;

    move-result-object v4

    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 175
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getProbationView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getDisabledView()Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    :cond_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0908cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "v"

    .line 180
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-virtual {v1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->launchProgress()Lcom/narvii/widget/SmoothProgressBar;

    move-result-object v1

    const/4 v4, 0x4

    if-ne v0, v1, :cond_6

    .line 181
    iget-object v1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-virtual {v1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->launchCommunity()Lcom/narvii/model/Community;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-virtual {v1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->launchCommunity()Lcom/narvii/model/Community;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    iget v5, p1, Lcom/narvii/model/Community;->id:I

    if-eq v1, v5, :cond_5

    .line 182
    iget-object v1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-virtual {v1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getMyCommunityHelper()Lcom/narvii/community/MyCommunityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityHelper;->cancelLaunch()V

    goto :goto_3

    .line 181
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_5
    const/4 v4, 0x0

    .line 180
    :cond_6
    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getMyCommunityHelper()Lcom/narvii/community/MyCommunityHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/community/MyCommunityHelper;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    .line 191
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getMyCommunityHelper()Lcom/narvii/community/MyCommunityHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/narvii/community/MyCommunityHelper;->updateThemeProgressInCell(Landroid/view/View;Lcom/narvii/model/Community;)V

    .line 192
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    iget-object v0, v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    iget-object v0, v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
