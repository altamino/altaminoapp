.class Lcom/narvii/amino/CommunityNavBarFragment$9;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CommunityNavBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/CommunityNavBarFragment;->setUpTitle(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/CommunityNavBarFragment;

.field final synthetic val$cv:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/amino/CommunityNavBarFragment;Landroid/view/View;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$9;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    iput-object p2, p0, Lcom/narvii/amino/CommunityNavBarFragment$9;->val$cv:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 397
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$9;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    iget-boolean v0, p1, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p1, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    const-string v1, "__communityId"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 400
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$9;->val$cv:Landroid/view/View;

    const v0, 0x7f0902a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 401
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment$9;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-static {v0, p1}, Lcom/narvii/amino/CommunityNavBarFragment;->access$700(Lcom/narvii/amino/CommunityNavBarFragment;Lcom/narvii/widget/NVImageView;)V

    goto :goto_0

    .line 403
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$9;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->access$800(Lcom/narvii/amino/CommunityNavBarFragment;)V

    goto :goto_0

    .line 406
    :cond_1
    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->access$000(Lcom/narvii/amino/CommunityNavBarFragment;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
