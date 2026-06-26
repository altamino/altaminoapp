.class Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopAdapter"
.end annotation


# instance fields
.field private final headerTouchListener:Landroid/view/View$OnTouchListener;

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1467
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 1468
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1449
    new-instance p1, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter$1;

    invoke-direct {p1, p0}, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;)V

    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->headerTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1488
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const v0, 0x7f0b06c6

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->access$702(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;)Landroid/view/View;

    .line 1489
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$800(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 1490
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$700(Lcom/narvii/user/profile/UserProfileFragment;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->headerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1491
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$700(Lcom/narvii/user/profile/UserProfileFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
