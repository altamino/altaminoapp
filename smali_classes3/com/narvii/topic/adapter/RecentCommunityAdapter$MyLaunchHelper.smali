.class public final Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "RecentCommunityAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/RecentCommunityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyLaunchHelper"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentCommunityAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentCommunityAdapter.kt\ncom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper\n*L\n1#1,251:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private community:Lcom/narvii/model/Community;

.field private imageView:Lcom/narvii/widget/NVImageView;

.field private launchActivity:Landroid/app/Activity;

.field private final myCommunityListService$delegate:Lkotlin/Lazy;

.field private progressBar:Lcom/narvii/widget/SmoothProgressBar;

.field private recent:Z

.field final synthetic this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "myCommunityListService"

    const-string v4, "getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    const-string p1, "Right Side Panel"

    invoke-direct {p0, p2, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 142
    new-instance p1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$myCommunityListService$2;

    invoke-direct {p1, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$myCommunityListService$2;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->myCommunityListService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$onFinish$s-465807059(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method

.method private final launchCid(ILandroid/graphics/drawable/Drawable;)V
    .locals 11

    .line 175
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Community;

    .line 178
    iget v4, v3, Lcom/narvii/model/Community;->id:I

    if-ne v4, p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/narvii/community/MyCommunityListService;->getUserInfoTimestamp(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    move-object v5, v4

    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object v4, v2

    move-object v5, v4

    .line 189
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v6

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v0, p0

    move v1, p1

    move-object v3, v5

    move-object v10, p2

    invoke-virtual/range {v0 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 193
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 195
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 196
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz v1, :cond_2

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 197
    invoke-virtual {v1, v2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 198
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 197
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 200
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 201
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 202
    invoke-static {v1}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 204
    :cond_3
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    return-void
.end method

.method public final getCommunity()Lcom/narvii/model/Community;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public final getImageView()Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getLaunchActivity()Landroid/app/Activity;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->myCommunityListService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    return-object v0
.end method

.method public final getProgressBar()Lcom/narvii/widget/SmoothProgressBar;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    return-object v0
.end method

.method public final getRecent()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->recent:Z

    return v0
.end method

.method public final launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V
    .locals 2

    const-string v0, "community"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressBar"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 161
    iput-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 162
    iput-object p3, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v1, 0x64

    .line 164
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 165
    invoke-virtual {p3, v0}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 166
    iput-boolean v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->recent:Z

    .line 168
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchCid(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final launchRecent(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;)V
    .locals 1

    const-string v0, "community"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 152
    iput-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    const/4 p2, 0x0

    .line 153
    iput-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->recent:Z

    .line 156
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchCid(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinish()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->access$getActivity(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)Landroid/app/Activity;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 213
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    .line 214
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    new-instance v3, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$onFinish$1;

    invoke-direct {v3, p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$onFinish$1;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 223
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->access$removeLaunchSplash(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 146
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCommunity(Lcom/narvii/model/Community;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    return-void
.end method

.method public final setImageView(Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method

.method public final setLaunchActivity(Landroid/app/Activity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    return-void
.end method

.method public final setProgressBar(Lcom/narvii/widget/SmoothProgressBar;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    return-void
.end method

.method public final setRecent(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->recent:Z

    return-void
.end method
