.class final Lcom/narvii/story/StoryInterstitialPageFragment$CommentInputAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "StoryInterstitialPageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryInterstitialPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommentInputAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryInterstitialPageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/app/NVContext;)V
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

    .line 407
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$CommentInputAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b06d8

    .line 410
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f0900e4

    .line 411
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/UserAvatarLayout;

    .line 412
    iget-object p3, p0, Lcom/narvii/story/StoryInterstitialPageFragment$CommentInputAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p3}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getAccount$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/account/AccountService;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 413
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090291

    .line 414
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 415
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "#40000000"

    .line 416
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const-string p2, "view"

    .line 417
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f0900e4

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 422
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 423
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$CommentInputAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getAccount$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/account/AccountService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_2
    :goto_1
    const v1, 0x7f090291

    if-nez v0, :cond_3

    goto :goto_2

    .line 426
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 427
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkComment:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "StoryEnd"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$CommentInputAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 428
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$CommentInputAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getAccount$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_4

    .line 429
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    return v2

    .line 432
    :cond_4
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$CommentInputAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$openCommentPage(Lcom/narvii/story/StoryInterstitialPageFragment;)V

    .line 433
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$CommentInputAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getPushNotificationHelper$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/account/push/PushNotificationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    goto :goto_3

    .line 437
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    move-result v2

    :goto_3
    return v2
.end method
