.class public final Lcom/narvii/story/vote/FollowView;
.super Landroid/widget/FrameLayout;
.source "FollowView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/user/follow/IUserFollow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/vote/FollowView$OnFollowClickListener;,
        Lcom/narvii/story/vote/FollowView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFollowView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FollowView.kt\ncom/narvii/story/vote/FollowView\n*L\n1#1,121:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/story/vote/FollowView$Companion;

.field private static final FOLLOWED_STATUS:I = 0x2

.field private static final FOLLOWING_STATUS:I = 0x1

.field private static final UNFOLLOW_STATUS:I


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private addImage:Landroid/widget/ImageView;

.field private followLayout:Landroid/widget/FrameLayout;

.field private followSuccImg:Lcom/narvii/widget/NVImageView;

.field private followTxt:Landroid/widget/TextView;

.field private loadingView:Lcom/narvii/widget/SpinningView;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private onFollowClickListener:Lcom/narvii/story/vote/FollowView$OnFollowClickListener;

.field private status:I

.field private user:Lcom/narvii/model/User;

.field private userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/story/vote/FollowView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/story/vote/FollowView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/story/vote/FollowView;->Companion:Lcom/narvii/story/vote/FollowView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b0271

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090066

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.add_img)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->addImage:Landroid/widget/ImageView;

    const p1, 0x7f0904ad

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.follow_txt)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->followTxt:Landroid/widget/TextView;

    const p1, 0x7f090c1d

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.user_follow_progress)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/SpinningView;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->loadingView:Lcom/narvii/widget/SpinningView;

    const p1, 0x7f0904ab

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.follow_success_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->followSuccImg:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f0904a5

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.follow_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->followLayout:Landroid/widget/FrameLayout;

    .line 51
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b0271

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090066

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.add_img)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->addImage:Landroid/widget/ImageView;

    const p1, 0x7f0904ad

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_txt)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->followTxt:Landroid/widget/TextView;

    const p1, 0x7f090c1d

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.user_follow_progress)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/SpinningView;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->loadingView:Lcom/narvii/widget/SpinningView;

    const p1, 0x7f0904ab

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_success_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->followSuccImg:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f0904a5

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->followLayout:Landroid/widget/FrameLayout;

    .line 51
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b0271

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090066

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.add_img)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->addImage:Landroid/widget/ImageView;

    const p1, 0x7f0904ad

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_txt)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->followTxt:Landroid/widget/TextView;

    const p1, 0x7f090c1d

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.user_follow_progress)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/SpinningView;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->loadingView:Lcom/narvii/widget/SpinningView;

    const p1, 0x7f0904ab

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_success_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->followSuccImg:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f0904a5

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->followLayout:Landroid/widget/FrameLayout;

    .line 51
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setStatus(I)V
    .locals 3

    .line 96
    iput p1, p0, Lcom/narvii/story/vote/FollowView;->status:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->followLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->addImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->followTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->loadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->followSuccImg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->followLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->addImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->followTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->loadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->followSuccImg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->followLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->addImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->followTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->loadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->followSuccImg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/vote/FollowView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/vote/FollowView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/vote/FollowView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/story/vote/FollowView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/vote/FollowView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public follow(Lcom/narvii/model/User;)V
    .locals 0

    return-void
.end method

.method public followFail()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lcom/narvii/story/vote/FollowView;->setStatus(I)V

    return-void
.end method

.method public followSuccess()V
    .locals 1

    const/4 v0, 0x2

    .line 88
    invoke-direct {p0, v0}, Lcom/narvii/story/vote/FollowView;->setStatus(I)V

    return-void
.end method

.method public getOnFollowClickListener()Lcom/narvii/story/vote/FollowView$OnFollowClickListener;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/story/vote/FollowView;->onFollowClickListener:Lcom/narvii/story/vote/FollowView$OnFollowClickListener;

    return-object v0
.end method

.method public final initViews(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;Z)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->user:Lcom/narvii/model/User;

    .line 71
    iput-object p2, p0, Lcom/narvii/story/vote/FollowView;->nvContext:Lcom/narvii/app/NVContext;

    .line 72
    new-instance p1, Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-direct {p1, p0, p2}, Lcom/narvii/user/follow/UserFollowDelegate;-><init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 73
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/story/vote/FollowView;->setStatus(I)V

    return-void
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic needUpdateUserAfterFollow()Z
    .locals 1

    invoke-static {p0}, Lcom/narvii/user/follow/IUserFollow$-CC;->$default$needUpdateUserAfterFollow(Lcom/narvii/user/follow/IUserFollow;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 55
    iget p1, p0, Lcom/narvii/story/vote/FollowView;->status:I

    if-eqz p1, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/story/vote/FollowView;->getOnFollowClickListener()Lcom/narvii/story/vote/FollowView$OnFollowClickListener;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "user"

    if-eqz p1, :cond_2

    .line 60
    iget-object v2, p0, Lcom/narvii/story/vote/FollowView;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_1

    invoke-interface {p1, v2}, Lcom/narvii/story/vote/FollowView$OnFollowClickListener;->onFollowClicked(Lcom/narvii/model/User;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/narvii/story/vote/FollowView;->setStatus(I)V

    .line 65
    iget-object p1, p0, Lcom/narvii/story/vote/FollowView;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/narvii/story/vote/FollowView;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Lcom/narvii/user/follow/UserFollowDelegate;->follow(Lcom/narvii/model/User;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public onFollowStatusUpdated()V
    .locals 0

    return-void
.end method

.method public setOnFollowClickListener(Lcom/narvii/story/vote/FollowView$OnFollowClickListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/narvii/story/vote/FollowView;->onFollowClickListener:Lcom/narvii/story/vote/FollowView$OnFollowClickListener;

    return-void
.end method
