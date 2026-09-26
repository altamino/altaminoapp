.class Lcom/narvii/amino/CommunityNavBarFragment$9;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$9;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/amino/CommunityNavBarFragment$9;->val$cv:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$9;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 9
    .line 10
    const-string v1, "__communityId"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$9;->val$cv:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    const v0, 0x7f0a036b

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment$9;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/narvii/amino/CommunityNavBarFragment;->p(Lcom/narvii/amino/CommunityNavBarFragment;Lcom/narvii/widget/NVImageView;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$9;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->t(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->u(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 47
    :goto_0
    const/4 p1, 0x1

    .line 48
    return p1
.end method
